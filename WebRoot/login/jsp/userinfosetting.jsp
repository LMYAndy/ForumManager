<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/framework/jsp/header.jsp"%>
<link href="<%=basePath %>login/skin/index.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>login/skin/slideshow.css" rel="stylesheet" type="text/css"/>
<link href="<%=basePath %>login/skin/zzsc.css" rel="stylesheet" />
<link href="<%=basePath %>login/skin/comm.css" rel="stylesheet" />
<link href="<%=basePath %>login/skin/login.css" rel="stylesheet" />
<link href="<%=basePath %>login/skin/userinfo.css" rel="stylesheet" />
<link href="<%=basePath %>login/skin/home_spacecp.css" rel="stylesheet" />
<link href="<%=basePath %>login/skin/postContent.css" rel="stylesheet" />
<link href="<%=basePath %>login/skin/home_spacecp.css" rel="stylesheet" />
<script type="text/javascript" src="<%=basePath %>login/js/login.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/slideshow.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/index.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/setHome.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/addFavorite.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/jquery.SuperSlide.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/backtotop.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/home.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/common.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/tips.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/h.js"></script>
<%@ include file="/framework/jsp/body.jsp"%>
</head>
<body>
   <div id="forum"> 
	   <div id="backtotop">
		<a href="#top">
			<img src="<%=basePath %>login/skin/img/scrolltop.png" />
		</a>
	</div>
	   <div id="toptb">
    	<div class="z">
        	<a href="javascript:void(0);" onclick="setHome(this);">��Ϊ��ҳ</a>
            <a href="javascript:void(0);" onclick="addFavorite();">�ղر�վ</a>
        </div>
        <div class="y">
        	<a href="#">�л������</a>
            <a id="switchblind" class="switchblind" title="����ä������"><img src="<%=basePath %>login/skin/img/blind.gif" /></a>
        </div>
    </div>
       <div id="hd">
    	<div class="wp"> 
        	<div class="hdc c1">
            	<h2>
                	<a title="֣���Ṥҵ��̳" href="http://www.zzuli.edu.cn/">
                   	 <img border="0" alt="֣���Ṥҵ��̳" src="<%=basePath %>login/skin/img/logo.png" />
                    </a>
                </h2>	
               <form id="lsform" onsubmit="#" action="#" method="post">
               		<div class="fastlg cl">
                    	<div class="y pns">
                        	<table cellspacing="0" cellpadding="0">
                            	<tbody>
                                	<tr>
                                    	<td>
                                        	<span class="ftid">
                                            	<select id="ls_fastloginfield" tabindex="900" width="40" name="fastloginfield">
                                                	<option value="username">�û���</option>
													<option value="email">Email</option>
                                                </select>
                                            </span>
                                        </td>
                                        <td><input id="ls_username" class="px vm" type="text" tabindex="901" autocomplete="off" name="username" /></td>
                                        <td class="fastlg_l">
                                        	<label for="cookietime">
                                            	<input id="cookietime" class="pc" type="checkbox" name="cookietime" />�Զ���¼
                                            </label>
                                        </td>
                                        <td><a onclick="#" href="javascript:void(0);" class="vm">�һ�����</a></td>
                                    </tr>
                                    <tr>
                                    	<td><label class="z psw_w" for="ls_password">����</label></td>
                                        <td><input id="ls_password" class="px vm" type="password" name="password" /></td>
                                        <td class="fastlg_l">
                                        	<button class="pn vm" style="width:75px;" type="submit">
                                            	<strong>��¼</strong>
                                            </button>
                                        </td>
                                        <td><a class="xi2 xw1" href="#">b��ע��</a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="fastlg_fm y" style="margin-right: 10px; padding-right: 10px;">
                        	<p>
                            	<a href="#">
                                	<img class="vm" alt="QQ��¼" src="<%=basePath %>login/skin/img/qq_login.gif" />
                                </a>
                            </p>
                            <p class="hm xg1" style="padding-top: 8px;">ֻ��һ�������ٿ�ʼ</p>
                        </div>
                    </div>
               </form>
            </div>
      		<div id="nav">
            	<a id="qmenu" href="#">��ݵ���</a>
                <ul>
                	<li id="mn_Nc2b0" class="a">
                  		  <a hidefocus="true" href="#">��ҳ</a>
                    </li>
                    <li id="mn_N462e">
                   		 <a hidefocus="true" href="#">ÿ��ǩ��</a>
                    </li>
                    <li id="mn_N3a66">
                   		 <a hidefocus="true" href="#">�����</a>
                    </li>
                    <li id="mn_N9f58">
                  		  <a hidefocus="true" href="#">���ϰ�</a>
                    </li>
                    <li id="mn_Nd5bc">
                  		  <a hidefocus="true" href="#">֣�ݰ�</a>
                    </li>
                    <li id="mn_N095c">
                   		 <a hidefocus="true" href="#">���԰�</a>
                    </li>
                    <li id="mn_N4696">
                    	<a target="_blank" hidefocus="true" href="#">���Ͷ��</a>
                    </li>
                    <li id="mn_N3aad">
                	    <a hidefocus="true" href="#">СЦ��</a>
                    </li>
                    <li id="mn_N2b65">
                   		 <a hidefocus="true" href="#">����</a>
                    </li>
                    <li id="mn_N6aa9">
                  		  <a hidefocus="true" href="#">������Ѷ</a>
                    </li>
                    <li id="mn_Ne763">
                   		 <a hidefocus="true" href="#">ˮ��</a>
                    </li>
                </ul>
            </div>
            <div class="a_mu">
            	<div style="height:46px;">
            		<form id="J_etaoForm" target="_blank" method="get" action="#">
            			<div id="J_sBgOuter" class="s-bg-outer">
            				<div class="s-bg-inner">
            					<button id="J_sBtnSubmit" class="s-btn-submit" type="submit">search</button>
								<button id="J_sBtnClear" class="s-btn-clear btn-show" type="button">clear</button>
								<div class="s-ipt-outer">
									<fieldset>
										<input id="J_searchIpt" data-autofocus="autofocus" value="�ֻ�" name="q" autocomplete="off" x-webkit-grammar="builtin:translate" x-webkit-speech="" accesskey="s" />
									</fieldset>
								</div>
            				</div>
            			</div>
            		</form>
            	</div>
            	<div class="topbanner">
            		<a href="#">
            			<img src="<%=basePath %>login/skin/img/0f000264gFkkvh08cVbd70.jpg"/>
            		</a>
	            	<a id="logo" class="logo" title="�ƹ��û���www.dbcedu.com" target="_blank" href="http://wangmeng.baidu.com/">
	            	</a>
            	</div>
            
     
            </div>
            <div id="scbar" class="scbar_narrow cl">
            	<form id="scbar_form" target="_blank" action="#" onsubmit="" autocomplete="off" method="post">
                	<table cellspacing="0" cellpadding="0">
                    	<tbody>
                        	<tr>
                            	<td class="scbar_icon_td"></td>
                                <td class="scbar_txt_td">
                                	<input id="scbar_txt" type="text" speech="" x-webkit-speech="" autocomplete="off" value="��������������" name="srchtxt" />
                                </td>
                                <td class="scbar_type_td">
                              	  <a id="scbar_type" class="showmenu xg1 xs2" hidefocus="true" onclick="" href="javascript:void(0);">����</a>
                                </td>
                                <td class="scbar_btn_td">
                                	<button id="scbar_btn" class="pn pnc" value="true" sc="1" name="searchsubmit" type="submit">
                                   		 <strong class="xi2 xs2">����</strong>
                                    </button>
                                </td>
                                <td class="scbar_hot_td">
                                	<div id="scbar_hot">
                                    	<strong class="xw1">����: </strong>
                                        <a class="xi2" sc="1" target="_blank" href="#">����</a>
                                        <a class="xi2" sc="1" target="_blank" href="#">ѧԺ</a>
                                        <a class="xi2" sc="1" target="_blank" href="#">��ѧ</a>
                                        <a class="xi2" sc="1" target="_blank" href="#">��ְ</a>
                                        <a class="xi2" sc="1" target="_blank" href="#">֣��</a>
                                        <a class="xi2" sc="1" target="_blank" href="#">Ů��</a>
                                        <a class="xi2" sc="1" target="_blank" href="#">����</a>
                                        <a class="xi2" sc="1" target="_blank" href="#">��ҵ</a>
                                        <a class="xi2" sc="1" target="_blank" href="#">����</a>
                                        <a class="xi2" sc="1" target="_blank" href="#">רҵ</a>
                                        <a class="xi2" sc="1" target="_blank" href="#">Ц��</a>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </div>
    <div id="wp" class="wp">  
	   <div id="pt" class="bm cl">
         <div class="z">
			<a href="./" class="nvhm" title="��ҳ">���ϴ�ѧ����</a> <em>?</em>
			<a href="home.php?mod=spacecp">����</a> <em>?</em>�޸�ͷ��
		 </div>
	    </div>
      <div id="ct" class="ct2_a wp cl">
        <div class="mn" >
            <div>
                <h1 class="mt">�޸�ͷ��</h1>
