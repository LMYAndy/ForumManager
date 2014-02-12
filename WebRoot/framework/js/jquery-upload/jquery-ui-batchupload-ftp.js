/*
 * Depends: jquery.ui.core.js
 */

(function($, undefined) {
	
	$.widget("ui.batchupload", {
		options : {
			id:"id", //上传完成后，新增隐藏域的id
			name:"name",//上传完成后，新增隐藏域的name
			sysFlag:"cc", // 系统标志
			currentSysDate:"",// 当前系统时间
			uuid:"", // uuid
			allowTypes:'jpg',// 允许的文件类型
			maxSize:'',// 文件最大允许值
			unitSize:'1024',
			ftpAddress:'',// ftp地址
			ftpUser:'',// ftp username
			ftpPassword:'',// ftp password 
			isPreview:0//是否预览	
		},
		_create : function() {
			this.inputId = "INPUT_"+this.options.uuid;
			this.divId = "DIV_"+this.options.uuid;
			var html = "<div ID='" + this.divId + "'><a><span style='cursor:pointer;font-size:14px;background-color:#eeeeff;'> 选择文件</span></a>";
			if(this.options.allowTypes){
				html += "<span style=\"{color:red;}\">（ 只支持下列格式文件上传:"+this.options.allowTypes+"）</span>";
			}
			html += "</div>";
			$(this.element).before(html);
			var $this = this;
			$("#"+this.divId+" a").bind("click",$.proxy($this._choseFile,$this));
			
		},
		destroy : function() {
			$.Widget.prototype.destroy.apply(this, arguments);
		},
		_choseFile: function(){
			var html ="";
			html += "<input type='file' id='"+this.inputId+"' class='inputText' style=\"{display: none;}\"/>";
			$("#"+this.divId).append(html);
			$("#"+this.inputId).hide();
			$this = this;
			$("#"+this.inputId).bind("change", function() {
				var fileName = $("#"+$this.inputId).val();
				$("#"+$this.inputId).remove();
				isUploadFileFlag = 1;
				var types = $this.options.allowTypes.split(",");
				if(!$this.validateFile(fileName,types)){
					return false;
				}
				var container = $("<div></div>")
						.appendTo($this.element);
				container.AddUpload({
					id:$this.options.id,
					name:$this.options.name,
					sysFlag:$this.options.sysFlag,
					max:$this.options.max,
					uuid:$this.options.uuid,
					currentSysDate:$this.options.currentSysDate,
					ftpAddress:$this.options.ftpAddress,
					ftpUser:$this.options.ftpUser,
					ftpPassword:$this.options.ftpPassword,
					fileFullName:fileName,
					maxSize:$this.options.maxSize,
					fileSize:$this.fileSize,
					isPreview:$this.options.isPreview
				});
			});
			$("#"+this.inputId).trigger("click");
		},
		
		getAxObj : function() {
			if (!this.activeObj){
				this.activeObj = document.getElementById("activeObj");
				if(!this.activeObj){
					$("body").append('<OBJECT id="activeObj" classid="CLSID:3379F0B3-8315-4232-AFEF-5886B74B6C42" height="0" width="0"></OBJECT>');
					this.activeObj = document.getElementById("activeObj");
				}
				
			}
			return this.activeObj;
		},
		validateFile:function (fileFullName, allowTypes){
			if(isExistChinese(fileFullName)){
				alert("文件名称中不能含有中文！");
				return false;
			}
			if(!this.checkFileExtName(fileFullName,allowTypes)){
				alert("文件"+fileFullName+"格式不对！");
				return false;
			}
			if(!this.checkFileSize(fileFullName,this.options.max))
			return false;
			return true;
		},
		/**
		 * 验证文件的类型
		 * 
		 * @param {需要验证的文件名称如：xxx.txt}
		 * @param allowTypes（允许的文件类型列表）
		 * @return true or false
		 */
		checkFileExtName:function (fileFullName,allowTypes) {
			if (fileFullName == null || fileFullName == "" || fileFullName.length <= 0) {
				return false;
			}
			// 定义文件后缀类型的数组
			// var filePostFix = new Array("TXT", "DOC", "XLS", "GIF", "JPG", "PNG",
			// "BMP", "RAR", "ZIP", "JPEG");
			
			var upfile = getFileName(fileFullName);
			var flag = 0;
			if (upfile != null && upfile != "" && upfile.length > 0) {
				var postfix = getPostFix(upfile);
				for(var i=0;i<allowTypes.length;i++){
					if(allowTypes[i].toUpperCase() == postfix.toUpperCase()){
						flag = 1;
						break;
					}
				}
				if (flag == 1) {
					return true;
				} else {
					return false;
				}
			} else {
				return false;
			}
		},
		/**
		 * 检测上传的文件大小
		 */
		checkFileSize :function (fileFullName,maxSize){
			this.fileSize = this.getFileSize(fileFullName);
			if (this.fileSize > parseFloat(maxSize)) {
				alert("当前附件大小为：" + fileSize + "KB，超出最大限制 "+maxSize+"KB，无法上传。");
				return false;
			}
			return true;
		},
		/**
		 * 计算上传文件的大小
		 * @param {文件全名}filePath
		 */
		getFileSize:function(filePath) {
			var fileSize = this.getAxObj().StGetFileSize(filePath);
			var unitSize = this.options.unitSize;// 1KB
			return parseFloat((fileSize / unitSize).toFixed(2)); 
		}
	});

	$.widget("ui.AddUpload", {
		options : {
			value : 0,
			axObj : null,
			index : 0,
			hook : null,
			max : 200,
			maxSize:500,
			id:'id',
			name:'name',
			sysFlag:"cc", // 系统标志
			currentSysDate:"",// 当前系统时间
			uuid:"", // uuid
			fileSize:0,
			ftpAddress:'',
			ftpUser:'',
			ftpPassword:'',
			fileFullName:'',//包括路径、文件名、后缀
			isPreview:0
		},
		pauseNode : null,
		min : 0,
		count : 0,
		activeObj : null,
		STATE_CODE : {},
		STATE_NAME : {},
		isUpload : false,//是否上传
		infoHtml:"",
		previewDiv: null,
		hiddenHtml: null,
		_init_state_code_and_name : function() {
			this.STATE_CODE["STATE_ERROR"] = 0;
			this.STATE_CODE["STATE_INIT"] = 1;
			this.STATE_CODE["STATE_CONNECTING"] = 2;
			this.STATE_CODE["STATE_LOGING"] = 3;
			this.STATE_CODE["STATE_STORING"] = 4;
			this.STATE_CODE["STATE_PAUSE"] = 5;
			this.STATE_CODE["STATE_CANCEL"] = 6;
			this.STATE_CODE["STATE_STORED"] = 7;

			this.STATE_NAME[this.STATE_CODE.STATE_ERROR] = "网络错误";
			this.STATE_NAME[this.STATE_CODE.STATE_INIT] = "初始化...";
			this.STATE_NAME[this.STATE_CODE.STATE_CONNECTING] = "连接中...";
			this.STATE_NAME[this.STATE_CODE.STATE_LOGING] = "登录中...";
			this.STATE_NAME[this.STATE_CODE.STATE_STORING] = "上传中...";
			this.STATE_NAME[this.STATE_CODE.STATE_PAUSE] = "暂停";
			this.STATE_NAME[this.STATE_CODE.STATE_CANCEL] = "取消";
			this.STATE_NAME[this.STATE_CODE.STATE_STORED] = "完成";
		},

		getAxObj : function() {
			if (!this.activeObj){
				this.activeObj = document.getElementById("activeObj");
				if(!this.activeObj){
					$("body").append('<OBJECT id="activeObj" classid="CLSID:3379F0B3-8315-4232-AFEF-5886B74B6C42" height="0" width="0"></OBJECT>');
					this.activeObj = document.getElementById("activeObj");
				}
			}
			return this.activeObj;
		},
		_create : function() {
			var $this = this;
			var isPreview = this.options.isPreview;
			this.filePath = this.options.fileFullName;
			this.fileName = this.filePath.substr(this.filePath
					.lastIndexOf("\\")
					+ 1);
			this._init_state_code_and_name();
			this.getHook();
			if(isPreview){
				if(isPicture(this.fileName)){
					this._createHasPreView($this);
				}else{
					this._createDefault($this);	
				}
			} else {
				this._createDefault($this);
			}
		},
		
		_createDefault:function($this){ //默认情况（无预览的情况）
			var html = "";
			html = "<div id='c"
					+ gl_index
					+ "'>"
					+ this.fileName
					+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" 
					+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" ;
			html += "<a href='javascript:void(0);' name='clearDiv' id='clearDiv' title='删除当前附件'><span style='color:red'>删除</span></a>";
			html += "</div>"
				
			var infoHtml = "<div class='outerbox'><div class='incrementImg'></div></div>  "
				+ "<span class='percentbox'></span>"
				+ "<span class='stateInfo'></span>"
			//	+ "<a href='#' id="pause"> 暂停 </a>  <a href='#' id="cancle"> 取消 </a>"
				+ "<div class='infobox'>" + "<hr/></div>";
			html += infoHtml;
			$this.frag_info = $(html)
					.appendTo(this.element);
			this.hiddenHtml = $("<input type='hidden' name='"+$this.options.name+"' id='"+$this.options.id+"' success='0'/>");
			this.hiddenHtml.appendTo(this.element);
			var cur_index = gl_index;
			$this.frag_info.find("a[id='clearDiv']").click(function(){
				$this.clearUploadDiv("c"+cur_index);
			});
			gl_index = gl_index + 1;
			
//			this.pauseNode = $(this.frag_info.filter("a").eq(0));
			$this.oldValue = $this._value();
			$this._refreshValue();
			$this.fnTemp = function() {
				$this._refresh();
			};
			$this._refresh();
			$this.intervalID = setInterval($this.fnTemp,50);
			
//			$(this.frag_info.filter("a").eq(0)).bind("click", function() {
//				$this.pauseHandler();
//			});
//
//			$(this.frag_info.filter("a").eq(1)).bind("click", function() {
//						$this.cancelHandler();
//			});
			$this.uploadFile();
		},
		_createHasPreView:function($this){ //针对有预览的情况
			var html = "";
			html = "<div id='c"
					+ gl_index
					+ "'>"
					+ this.fileName
					+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" 
					+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" ;
			html += "<a href='javascript:void(0);' id='previewFile'>预览</a>";
			html += "<a href='javascript:void(0);' id='uploadFile'>上传</a>";
			html += "<a href='javascript:void(0);' name='clearDiv' id='clearDiv' title='删除当前附件'><span style='color:red'>删除</span></a>";
			html += "<input type='hidden' name='"+$this.options.name+"' id='"+$this.options.id+"' value='123' success='0'/>";
			html += "</div>";
			html += "<div id='previewDiv'><div id='fileContent'> </div></div>";	
			
			this.infoHtml = "<div class='outerbox'><div class='incrementImg'></div></div>  "
				+ "<span class='percentbox'></span>"
				+ "<span class='stateInfo'></span>"
				+ "<div class='infobox'>" + "<hr/></div>";
			$this.frag_info = $this.element.append(html);
			$this.hiddenHtml = $("<input type='hidden' name='"+$this.options.name+"' id='"+$this.options.id+"' success='0'/>");
			$this.hiddenHtml.appendTo($this.element);
			var cur_index = gl_index;
			
			$this.frag_info.find("a[id='clearDiv']").click(function(){
				$this.clearUploadDiv("c"+cur_index);
			});
			$this.frag_info.find("a[id='previewFile']").click(function(){
				$this.previewFile();
			});
			$this.frag_info.find("a[id='uploadFile']").click(function(){
				$this._uploadFilePreview($this);
			});
			
			this.frag_info.find("div[id='fileContent']").html("<img src='" + $this.filePath + "' />");
			this.previewDiv = this.frag_info.find("div[id='previewDiv']");
			
			this.previewDiv.dialog({
				title: '预览图片',
				height: 400,
				width: 590,
				modal: true,
				closed:true,
				resizable:true,
				buttons:[{
	                text:'上传',
	                handler:function(){
						$this.previewDiv.dialog('close');
						$this._uploadFilePreview($this);
						return false;
	                }}, {
	                text:'取消',
	                handler:function(){
	                	$this.previewDiv.dialog('close');
						return false;
	                }
	                }]
				
			});
			gl_index = gl_index + 1;
		},
		
		_uploadFilePreview:function($this){
			if(!$this.isUpload){ 
				$this.element.append($this.infoHtml);
				$this.oldValue = $this._value();
				$this._refreshValue();
				$this.fnTemp = function() {
					$this._refresh();
				};
				$this._refresh();
				$this.intervalID = setInterval($this.fnTemp,50);
				$this.uploadFile();
			}
		},
		
		getHook : function(ftpAddress,ftpUser,ftpPassword) {
		    try {
		       var ftpAddress = this.options.ftpAddress;
		       var ftpUser = this.options.ftpUser;
		       var ftpPassword = this.options.ftpPassword;
		       if(!ftpAddress){
		    	   alert("ftp服务器地址不能为空");
		    	   return false;
		       }
		       if(!ftpUser){
		    	   alert("ftp用户不能为空");
		    	   return false;
		       }
		       this.options.hook = this.getAxObj().OpenClient(ftpAddress, 21,
		    		  ftpUser, ftpPassword);
		    } catch (e) {
		        alert ("上传失败！请安装BSS系统控件");
		    }
		},
		uploadFile : function() {
			var $this = this;
			
			var obj = {};
			obj["ftpFile.fileName"] =  getFileName(this.filePath);
			obj["ftpFile.size"] = this.options.fileSize;
			obj["ftpFile.sysFlag"] = this.options.sysFlag;
			
			$.ajax({
				url:ctx+'/framework/files/FtpFile/save.action',
				type:'POST',
				async:true,
				data:obj,
				success: function(result){
					if(!result.id||!result.ftpServer||!result.ftpUsername){
						alert("存储文件信息时异常！");
						return false;
					}
					
					$this.ftpFileId = result.id;
					try{
						$this.getAxObj().StoreFile($this.options.hook, $this.filePath,
							result.ftpFilePath);
						$this.isUpload = true;
						$this.hiddenHtml.val(result.id);
						$this.hiddenHtml.attr("success","1");
					}catch(e){
						alert(e.name + ": " + e.message);
						var o = {};
						o.id = result.id;
						$.ajax({
							url:ctx+'/framework/files/FtpFile/delete.action',
							type:'POST',
							async:true,
							data:o,
							success:function(data){
								alert("由于上传发生异常删除文件记录！" +e.msg());
								return false;
							}
						});
					}
					return true;
				},
				error:function(xmlObject,msg,e){
					alert(msg +"["+ xmlObject.responseText+"]");
				}
			});
		},
		getProgress : function() {
			var sendSize = parseInt(this.getAxObj()
					.GetSendSize(this.options.hook)
					/ 1024);
			var finalSize = parseInt(this.getAxObj()
					.GetFileSize(this.options.hook)
					/ 1024);

			return sendSize + "/" + finalSize + "KB";
		},
		getSpeed : function() {
			return parseInt(this.getAxObj().GetSendSpeed(this.options.hook)
					/ 1024)
					+ "KB/S";
		},
		pauseHandler : function() {
			var pauseNode = $(this.frag_info.filter("a[id='pause']").eq(0));
			var pauseNodeAttr = pauseNode.attr("flag");

			if (pauseNodeAttr == undefined || pauseNodeAttr == 'pause') {
				pauseNode.text(" 继续 ");
				pauseNode.attr("flag", 'resume');
				this.getAxObj().Pause(this.options.hook);
				clearInterval(this.intervalID);
			} else {
				var curVal = pauseNode.text(" 暂停 ");
				pauseNode.attr("flag", 'pause');
				this.getAxObj().Resume(this.options.hook);

				this.intervalID = setInterval(this.fnTemp, 50);
			}
		},
		cancelHandler : function() {
			this.getAxObj().Cancel(this.options.hook);
			this.clearResource();
		},
		value : function(newValue) {
			// 计算新值
			if (newValue === undefined) {
				return this._value();
			}

			this._setOption("value", newValue);
			return newValue;
		},
		previewFile:function(){
			this.previewDiv.dialog("open");
		},
		// obtain old value
		_value : function() {
			var imcrement_Ele = this._get_increment_box_node();
			var old_value = this.options.value;

			// normalize invalid value
			if (typeof old_value !== "number") {
				old_value = 0;
			}
			return Math.min(this.options.max, Math.max(this.min, old_value));
		},

		_refresh : function() {
			if(this.options.hook){
				var curCount = this.getAxObj().GetSendSize(this.options.hook)
						* this.options.max
						/ this.getAxObj().GetFileSize(this.options.hook);
			}
			if (typeof curCount == undefined || curCount < 0) {
				curCount = count;
			}
			this.value(curCount);
		},

		_refreshValue : function() {
			var value = this.value();
			var percentage = this._percentage();

			this.frag_info.find("div[class='incrementImg']").css("width",
					value + 'px');
			$(this.frag_info.filter("span.percentbox")).text(percentage + "%"); // deal
			this._refreshRate();
		},
		_refreshRate : function() {
			if (this.options.hook) {
				
				var state = this.getAxObj().GetState(this.options.hook);

				var info_node = this.frag_info.find(".infobox"); // this.frag_info[5];
				$(info_node).html("<span> 已上传 : " + this.getProgress()
						+ " </span>" + "<span> 速度 : " + this.getSpeed()
						+ " </span>");
				// + "<span> 剩余时间 : 00:00:03 </span>");
				var stateInfo = this.frag_info.find(".stateInfo");
				$(stateInfo).html("<span> 状态 : " + this.STATE_NAME[state]
						+ " </span>");
				if (state == this.STATE_CODE.STATE_ERROR) {
//					this.pauseNode.text(" 开始 ");
//					this.pauseNode.text(" 暂停 ");
//					this.pauseNode.attr("flag", 'pause');
					this.getAxObj().Pause(this.options.hook);
					clearInterval(this.intervalID);
				}
				if (state == this.STATE_CODE.STATE_STORED) {
					isUploadFileFlag = state;
					this.clearResource();
				}
			}
		},
		_setOption : function(key, value) {
			if (key === "value") {
				this.options.value = value;
				this._refreshValue();
				if (this._value() === this.options.max) {
					clearInterval(this.intervalID);
				}
			}

			$.Widget.prototype._setOption.apply(this, arguments);
		},
		_percentage : function() {
			return Math.floor(100 * this._value() / this.options.max);
		},

		_get_increment_box_node : function() {
			if (typeof(this.increment_box_node) == undefined) {
				this.increment_box_node = this.frag_info
						.find("div[class='incrementImg']");
			}
			return this.increment_box_node;
		},

		destroy : function() {
			$.Widget.prototype.destroy.apply(this, arguments);
		},
		clearResource : function() {
			clearInterval(this.intervalID);
			this.getAxObj().CloseClient(this.options.hook);
		},
		/**
		 * 清除上传文件的div
		 */
		clearUploadDiv : function(var1) {
			var o = {};
			o.id = this.ftpFileId;
			$.ajax({
				url:ctx+'/framework/files/FtpFile/delete.action',
				type:'POST',
				async:true,
				data:o,
				success:function(result){
					alert(result);
				}
			});
			$("#" + var1).parent().remove();
			isUploadFileFlag=0;
		}

	});

})(jQuery);


