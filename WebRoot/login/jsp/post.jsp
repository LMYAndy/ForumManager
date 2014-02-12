<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/framework/jsp/header.jsp"%>
<link href="<%=basePath %>login/skin/index.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>login/skin/slideshow.css" rel="stylesheet" type="text/css"/>
<link href="<%=basePath %>login/skin/zzsc.css" rel="stylesheet" />
<link href="<%=basePath %>login/skin/comm.css" rel="stylesheet" />
<link href="<%=basePath %>login/skin/login.css" rel="stylesheet" />
<link href="<%=basePath %>login/skin/userinfo.css" rel="stylesheet" />
<script type="text/javascript" src="<%=basePath %>login/js/login.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/slideshow.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/index.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/setHome.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/addFavorite.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/jquery.SuperSlide.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/backtotop.js"></script>

<div id="forum"> 
	<div id="backtotop">
		<a href="#top">
			<img src="<%=basePath %>login/skin/img/scrolltop.png" />
		</a>
	</div>
	<div id="toptb">
    	<div class="z">
        	<a href="javascript:void(0);" onclick="setHome(this);">设为首页</a>
            <a href="javascript:void(0);" onclick="addFavorite();">收藏本站</a>
        </div>
        <div class="y">
        	<a href="#">切换到宽版</a>
            <a id="switchblind" class="switchblind" title="开启盲人体验"><img src="<%=basePath %>login/skin/img/blind.gif" /></a>
        </div>
    </div>
    <div id="hd">
    	<div class="wp"> 
        	<div class="hdc c1">
            	<h2>
                	<a title="郑州轻工业论坛" href="http://www.zzuli.edu.cn/">
                   	 <img border="0" alt="郑州轻工业论坛" src="<%=basePath %>login/skin/img/logo.png" />
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
                                                	<option value="username">用户名</option>
													<option value="email">Email</option>
                                                </select>
                                            </span>
                                        </td>
                                        <td><input id="ls_username" class="px vm" type="text" tabindex="901" autocomplete="off" name="username" /></td>
                                        <td class="fastlg_l">
                                        	<label for="cookietime">
                                            	<input id="cookietime" class="pc" type="checkbox" name="cookietime" />自动登录
                                            </label>
                                        </td>
                                        <td><a onclick="#" href="javascript:void(0);" class="vm">找回密码</a></td>
                                    </tr>
                                    <tr>
                                    	<td><label class="z psw_w" for="ls_password">密码</label></td>
                                        <td><input id="ls_password" class="px vm" type="password" name="password" /></td>
                                        <td class="fastlg_l">
                                        	<button class="pn vm" style="width:75px;" type="submit">
                                            	<strong>登录</strong>
                                            </button>
                                        </td>
                                        <td><a class="xi2 xw1" href="#">立即注册</a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="fastlg_fm y" style="margin-right: 10px; padding-right: 10px;">
                        	<p>
                            	<a href="#">
                                	<img class="vm" alt="QQ登录" src="<%=basePath %>login/skin/img/qq_login.gif" />
                                </a>
                            </p>
                            <p class="hm xg1" style="padding-top: 8px;">只需一步，快速开始</p>
                        </div>
                    </div>
               </form>
            </div>
      		<div id="nav">
            	<a id="qmenu" href="#">快捷导航</a>
                <ul>
                	<li id="mn_Nc2b0" class="a">
                  		  <a hidefocus="true" href="#">首页</a>
                    </li>
                    <li id="mn_N462e">
                   		 <a hidefocus="true" href="#">每日签到</a>
                    </li>
                    <li id="mn_N3a66">
                   		 <a hidefocus="true" href="#">商丘吧</a>
                    </li>
                    <li id="mn_N9f58">
                  		  <a hidefocus="true" href="#">河南吧</a>
                    </li>
                    <li id="mn_Nd5bc">
                  		  <a hidefocus="true" href="#">郑州吧</a>
                    </li>
                    <li id="mn_N095c">
                   		 <a hidefocus="true" href="#">考试吧</a>
                    </li>
                    <li id="mn_N4696">
                    	<a target="_blank" hidefocus="true" href="#">广告投放</a>
                    </li>
                    <li id="mn_N3aad">
                	    <a hidefocus="true" href="#">小笑话</a>
                    </li>
                    <li id="mn_N2b65">
                   		 <a hidefocus="true" href="#">互动</a>
                    </li>
                    <li id="mn_N6aa9">
                  		  <a hidefocus="true" href="#">新闻资讯</a>
                    </li>
                    <li id="mn_Ne763">
                   		 <a hidefocus="true" href="#">水吧</a>
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
										<input id="J_searchIpt" data-autofocus="autofocus" value="手机" name="q" autocomplete="off" x-webkit-grammar="builtin:translate" x-webkit-speech="" accesskey="s" />
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
	            	<a id="logo" class="logo" title="推广用户：www.dbcedu.com" target="_blank" href="http://wangmeng.baidu.com/">
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
                                	<input id="scbar_txt" type="text" speech="" x-webkit-speech="" autocomplete="off" value="请输入搜索内容" name="srchtxt" />
                                </td>
                                <td class="scbar_type_td">
                              	  <a id="scbar_type" class="showmenu xg1 xs2" hidefocus="true" onclick="" href="javascript:void(0);">搜索</a>
                                </td>
                                <td class="scbar_btn_td">
                                	<button id="scbar_btn" class="pn pnc" value="true" sc="1" name="searchsubmit" type="submit">
                                   		 <strong class="xi2 xs2">搜索</strong>
                                    </button>
                                </td>
                                <td class="scbar_hot_td">
                                	<div id="scbar_hot">
                                    	<strong class="xw1">热搜: </strong>
                                        <a class="xi2" sc="1" target="_blank" href="#">商丘</a>
                                        <a class="xi2" sc="1" target="_blank" href="#">学院</a>
                                        <a class="xi2" sc="1" target="_blank" href="#">大学</a>
                                        <a class="xi2" sc="1" target="_blank" href="#">兼职</a>
                                        <a class="xi2" sc="1" target="_blank" href="#">郑州</a>
                                        <a class="xi2" sc="1" target="_blank" href="#">女生</a>
                                        <a class="xi2" sc="1" target="_blank" href="#">考试</a>
                                        <a class="xi2" sc="1" target="_blank" href="#">毕业</a>
                                        <a class="xi2" sc="1" target="_blank" href="#">河南</a>
                                        <a class="xi2" sc="1" target="_blank" href="#">专业</a>
                                        <a class="xi2" sc="1" target="_blank" href="#">笑话</a>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </div>
    <div id="pt">
        <div class="z">
            <a class="nvhm" title="首页" href="#">河南大学生论坛</a>
            <em>»</em>
            <a href="#">河南大学生论坛</a>
        </div>
        <div class="z">
            <iframe id="connectlike" height="25" frameborder="0" width="280" scrolling="no" border="0" allowtransparency="true">
                <html>
                    <head>
                    </head>
                    <body>
                    </body>
                </html>
            </iframe>
        </div>
    </div>
 	
    <div class="hm a_f">
    	<div class="banner_left">
    		<a href="#">
    			<img src="<%=basePath %>login/skin/img/banner_buying/T1uJQnXXlcXXXnsrnn-73-88.gif"/>
    		</a>
    	</div>
    	<div class="banner_right">
    		
    	</div>
    </div>
    <div id="ft">
    	<div id="flk" class="y">
        	<p>
            	<a href="http://www.bbs370.com/forum.php?mobile=yes">手机版</a>
                <span class="pipe">|</span>
                <a href="http://www.bbs370.com/archiver/">Archiver</a>
                <span class="pipe">|</span>
                <a href="/sitemap.xml">网站地图</a>
                <span class="pipe">|</span>
                <strong>
                <a target="_blank" href="http://www.bbs370.com/">河南大学生论坛</a>
                </strong>
                <a title="防水墙保卫网站远离侵害" target="_blank" href="http://discuz.qq.com/service/security" class="vm noline">
                <img src="<%=basePath %>login/skin/img/security.png" />
                </a>
                <a title="站长统计" target="_blank" href="http://www.cnzz.com/stat/website.php?web_id=4115000">站长统计</a>
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
           <p class="xs0">© 2001-2012 Comsenz Inc.</p>
        </div>
    </div>
</div>
<%@ include file="/framework/jsp/footer.jsp"%>
