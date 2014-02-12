<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/framework/jsp/header.jsp"%>
<link href="<%=basePath %>login/skin/index.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>login/skin/login.css" rel="stylesheet" />
<script type="text/javascript" src="<%=basePath %>login/js/setHome.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/addFavorite.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/index.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/addFavorite.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/jquery.SuperSlide.js"></script>
<script type="text/javascript" src="<%=basePath %>login/js/backtotop.js"></script>

<%@ include file="/framework/jsp/body.jsp"%>
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
    <div class="loginmn">
    	<div class="loginbm">
        	<div class="bm_h">
            	<span class="y">
                    <a class="xi2" href="#">没有帐号？</a>
                    <a href="#">立即注册</a>
                </span>
           		<h3 class="xs2">登录</h3>
            </div>
        	<div>
            	<div id="main_messaqge_L88K1">
                	<div id="layer_login_L88K1">
                    	<h3 class="flb">
                        </h3>
                    	<div> 
                        	<div class="rfm">
                            	<table>
                                	<tbody>
                                    	<tr>
                                        	<th>
                                            	<span class="login_slct">
                                                	<a id="loginfield_L88K1_ctrl" style="width: 45px;" href="#">用户名</a>
                                                </span>
                                            </th>
                                        	<td>
                                            <input id="username_L6O22" class="p_fre" type="text" size="30" name="username" />
                                            </td>
                                            <td>
                                         	   <a href="#">立即注册</a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                       		<div class="rfm">
                            	<table>
                                	<tbody>
                                    	<tr>
                                        	<th>
                                            	<label for="password3_L6O22">密码:</label>
                                            </th>
                                        	<td>
                                           		<input id="password3_L6O22" class="p_fre" type="password" size="30" onfocus="clearpwd();" name="password">
                                            </td>
                                            <td>
                                         	   <a href="#">找回密码</a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="rfm">
                            	<table>
                                	<tbody>
                                    	<tr>
                                            <th>安全提问:</th>
                                        	<td>
                                                <select id="loginquestionid_L6O22" onchange="#" name="questionid" width="213">
                                                    <option value="0">安全提问(未设置请忽略)</option>
                                                    <option value="1">母亲的名字</option>
                                                    <option value="2">爷爷的名字</option>
                                                    <option value="3">父亲出生的城市</option>
                                                    <option value="4">您其中一位老师的名字</option>
                                                    <option value="5">您个人计算机的型号</option>
                                                    <option value="6">您最喜欢的餐馆名称</option>
                                                    <option value="7">驾驶执照最后四位数字</option>
                                                </select>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="rfm">
                            	<table>
                                	<tbody>
                                    	<tr>
                                            <th></th>
                                        	<td>
                                                <label for="cookietime_L6O22">
                                                    <input id="cookietime_L6O22" class="ck" type="checkbox" value="2592000" name="cookietime"/>
                                                    自动登录
                                                </label>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="rfm mbw bw0">
                            	<table width="100%">
                                	<tbody>
                                    	<tr>
                                            <th></th>
                                        	<td>
                                                <button class="pn pnc" value="true" name="loginsubmit" type="submit">
                                                	<strong>登录</strong>
                                                </button>
                                            </td>
                                            <td>
                                            	<a class="y" title="清除痕迹" onclick="" href="#">清除痕迹</a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="rfm mbw bw0">
                            	<hr class="l"/>
                            	<table>
                                	<tbody>
                                    	<tr>
                                            <th>快捷登录:</th>
                                        	<td>
                                                <a rel="nofollow" target="_top" href="#">
                                                	<img class="vm" src="<%=basePath %>login/skin/img/qq_login.gif" />
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