<!--don't close the div here-->
                <script type="text/javascript">
				function updateavatar() {
				window.location.href = document.location.href.replace('&reload=1', '') + '&reload=1';
				}
				saveUserdata('avatar_redirect', document.referrer);
				</script>
				<form method="post" autocomplete="off" action="home.php?mod=spacecp&amp;ac=avatar&amp;ref">
					<table class="tfm" cellpadding="0" cellspacing="0">
						<caption>
							<span id="retpre" class="y xi2"></span>
							<h2 class="xs2">��ǰ�ҵ�ͷ��</h2>
							<p>�����û�������Լ���ͷ��ϵͳ����ʾΪĬ��ͷ������Ҫ�Լ��ϴ�һ������Ƭ4��Ϊ�Լ��ĸ���ͷ�� </p>
						</caption>
						<tbody>
							<tr>
								<td >
								    <img border="0" src='<%=basePath %>login/skin/img/post/4.jpg' />
							    </td>
							</tr>
						</tbody>
				    </table>
					<table class="tfm" cellpadding="0" cellspacing="0">
						<caption>
							<h2 class="xs2">�����ҵ���ͷ��</h2>
							<p>��ѡ��һ������Ƭ�����ϴ��༭��<br>ͷ�񱣴���������Ҫˢ��һ�±�ҳ��(��F5��)�����ܲ鿴���µ�ͷ��Ч�� </p>
						</caption>
						<tbody>
							<tr>
								<td>
									<script type="text/javascript">
									document.write(AC_FL_RunContent('width','450','height','253','scale','exactfit','src','http://www.feelast.com/uc_server/<%=basePath %>login/skin/img/camera.swf?inajax=1&appid=1&input=e09cH8j82KFwVe67VJHqSa1H8xRO5Y63e93i6XdH2RuROGE7P9AvHQdK%2FTss1OL2AviinH8AjWPaq9i8LIPBeio87bBpzwY%2FH89%2FgvbV8ZP8zu%2Bo9XOKIXctVw&agent=043122d71f0e1c9aa31b4150c975ea1b&ucapi=www.feelast.com%2Fuc_server&avatartype=virtual&uploadSize=2048','id','mycamera','name','mycamera','quality','high','bgcolor','#ffffff','menu','false','swLiveConnect','true','allowScriptAccess','always'));</script>
									<embed scale="exactfit" src="#" name="mycamera" quality="high" bgcolor="#ffffff" menu="false" swliveconnect="true" allowscriptaccess="always" type="application/x-shockwave-flash" height="253" width="450"></embed>
								</td>
							</tr>
						</tbody>
					</table>
					<input name="formhash" value="7c9ed73b" type="hidden">
				</form>
			</div>
		</div>
        <script type="text/javascript">
			var redirecturl = loadUserdata('avatar_redirect');
			if(redirecturl) {
			$('retpre').innerHTML = '<a href="' + redirecturl + '">������һҳ</a>';
			}
		</script>
		<div class="appl" style="background-color:lightBlue;">
			<div class="tbn">
				<h2 class="mt bbda">����</h2>
				<ul>
					<li class="a"><a href="home.php?mod=spacecp&amp;ac=avatar">�޸�ͷ��</a></li>
					<li><a href="home.php?mod=spacecp&amp;ac=profile">��������</a></li>
					<li><a href="home.php?mod=spacecp&amp;ac=credit">���</a></li>
					<li><a href="home.php?mod=spacecp&amp;ac=usergroup">�û���</a></li>
					<li><a href="home.php?mod=spacecp&amp;ac=privacy">��˽ɸѡ</a></li>
					<li><a href="home.php?mod=spacecp&amp;ac=profile&amp;op=password">���밲ȫ</a></li>
					<li><a href="home.php?mod=spacecp&amp;ac=promotion">�����ƹ�</a></li>
					<li><a href="home.php?mod=spacecp&amp;ac=plugin&amp;id=qqconnect:spacecp">QQ��</a></li>
					<li><a href="home.php?mod=spacecp&amp;ac=plugin&amp;id=qqconnect:qqshow">QQ��</a></li>
				</ul>
			</div>
		</div>
	 </div>	
   </div>