var gl_index = 0;

/**
 * 构建ftp文件名（uuid+后缀）
 * 
 * @param {文件名称}  fileFullName
 */
function newUUIDFileName(uuid, fileFullName) {
	return uuid + "." +  getPostFix(fileFullName);
}

/**
 * 获取文件名
 * @param fileFullName
 * @return
 */
function getFileName(fileFullName){
	var fileName = "";
	if (fileFullName.indexOf('\\')) {// 如果文件名字存在路径
		fileName = fileFullName.substring(fileFullName.lastIndexOf("\\") + 1,
				fileFullName.length);
	} else {
		fileName = fileFullName;
	}
	return fileName;
}

/**
 * 获取文件后缀
 * @param fileName
 * @return
 */
function getPostFix(fileName){
	return fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length).toLocaleUpperCase();
}

/**
 * 验证是否存在中文字符
 * 
 * @param {字符串}
 *            str
 */
function isExistChinese(str) {
	var pattern = /[^\x00-\xff]/g;
	if (str != null && str != "" && str.length > 0) {
		if (pattern.test(str) == true) {
			//alert("文件名中含有汉字,不能上传!");
			return true;
		} else {
			// alert("不含有汉字");
			return false;
		}
	}
	return false;
}
function isPicture(fileName){
	var allowTypes=new Array('JPEG','BMP','GIF','PNG','JPG');
	return checkFileExtName(fileName, allowTypes);
}
/**
 * 验证文件的类型
 * 
 * @param {需要验证的文件名称如：xxx.txt}
 * @param allowTypes（允许的文件类型列表）
 * @return true or false
 */
function checkFileExtName(fileFullName, allowTypes) {
	if (fileFullName == null || fileFullName == "" || fileFullName.length <= 0) {
		return false;
	}
	// 定义文件后缀类型的数组
	// var filePostFix = new Array("TXT", "DOC", "XLS", "GIF", "JPG", "PNG",
	// "BMP", "RAR", "ZIP", "JPEG");
	
	var upfile = getFileName(fileFullName);
	var flag = 0;
	if (upfile != null && upfile != "" && upfile.length > 0) {
		var postfix = getPostFix(upfile);
		for(var i=0;i<allowTypes.length;i++){
			if(allowTypes[i].toUpperCase() == postfix.toUpperCase()){
				flag = 1;
				break;
			}
		}
		if (flag == 1) {
			return true;
		} else {
			return false;
		}
	} else {
		return false;
	}
}
function uuid(){
	this.uuid = 0;
	var $this = this;
	$.ajax({
		url:ctx+'/framework/uuid/uuid.action',
		type:'POST',
		async:false,
		success:function(data){
			$this.uuid=data;
		}
	});
	return $this.uuid;
}
