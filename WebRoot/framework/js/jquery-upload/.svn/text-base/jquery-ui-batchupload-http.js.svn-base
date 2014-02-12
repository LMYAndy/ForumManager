(function($, undefined) {
	
	$.widget("ui.batchupload", {
		options : {
			id:"id", // 上传完成后，新增隐藏域的id（标签）
			name:"name",// 上传完成后，新增隐藏域的name
			sysFlag:"cc", // 系统标志
			currentSysDate:"",// 当前系统时间
			uuid:"", // uuid
			allowTypes:'jpg',// 允许的文件类型
			maxSize:'',// 文件最大允许值
			unitSize:'1024',
			ftpAddress:'',// ftp地址
			ftpUser:'',// ftp username
			ftpPassword:'',// ftp password
			isPreview:0,// 是否预览
			maxNumber:0,
			uploaded:''
		},
		
		_create : function() {
			var uuid = this.options.uuid;
			var allowTypes= this.options.allowTypes;
			allowTypes = allowTypes.replace(/,/g,'|');
			// var allowPattern = '/^('+allowTypes+')$/i';
			var allowPattern = new RegExp('^('+allowTypes+')$','i');
			this.errorRemind = 'errorRemind'+uuid;
			this.unloadPic = 'unloadPic'+uuid;
			this.uploadedName = 'uploadedName'+uuid;
			
			var html = "";
			html += '<input id="'+this.unloadPic+'" type="button" value="选择文件" />';
			html += "<span style=\"{color:blue;}\">（只支持下列格式文件上传:"+ allowTypes+"）</span>";
			html += '<p id="'+this.errorRemind+'"></p>';
			html += '<div  id="'+this.uploadedName+'" style="width:200px;height:auto;"></div>';
			
			$(this.element).append(html);
			var $this = this;
			var oBtn = $("#"+this.unloadPic);
			var oShow = $("#"+this.uploadedName);
			var oRemind = $("#"+this.errorRemind);	
			
			
			var uploaded = this.options.uploaded;
			if(uploaded){
				var uploads = uploaded.split(",");
				$.post(ctx+"/framework/files/find.action",{'ids':uploaded},function(response){
					for(var i =0; i<response.length;i++){
						var file = response[i];
						$this.generateUpdateInfo($this, file.fileName, file.id, file.message, file.fileURL);
					}
				});
			}
			
			var file = {};
			file['file.sysFlag']=this.options.sysFlag;
			new AjaxUpload(oBtn,{
				action:ctx+"/framework/files/upload.action",
				name:"upload",
				data:file,
				responseType: 'json',
				onSubmit:function(file,ext){
					var maxNumber = $this.options.maxNumber;
					if(maxNumber){
						var uploads = $("div[flag='"+$this.options.uuid+"']");
						if(maxNumber <= uploads.length){
							oRemind.css('color','#ff3300');
							oRemind.text("最多上传"+maxNumber+"个文件！");
							return false;
						}
					}
					if(file.length>100){
						alert("附件名称长度不能大于100个字符。");
						return false;
					}
					if(ext && allowPattern.test(ext)){
						// ext是后缀名
						oBtn.val("正在上传…");
						this.disable();
					}else{	
						oRemind.css('color','#ff3300');
						oRemind.text("不支持此文件格式！");
						return false;
					}
				},
				onComplete:function(file,response){
					this.enable();
					oBtn.val("选择文件");
					oRemind.text("");
					
					if(response.success == 1 ){
						$this.generateUpdateInfo($this,file, response.id, response.message, response.fileURL);
					} else {
						var deleteDiv = function( id ){
							$("#file_p_"+id.data).remove();
						}
						var resultHtml = "<p id ='file_p_"+count+"'>"  + file + response.message ;
						resultHtml += "&nbsp;&nbsp;&nbsp;<a href='javascript:void(0);' id='file_delete_"+count+"'>删除</a>";
						resultHtml += "<input type='hidden' id='"+$this.options.id+"' success='0' name='"+$this.options.name+"'/>";
						resultHtml += "</p>";
						$(oShow).append(resultHtml);
						$("#file_delete_"+count).bind("click",count,deleteDiv);
						count++;
					}
					
				}
			});
		},
		
		generateUpdateInfo:function($this, file, id, message, fileURL){
			var allowPreviewTypes = "png|jpg|bmp|gif|jpeg";
			var allowPattern = new RegExp('^('+allowPreviewTypes+')$','i');
			var ext = getPostFix(file);
			var resultHtml = "<div flag='"+$this.options.uuid+"' id ='" + id + "'>"  + file + message ;
			if($this.options.isPreview &&allowPattern.test(ext)){
				//resultHtml += "&nbsp;&nbsp;&nbsp;<a href='"+response.fileURL+"' target='_black'>预览</a>";
				resultHtml += "&nbsp;&nbsp;&nbsp;<a href='javascript:void(0);' id = 'show_"+id+"'>预览</a>";
				
			}
			resultHtml += "&nbsp;&nbsp;&nbsp;<a href='javascript:void(0);' id='delete_"+id+"'  >删除</a>";
			resultHtml += "<input type='hidden' value='"+id+"' success='1' name='"+$this.options.name+"'/>";
			
			if($this.options.isPreview){
				resultHtml +='<div id="preview_'+ id +'" style="padding:10px;">';   
//				resultHtml +=' <img src="'+ fileURL+'"/> ';
				resultHtml +=' <img src="'+ ctx +'/framework/files/download.action?id='+id+'"/> '; 
				resultHtml +=' </div>  ';
			}
			resultHtml += "</div>";
			$("#"+this.uploadedName).append(resultHtml);
			$("#delete_"+ id).bind("click",id,$this.deleteFile);
			if($this.options.isPreview){
				$('#preview_'+ id ).panel({   
					 width:'500',
					 closable:true,
					 closed:true,
					 title: file   
				});   
				var preview = function(id){
					$("#preview_"+id.data).panel("open");
				}
				$("#show_"+ id).bind("click",id,preview);
			}
		},
		deleteFile:function(id){
			var url = ctx+"/framework/files/delete.action";
			var  $id = id.data;
			var data = {};
			data.id = $id;
			var truthToDelete= window.confirm("您确定要删除该附件？"); 
			if (truthToDelete){ 
				$.post(url,data,function(result){
					$("#"+ $id ).remove();
				});
			} else {
				return false;
			}; 
			
		},
		destroy : function() {
			$.Widget.prototype.destroy.apply(this, arguments);
			
		},
		validateFile:function (fileFullName, allowTypes){
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
		 * 
		 * @param {文件全名}filePath
		 */
		getFileSize:function(filePath) {
			var fileSize = this.getAxObj().StGetFileSize(filePath);
			var unitSize = this.options.unitSize;// 1KB
			return parseFloat((fileSize / unitSize).toFixed(2)); 
		}
	});
})(jQuery);

var count = 0;


/**
 * 构建ftp文件名（uuid+后缀）
 * 
 * @param {文件名称}
 *            fileFullName
 */
function newUUIDFileName(uuid, fileFullName) {
	return uuid + "." +  getPostFix(fileFullName);
}

/**
 * 获取文件名
 * 
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
 * 
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
			// alert("文件名中含有汉字,不能上传!");
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