</script>
 <div id="ft">
    	<div id="flk" class="y">
        	<p>
            	<a href="http://www.bbs370.com/forum.php?mobile=yes">�ֻ��</a>
                <span class="pipe">|</span>
                <a href="http://www.bbs370.com/archiver/">Archiver</a>
                <span class="pipe">|</span>
                <a href="/sitemap.xml">��վ��ͼ</a>
                <span class="pipe">|</span>
                <strong>
                <a target="_blank" href="http://www.bbs370.com/">���ϴ�ѧ����̳</a>
                </strong>
                <a title="��ˮǽ������վԶ���ֺ�" target="_blank" href="http://discuz.qq.com/service/security" class="vm noline">
                <img src="<%=basePath %>login/skin/img/security.png" />
                </a>
                <a title="վ��ͳ��" target="_blank" href="http://www.cnzz.com/stat/website.php?web_id=4115000">վ��ͳ��</a>
            </p>
            <p style="font-size:10px;">
                GMT+8, 2013-8-16 08:59
                <span id="debuginfo" style="font-size:10px;"> , Processed in 0.080062 second(s), 17 queries . </span>
            </p>
        </div>
        <div>
        	<p>
                Powered by
                <strong>Discuz!</strong>
                <em>X2.5</em>
           </p>
           <p class="xs0">? 2001-2012 Comsenz Inc.</p>
        </div>
    </div>  
	</div>
<%@ include file="/framework/jsp/footer.jsp"%>