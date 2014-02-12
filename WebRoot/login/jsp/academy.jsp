<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/framework/jsp/header.jsp"%>
<link href="<%=basePath %>login/skin/index.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>login/skin/academy.css" rel="stylesheet" type="text/css"/>
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
	            	<a id="logo" class="logo" title="推广用户：www.dbcedu.com" target="_blank" href="#">
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
	<div id="pt" class="bm cl">
    	<div class="z">
            <a class="nvhm" title="首页" href="#">河南大学生论坛</a>
            <em>»</em>
            <a href="http://www.bbs370.com/forum.php">河南大学生论坛</a>
            <em>›</em>
            <a href="http://www.bbs370.com/forum.php?gid=1">商丘大学吧</a>
            <em>›</em>
            <a href="http://www.bbs370.com/forum-37-1.html">商丘学院论坛（华豫学院）</a>
        </div>
    </div>
   	<div class="boardnav">
    	<div id="ct" class="wp cl" style="margin-left:145px">
        	<div id="sd_bdl" class="bdl" style="width:130px;margin-left:-145px;" onmouseover="">
            	<div id="diyleftsidetop" class="area"></div>
                <div id="forumleftside" class="tbn">
                	<h2 class="bdl_h">版块导航</h2>
                    <dl id="lf_1" class="a">
                    	<dt>
                        	<a title="商丘大学吧"   href="#" name="sb1">商丘大学吧</a>
                        </dt>
                        <dd >
                        	<a title="商丘师范学院论坛" href="" >商丘师范学院论坛</a>
                        </dd>
                        <dd>
                       		 <a title="商丘工学院论坛（科技学院）" href="" >商丘工学院论坛（科技学院）</a>
                        </dd>
                       
                        <dd >
                       		 <a title="商丘职业技术学院" href="" >商丘职业技术学院</a>
                        </dd>
                        <dd >
                       		 <a title="永城职业技术学院" href="" >永城职业技术学院</a>
                        </dd>
                    </dl>
                	<dl id="lf_78" class="">
                    	<dt>
                       		 <a title="河南大学吧"   href="#" name="sb1" >河南大学吧</a>
                        </dt>
                        <dd>
                      		  <a title="信阳师范学院论坛" href="http://www.bbs370.com/forum-82-1.html">信阳师范学院论坛</a>
                        </dd>
                       
                        <dd>
                        	<a title="周口师范学院论坛" href="http://www.bbs370.com/forum-81-1.html">周口师范学院论坛</a>
                        </dd> 
                        <dd>
                        	<a title="周口师范学院论坛" href="http://www.bbs370.com/forum-81-1.html">周口师范学院论坛</a>
                        </dd>
                        <dd>
                        	<a title="周口师范学院论坛" href="http://www.bbs370.com/forum-81-1.html">周口师范学院论坛</a>
                        </dd> 
                         <dd>
                        	<a title="周口师范学院论坛" href="http://www.bbs370.com/forum-81-1.html">周口师范学院论坛</a>
                        </dd> 
                    </dl>
               		<dl id="lf_61" class="">
                    	<dt>
                       		 <a title="考试吧"  href="#" name="sb1">考试吧</a>
                        </dt>
                        <dd>
                       		 <a title="研究生考试论坛" href="http://www.bbs370.com/forum-73-1.html">研究生考试论坛</a>
                        </dd>
                        <dd>
                       		 <a title="研究生考试论坛" href="http://www.bbs370.com/forum-73-1.html">研究生考试论坛</a>
                        </dd>
                       
                        <dd>
                       		 <a title="研究生考试论坛" href="http://www.bbs370.com/forum-73-1.html">研究生考试论坛</a>
                        </dd>
                    </dl>
               		<dl id="lf_41" class="">
                    	<dt>
                       		 <a title="休闲吧"  href="#" name="sb1">休闲吧</a>
                        </dt>
                        <dd>
                      		  <a title="每日签到" href="http://www.bbs370.com/forum-46-1.html">每日签到</a>
                        </dd>
                        <dd>
                      		  <a title="每日签到" href="http://www.bbs370.com/forum-46-1.html">每日签到</a>
                        </dd>
                        <dd>
                      		  <a title="每日签到" href="http://www.bbs370.com/forum-46-1.html">每日签到</a>
                        </dd>
                       
                    </dl>
                	<dl id="lf_94" class="">
                    	<dt>
                        	<a title="郑州大学吧"  href="#" name="sb1">郑州大学吧</a>
                        </dt>
                        <dd>
                        	<a title="郑州大学论坛" href="http://www.bbs370.com/forum-95-1.html">郑州大学论坛</a>
                        </dd>
                        <dd>
                        	<a title="郑州大学论坛" href="http://www.bbs370.com/forum-95-1.html">郑州大学论坛</a>
                        </dd>
                       
                        <dd>
                        	<a title="郑州大学论坛" href="http://www.bbs370.com/forum-95-1.html">郑州大学论坛</a>
                        </dd>
                    </dl>
               		<dl id="lf_52" class="">
                    	<dt>
                        	<a title="互动吧"  href="#" name="sb1">互动吧</a>
                        </dt>
                        <dd>
                       		 <a title="论坛事务" href="http://www.bbs370.com/forum-53-1.html">论坛事务</a>
                        </dd>
                       
                        <dd>
                       		 <a title="论坛事务" href="http://www.bbs370.com/forum-53-1.html">论坛事务</a>
                        </dd>
                        <dd>
                       		 <a title="论坛事务" href="http://www.bbs370.com/forum-53-1.html">论坛事务</a>
                        </dd>
                    </dl>
                </div>
            	<div id="diyleftsidebottom" class="area"></div>
            </div>
       		<div class="mnl">
            	<div class="bm bml pbn">
                	<div class="bm_h cl">
                    	<span class="y">
                            <a id="a_favorite" class="fa_fav" onclick="" href="#">收藏本版</a>
                            <span class="pipe">|</span>
                            <a class="fa_rss" title="RSS" target="_blank" href="http://www.bbs370.com/forum.php?mod=rss&fid=37&auth=0">订阅</a>
                        </span>
                   		<h1 class="xs2">
                            <a href="http://www.bbs370.com/forum-37-1.html">商丘学院论坛（华豫学院）</a>
                            <span class="xs1 xw0 i">
                            今日:
                            <strong class="xi1">0</strong>
                            <span class="pipe">|</span>
                            主题:
                            <strong class="xi1">52</strong>
                            </span>
                            </h1>
                    </div>
                </div>
            	<div class="drag">
               		<div id="diy4" class="area"></div>
                </div>
           		<div id="pgt" class="bm bw0 pgs cl">
                	<span id="fd_page_top">
                        <div class="pg">
                        <strong>1</strong>
                        <a href="http://www.bbs370.com/forum-37-2.html">2</a>
                        <a href="http://www.bbs370.com/forum-37-3.html">3</a>
                        <label>
                        <input class="px" type="text" onkeydown="" value="1" title="输入页码，按回车快速跳转" size="2" name="custompage" />
                       		 <span title="共 3 页"> / 3 页</span>
                        </label>
                        <a class="nxt" href="http://www.bbs370.com/forum-37-2.html">下一页</a>
                        </div>
                    </span>
               		<span class="pgb y">
                    	<a href="http://www.bbs370.com/forum.php">返 回</a>
                    </span>
               		<a id="newspecial" title="发新帖" onclick="" onmouseover="" href="">
                   		 <img alt="发新帖" src="<%=basePath %>login/skin/img/pn_post.png" />
                    </a>
                </div>
           		<div id="threadlist" class="tl bm bmw">
                	<div class="th">
                    	<table cellspacing="0" cellpadding="0">
                        	<tbody>
                            	<tr>
                                	<th colspan="2">
                                    	<div class="tf">
                                            <span id="atarget" class="y" title="在新窗口中打开帖子" onclick="setatarget(1)">新窗</span>
                                            筛选:
                                            <a id="filter_special" class="showmenu xi2" onclick="showMenu(this.id)" href="javascript:;"> 全部主题</a>
                                            <a id="filter_dateline" class="showmenu xi2" onclick="showMenu(this.id)" href="javascript:;"> 全部时间</a>
                                            排序:
                                            <a id="filter_orderby" class="showmenu xi2" onclick="showMenu(this.id)" href="javascript:;"> 最后发表</a>
                                            <span class="pipe">|</span>
                                            <a class="xi2" href="http://www.bbs370.com/forum.php?mod=forumdisplay&fid=37&filter=digest&digest=1">精华</a>
                                        </div>
                                    </th>
                              		<td class="by">作者</td>
                                    <td class="num">回复/查看</td>
                                    <td class="by">最后发表</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                	<div class="bm_c">
                    	<form id="moderate" action="" name="moderate" autocomplete="off" method="post">
                        	<input type="hidden" value="4a8bcfdb" name="formhash" />
							<input type="hidden" value="page%3D1" name="listextra" />
                        	<table cellspacing="0" cellpadding="0" summary="forum_37">
                            	<tbody id="stickthread_593">
                                	<tr>
                                    	<td class="icn">
                                            <a target="_blank" title="全局置顶主题 - 新窗口打开" href="http://www.bbs370.com/thread-593-1-1.html">
                                            <img alt="全局置顶" src="<%=basePath %>login/skin/img/pin_3.gif" />
                                            </a>
                                        </td>
                                   		<th class="common">
                                      		  <a class="xst" onclick="atarget(this)" href="">河南大学生论坛广告投放方案</a>
                                        </th>
                                   		<td class="by">
                                            <cite>
                                           		 <a c="1" href="http://www.bbs370.com/home.php?mod=space&uid=1">admin</a>
                                            </cite>
                                            <em>
                                           		 <span>2013-3-9</span>
                                            </em>
                                        </td>
                                  		<td class="num">
                                            <a class="xi2" href="http://www.bbs370.com/thread-593-1-1.html">2</a>
                                            <em>837</em>
                                        </td>
                                   		<td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&username=Miss.L">Miss.L</a>
                                            </cite>
                                            <em>
                                            <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=593&goto=lastpost#lastpost">2013-7-28 11:03</a>
                                            </em>
                                        </td>
                                    </tr>
                                </tbody>
                            	<tbody id="stickthread_5">
                                	<tr>
                                    	<td class="icn">
                                            <a target="_blank" title="全局置顶主题 - 新窗口打开" href="http://www.bbs370.com/thread-5-1-1.html">
                                            <img alt="全局置顶" src="<%=basePath %>login/skin/img/pin_3.gif" />
                                            </a>
                                        </td>
                                        <th class="common">
                                       		 <a class="xst" onclick="atarget(this)" href="">河南大学生论坛各大学板块版主招募</a>
                                        </th>
                                        <td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&uid=1">admin</a>
                                            </cite>
                                            <em>
                                            <span>2012-9-25</span>
                                            </em>
                                        </td>
                                        <td class="num">
                                            <a class="xi2" href="http://www.bbs370.com/thread-5-1-1.html">4</a>
                                            <em>956</em>
                                        </td>
                                        <td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&username=%E7%AE%A1%E7%90%86%E5%91%98">管理员</a>
                                            </cite>
                                            <em>
                                            <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=5&goto=lastpost#lastpost">2013-3-8 21:58</a>
                                            </em>
                                        </td>
                                    </tr>
                                </tbody>
                                <tbody id="stickthread_5">
                                	<tr>
                                    	<td class="icn">
                                            <a target="_blank" title="全局置顶主题 - 新窗口打开" href="http://www.bbs370.com/thread-5-1-1.html">
                                            <img alt="全局置顶" src="<%=basePath %>login/skin/img/pin_3.gif" />
                                            </a>
                                        </td>
                                        <th class="common">
                                       		 <a class="xst" onclick="atarget(this)" href="">河南大学生论坛各大学板块版主招募</a>
                                        </th>
                                        <td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&uid=1">admin</a>
                                            </cite>
                                            <em>
                                            <span>2012-9-25</span>
                                            </em>
                                        </td>
                                        <td class="num">
                                            <a class="xi2" href="http://www.bbs370.com/thread-5-1-1.html">4</a>
                                            <em>956</em>
                                        </td>
                                        <td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&username=%E7%AE%A1%E7%90%86%E5%91%98">管理员</a>
                                            </cite>
                                            <em>
                                            <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=5&goto=lastpost#lastpost">2013-3-8 21:58</a>
                                            </em>
                                        </td>
                                    </tr>
                                </tbody>
                                <tbody id="stickthread_5">
                                	<tr>
                                    	<td class="icn">
                                            <a target="_blank" title="全局置顶主题 - 新窗口打开" href="http://www.bbs370.com/thread-5-1-1.html">
                                            <img alt="全局置顶" src="<%=basePath %>login/skin/img/pin_3.gif" />
                                            </a>
                                        </td>
                                        <th class="common">
                                       		 <a class="xst" onclick="atarget(this)" href="">河南大学生论坛各大学板块版主招募</a>
                                        </th>
                                        <td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&uid=1">admin</a>
                                            </cite>
                                            <em>
                                            <span>2012-9-25</span>
                                            </em>
                                        </td>
                                        <td class="num">
                                            <a class="xi2" href="http://www.bbs370.com/thread-5-1-1.html">4</a>
                                            <em>956</em>
                                        </td>
                                        <td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&username=%E7%AE%A1%E7%90%86%E5%91%98">管理员</a>
                                            </cite>
                                            <em>
                                            <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=5&goto=lastpost#lastpost">2013-3-8 21:58</a>
                                            </em>
                                        </td>
                                    </tr>
                                </tbody>
                                <tbody id="stickthread_5">
                                	<tr>
                                    	<td class="icn">
                                            <a target="_blank" title="全局置顶主题 - 新窗口打开" href="http://www.bbs370.com/thread-5-1-1.html">
                                            <img alt="全局置顶" src="<%=basePath %>login/skin/img/pin_3.gif" />
                                            </a>
                                        </td>
                                        <th class="common">
                                       		 <a class="xst" onclick="atarget(this)" href="">河南大学生论坛各大学板块版主招募</a>
                                        </th>
                                        <td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&uid=1">admin</a>
                                            </cite>
                                            <em>
                                            <span>2012-9-25</span>
                                            </em>
                                        </td>
                                        <td class="num">
                                            <a class="xi2" href="http://www.bbs370.com/thread-5-1-1.html">4</a>
                                            <em>956</em>
                                        </td>
                                        <td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&username=%E7%AE%A1%E7%90%86%E5%91%98">管理员</a>
                                            </cite>
                                            <em>
                                            <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=5&goto=lastpost#lastpost">2013-3-8 21:58</a>
                                            </em>
                                        </td>
                                    </tr>
                                </tbody>
                           		<tbody id="separatorline">
                                    <tr class="ts">
                                    <td> </td>
                                    <th>
                                    <a class="forumrefresh" title="查看更新" onclick="checkForumnew_btn('37')" href="javascript:;">版块主题</a>
                                    </th>
                                    <td> </td>
                                    <td> </td>
                                    <td> </td>
                                    </tr>
                                </tbody>
                            	<tbody id="normalthread_1570">
                                	<tr>
                                    	<td class="icn">
                                            <a target="_blank" title="有新回复 - 新窗口打开" href="http://www.bbs370.com/thread-1570-1-1.html">
                                            <img src="<%=basePath %>login/skin/img/folder_new.gif">
                                            </a>
                                        </td>
                                    	<th class="new">
                                            <a class="xst" onclick="atarget(this)" href="">2013年河南政法干警考试-判断推理应重视</a>
                                            <a class="xi1" href="">New</a>
                                        </th>
                                   		<td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&uid=238">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <span>
                                            <span title="2013-8-25">3 天前</span>
                                            </span>
                                            </em>
                                        </td>
                                    	<td class="num">
                                            <a class="xi2" href="http://www.bbs370.com/thread-1570-1-1.html">0</a>
                                            <em>8</em>
                                        </td>
                                  		<td class="by">
                                            <cite>
                                            <a c="1" href="">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1570&goto=lastpost#lastpost">
                                            <span title="2013-8-25 18:37">3 天前</span>
                                            </a>
                                            </em>
                                        </td>
                                    </tr>
                                </tbody>
                           		<tbody id="normalthread_1569">
                                	<tr>
                                    	<td class="icn">
                                            <a target="_blank" title="有新回复 - 新窗口打开" href="http://www.bbs370.com/thread-1569-1-1.html">
                                            	<img src="<%=basePath %>login/skin/img/folder_new.gif" />
                                        	</a>
                                        </td>
                                   		<th class="new">
                                            <a class="xst" onclick="atarget(this)" href="">2013年河南政法干警考试：数字通关密码</a>
                                            <a class="xi1" href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">New</a>
                                        </th>
                                   		<td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&uid=238">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <span>
                                            <span title="2013-8-25">3 天前</span>
                                            </span>
                                            </em>
                                        </td>
                                    	<td class="num">
                                            <a class="xi2" href="http://www.bbs370.com/thread-1569-1-1.html">0</a>
                                            <em>6</em>
                                        </td>
                                    	<td class="by">
                                            <cite>
                                            <a c="1" href="">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">
                                            <span title="2013-8-25 18:36">3 天前</span>
                                            </a>
                                            </em>
                                        </td>
                                    </tr>
                                </tbody>
                                <tbody id="normalthread_1569">
                                	<tr>
                                    	<td class="icn">
                                            <a target="_blank" title="有新回复 - 新窗口打开" href="http://www.bbs370.com/thread-1569-1-1.html">
                                            	<img src="<%=basePath %>login/skin/img/folder_new.gif" />
                                        	</a>
                                        </td>
                                   		<th class="new">
                                            <a class="xst" onclick="atarget(this)" href="">2013年河南政法干警考试：数字通关密码</a>
                                            <a class="xi1" href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">New</a>
                                        </th>
                                   		<td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&uid=238">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <span>
                                            <span title="2013-8-25">3 天前</span>
                                            </span>
                                            </em>
                                        </td>
                                    	<td class="num">
                                            <a class="xi2" href="http://www.bbs370.com/thread-1569-1-1.html">0</a>
                                            <em>6</em>
                                        </td>
                                    	<td class="by">
                                            <cite>
                                            <a c="1" href="">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">
                                            <span title="2013-8-25 18:36">3 天前</span>
                                            </a>
                                            </em>
                                        </td>
                                    </tr>
                                </tbody>
                                <tbody id="normalthread_1569">
                                	<tr>
                                    	<td class="icn">
                                            <a target="_blank" title="有新回复 - 新窗口打开" href="http://www.bbs370.com/thread-1569-1-1.html">
                                            	<img src="<%=basePath %>login/skin/img/folder_new.gif" />
                                        	</a>
                                        </td>
                                   		<th class="new">
                                            <a class="xst" onclick="atarget(this)" href="">2013年河南政法干警考试：数字通关密码</a>
                                            <a class="xi1" href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">New</a>
                                        </th>
                                   		<td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&uid=238">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <span>
                                            <span title="2013-8-25">3 天前</span>
                                            </span>
                                            </em>
                                        </td>
                                    	<td class="num">
                                            <a class="xi2" href="http://www.bbs370.com/thread-1569-1-1.html">0</a>
                                            <em>6</em>
                                        </td>
                                    	<td class="by">
                                            <cite>
                                            <a c="1" href="">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">
                                            <span title="2013-8-25 18:36">3 天前</span>
                                            </a>
                                            </em>
                                        </td>
                                    </tr>
                                </tbody>
                                <tbody id="normalthread_1569">
                                	<tr>
                                    	<td class="icn">
                                            <a target="_blank" title="有新回复 - 新窗口打开" href="http://www.bbs370.com/thread-1569-1-1.html">
                                            	<img src="<%=basePath %>login/skin/img/folder_new.gif" />
                                        	</a>
                                        </td>
                                   		<th class="new">
                                            <a class="xst" onclick="atarget(this)" href="">2013年河南政法干警考试：数字通关密码</a>
                                            <a class="xi1" href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">New</a>
                                        </th>
                                   		<td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&uid=238">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <span>
                                            <span title="2013-8-25">3 天前</span>
                                            </span>
                                            </em>
                                        </td>
                                    	<td class="num">
                                            <a class="xi2" href="http://www.bbs370.com/thread-1569-1-1.html">0</a>
                                            <em>6</em>
                                        </td>
                                    	<td class="by">
                                            <cite>
                                            <a c="1" href="">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">
                                            <span title="2013-8-25 18:36">3 天前</span>
                                            </a>
                                            </em>
                                        </td>
                                    </tr>
                                </tbody>
                                <tbody id="normalthread_1569">
                                	<tr>
                                    	<td class="icn">
                                            <a target="_blank" title="有新回复 - 新窗口打开" href="http://www.bbs370.com/thread-1569-1-1.html">
                                            	<img src="<%=basePath %>login/skin/img/folder_new.gif" />
                                        	</a>
                                        </td>
                                   		<th class="new">
                                            <a class="xst" onclick="atarget(this)" href="">2013年河南政法干警考试：数字通关密码</a>
                                            <a class="xi1" href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">New</a>
                                        </th>
                                   		<td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&uid=238">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <span>
                                            <span title="2013-8-25">3 天前</span>
                                            </span>
                                            </em>
                                        </td>
                                    	<td class="num">
                                            <a class="xi2" href="http://www.bbs370.com/thread-1569-1-1.html">0</a>
                                            <em>6</em>
                                        </td>
                                    	<td class="by">
                                            <cite>
                                            <a c="1" href="">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">
                                            <span title="2013-8-25 18:36">3 天前</span>
                                            </a>
                                            </em>
                                        </td>
                                    </tr>
                                </tbody>
                                <tbody id="normalthread_1569">
                                	<tr>
                                    	<td class="icn">
                                            <a target="_blank" title="有新回复 - 新窗口打开" href="http://www.bbs370.com/thread-1569-1-1.html">
                                            	<img src="<%=basePath %>login/skin/img/folder_new.gif" />
                                        	</a>
                                        </td>
                                   		<th class="new">
                                            <a class="xst" onclick="atarget(this)" href="">2013年河南政法干警考试：数字通关密码</a>
                                            <a class="xi1" href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">New</a>
                                        </th>
                                   		<td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&uid=238">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <span>
                                            <span title="2013-8-25">3 天前</span>
                                            </span>
                                            </em>
                                        </td>
                                    	<td class="num">
                                            <a class="xi2" href="http://www.bbs370.com/thread-1569-1-1.html">0</a>
                                            <em>6</em>
                                        </td>
                                    	<td class="by">
                                            <cite>
                                            <a c="1" href="">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">
                                            <span title="2013-8-25 18:36">3 天前</span>
                                            </a>
                                            </em>
                                        </td>
                                    </tr>
                                </tbody>
                                <tbody id="normalthread_1569">
                                	<tr>
                                    	<td class="icn">
                                            <a target="_blank" title="有新回复 - 新窗口打开" href="http://www.bbs370.com/thread-1569-1-1.html">
                                            	<img src="<%=basePath %>login/skin/img/folder_new.gif" />
                                        	</a>
                                        </td>
                                   		<th class="new">
                                            <a class="xst" onclick="atarget(this)" href="">2013年河南政法干警考试：数字通关密码</a>
                                            <a class="xi1" href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">New</a>
                                        </th>
                                   		<td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&uid=238">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <span>
                                            <span title="2013-8-25">3 天前</span>
                                            </span>
                                            </em>
                                        </td>
                                    	<td class="num">
                                            <a class="xi2" href="http://www.bbs370.com/thread-1569-1-1.html">0</a>
                                            <em>6</em>
                                        </td>
                                    	<td class="by">
                                            <cite>
                                            <a c="1" href="">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">
                                            <span title="2013-8-25 18:36">3 天前</span>
                                            </a>
                                            </em>
                                        </td>
                                    </tr>
                                </tbody>
                                <tbody id="normalthread_1569">
                                	<tr>
                                    	<td class="icn">
                                            <a target="_blank" title="有新回复 - 新窗口打开" href="http://www.bbs370.com/thread-1569-1-1.html">
                                            	<img src="<%=basePath %>login/skin/img/folder_new.gif" />
                                        	</a>
                                        </td>
                                   		<th class="new">
                                            <a class="xst" onclick="atarget(this)" href="">2013年河南政法干警考试：数字通关密码</a>
                                            <a class="xi1" href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">New</a>
                                        </th>
                                   		<td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&uid=238">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <span>
                                            <span title="2013-8-25">3 天前</span>
                                            </span>
                                            </em>
                                        </td>
                                    	<td class="num">
                                            <a class="xi2" href="http://www.bbs370.com/thread-1569-1-1.html">0</a>
                                            <em>6</em>
                                        </td>
                                    	<td class="by">
                                            <cite>
                                            <a c="1" href="">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">
                                            <span title="2013-8-25 18:36">3 天前</span>
                                            </a>
                                            </em>
                                        </td>
                                    </tr>
                                </tbody>
                                <tbody id="normalthread_1569">
                                	<tr>
                                    	<td class="icn">
                                            <a target="_blank" title="有新回复 - 新窗口打开" href="http://www.bbs370.com/thread-1569-1-1.html">
                                            	<img src="<%=basePath %>login/skin/img/folder_new.gif" />
                                        	</a>
                                        </td>
                                   		<th class="new">
                                            <a class="xst" onclick="atarget(this)" href="">2013年河南政法干警考试：数字通关密码</a>
                                            <a class="xi1" href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">New</a>
                                        </th>
                                   		<td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&uid=238">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <span>
                                            <span title="2013-8-25">3 天前</span>
                                            </span>
                                            </em>
                                        </td>
                                    	<td class="num">
                                            <a class="xi2" href="http://www.bbs370.com/thread-1569-1-1.html">0</a>
                                            <em>6</em>
                                        </td>
                                    	<td class="by">
                                            <cite>
                                            <a c="1" href="">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">
                                            <span title="2013-8-25 18:36">3 天前</span>
                                            </a>
                                            </em>
                                        </td>
                                    </tr>
                                </tbody>
                                <tbody id="normalthread_1569">
                                	<tr>
                                    	<td class="icn">
                                            <a target="_blank" title="有新回复 - 新窗口打开" href="http://www.bbs370.com/thread-1569-1-1.html">
                                            	<img src="<%=basePath %>login/skin/img/folder_new.gif" />
                                        	</a>
                                        </td>
                                   		<th class="new">
                                            <a class="xst" onclick="atarget(this)" href="">2013年河南政法干警考试：数字通关密码</a>
                                            <a class="xi1" href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">New</a>
                                        </th>
                                   		<td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&uid=238">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <span>
                                            <span title="2013-8-25">3 天前</span>
                                            </span>
                                            </em>
                                        </td>
                                    	<td class="num">
                                            <a class="xi2" href="http://www.bbs370.com/thread-1569-1-1.html">0</a>
                                            <em>6</em>
                                        </td>
                                    	<td class="by">
                                            <cite>
                                            <a c="1" href="">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">
                                            <span title="2013-8-25 18:36">3 天前</span>
                                            </a>
                                            </em>
                                        </td>
                                    </tr>
                                </tbody>
                                <tbody id="normalthread_1569">
                                	<tr>
                                    	<td class="icn">
                                            <a target="_blank" title="有新回复 - 新窗口打开" href="http://www.bbs370.com/thread-1569-1-1.html">
                                            	<img src="<%=basePath %>login/skin/img/folder_new.gif" />
                                        	</a>
                                        </td>
                                   		<th class="new">
                                            <a class="xst" onclick="atarget(this)" href="">2013年河南政法干警考试：数字通关密码</a>
                                            <a class="xi1" href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">New</a>
                                        </th>
                                   		<td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&uid=238">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <span>
                                            <span title="2013-8-25">3 天前</span>
                                            </span>
                                            </em>
                                        </td>
                                    	<td class="num">
                                            <a class="xi2" href="http://www.bbs370.com/thread-1569-1-1.html">0</a>
                                            <em>6</em>
                                        </td>
                                    	<td class="by">
                                            <cite>
                                            <a c="1" href="">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">
                                            <span title="2013-8-25 18:36">3 天前</span>
                                            </a>
                                            </em>
                                        </td>
                                    </tr>
                                </tbody>
                                <tbody id="normalthread_1569">
                                	<tr>
                                    	<td class="icn">
                                            <a target="_blank" title="有新回复 - 新窗口打开" href="http://www.bbs370.com/thread-1569-1-1.html">
                                            	<img src="<%=basePath %>login/skin/img/folder_new.gif" />
                                        	</a>
                                        </td>
                                   		<th class="new">
                                            <a class="xst" onclick="atarget(this)" href="">2013年河南政法干警考试：数字通关密码</a>
                                            <a class="xi1" href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">New</a>
                                        </th>
                                   		<td class="by">
                                            <cite>
                                            <a c="1" href="http://www.bbs370.com/home.php?mod=space&uid=238">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <span>
                                            <span title="2013-8-25">3 天前</span>
                                            </span>
                                            </em>
                                        </td>
                                    	<td class="num">
                                            <a class="xi2" href="http://www.bbs370.com/thread-1569-1-1.html">0</a>
                                            <em>6</em>
                                        </td>
                                    	<td class="by">
                                            <cite>
                                            <a c="1" href="">小俊酱爱吃大蒸</a>
                                            </cite>
                                            <em>
                                            <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1569&goto=lastpost#lastpost">
                                            <span title="2013-8-25 18:36">3 天前</span>
                                            </a>
                                            </em>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
           		<div class="bm bw0 pgs cl">
                	<span id="fd_page_bottom">
                        <div class="pg">
                        <strong>1</strong>
                        <a href="http://www.bbs370.com/forum-37-2.html">2</a>
                        <a href="http://www.bbs370.com/forum-37-3.html">3</a>
                        <label>
                       		 <input class="px" type="text" onkeydown="" value="1" title="输入页码，按回车快速跳转" size="2" name="custompage" />
                       		 <span title="共 3 页"> / 3 页</span>
                        </label>
                        <a class="nxt" href="http://www.bbs370.com/forum-37-2.html">下一页</a>
                        </div>
                    </span>
                	<span class="pgb y">
                    	<a href="http://www.bbs370.com/forum.php">返 回</a>
                    </span>
                    <a id="newspecialtmp" title="发新帖" onclick="" onmouseover="" href="">
                   		<img alt="发新帖" src="<%=basePath %>login/skin/img/pn_post.png" />
                    </a>
                </div>
            	<div id="f_pst" class="bm">
                	<div class="bm_h">
                   		<h2>快速发帖</h2>
                    </div>
               		<div class="bm_c">
                    	<form id="fastpostform" onsubmit="return fastpostvalidate(this)" action="" autocomplete="off" method="post">
                        	<div id="fastpostreturn" style="margin:-5px 0 5px"></div>
                            <div class="pbt cl">
                                <input id="subject" class="px" type="text" style="width: 25em" tabindex="11" onkeyup="" value="" name="subject">
                                <span>
                                还可输入
                                <strong id="checklen">80</strong>
                                个字符
                                </span>
                            </div>
                       		<div class="cl">
                            	<div id="fastposteditor" class="hasfsl">
                                	<div class="tedt">
                                    	<div class="bar">
                                        	<span class="y">
                                           		<a onclick="">高级模式</a>
                                            </span>
                                       		<div class="fpd">
                                                <a class="fbld" title="文字加粗" href="javascript:;">B</a>
                                                <a id="fastpostforecolor" class="fclr" title="设置文字颜色" href="javascript:;">Color</a>
                                                <a id="fastpostimg" class="fmg" title="图片" href="javascript:;">Image</a>
                                                <a id="fastposturl" class="flnk" title="添加链接" href="javascript:;">Link</a>
                                                <a id="fastpostquote" class="fqt" title="引用" href="javascript:;">Quote</a>
                                                <a id="fastpostcode" class="fcd" title="代码" href="javascript:;">Code</a>
                                                <a id="fastpostsml" class="fsml" href="javascript:;">Smilies</a>
                                            </div>
                                        </div>
                                   		<div class="area">
                                        	<div class="pt hm">
                                            	 您需要登录后才可以发帖
                                                <a class="xi2" onclick="showWindow('login', this.href)" href="member.php?mod=logging&action=login">登录</a>
                                                |
                                                <a class="xi2" href="member.php?mod=register">立即注册</a>
                                                <a rel="nofollow" target="_top" href="">
                                               		<img class="vm" src="<%=basePath %>login/skin/img/qq_login.gif" />
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                       		<p class="ptm pnpost">
                            	<button id="fastpostsubmit" class="pn pnc" tabindex="13" value="topicsubmit" name="topicsubmit" type="submit" />
                                	<strong>发表帖子</strong>
                                </button>
                                <label>
                                    <input class="pc" type="checkbox" value="1" name="adddynamic" />
                                    转播给听众
                                </label>
                            </p>
                        </form>
                    </div>
                </div>
            </div>
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
