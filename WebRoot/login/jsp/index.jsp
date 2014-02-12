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

<style>
.close{
	display:none;
}
.open{
	display:block;
}
nar_box{
width:1300px;
}
</style>
<%@ include file="/framework/jsp/body.jsp"%>
<div id="forum"> 
	<div id="backtotop">
		<a href="#top">
			<img src="<%=basePath %>/login/skin/img/scrolltop.png" />
		</a>
	</div>
	<div id="toptb">
    	<div class="z">
        	<a href="javascript:void(0);" onclick="setHome(this);">设为首页</a>
            <a href="javascript:void(0);" onclick="addFavorite();">收藏本站</a>
        </div>
        <div class="y">
        	<a href="#" id="aa">切换到宽版</a>
            <a id="switchblind" class="switchblind" title="开启盲人体验"><img src="<%=basePath %>/login/skin/img/blind.gif" /></a>
        </div>
    </div>
    <div id="hd">
    	<div class="wp"> 
        	<div class="hdc c1">
            	<h2>
                	<a title="郑州轻工业论坛" href="http://www.zzuli.edu.cn/">
                   	 <img border="0" alt="郑州轻工业论坛" src="<%=basePath %>/login/skin/img/logo.png" />
                    </a>
                </h2>	
               <form id="lsform" onsubmit="#" action="/user/userAction/login.action" method="post">
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
                                	<img class="vm" alt="QQ登录" src="<%=basePath %>/login/skin/img/qq_login.gif" />
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
            			<img src="<%=basePath %>/login/skin/img/0f000264gFkkvh08cVbd70.jpg"/>
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
    <div id="diy1">
    	<div id="left">
        	<div class="comiis_wrapad" id="slideContainer">
		        <div id="frameHlicAe" class="frame cl">
		            <div class="temp"></div>
		            <div class="block">
		                <div class="focusBox" style="margin:30px auto">
<ul class="pic" style="position: relative; width: 320px; height: 240px;">
<li style="position: absolute; width: 320px; left: 0px; top: 0px; display: none;"><a href="http://sc.chinaz.com/" target="_blank"><img src="<%=basePath %>/login/skin/img/11.jpg"></a></li>
<li style="position: absolute; width: 320px; left: 0px; top: 0px; display: none;"><a href="http://sc.chinaz.com/" target="_blank"><img src="<%=basePath %>/login/skin/img/12.jpg"></a></li>
<li style="position: absolute; width: 320px; left: 0px; top: 0px; display: list-item;"><a href="http://sc.chinaz.com/" target="_blank"><img src="<%=basePath %>/login/skin/img/13.jpg"></a></li>
<li style="position: absolute; width: 320px; left: 0px; top: 0px; display: none;"><a href="http://sc.chinaz.com/" target="_blank"><img src="<%=basePath %>/login/skin/img/14.jpg"></a></li>
</ul>
<div class="txt-bg"></div>
<div class="txt">
<ul>
<li style="bottom: -36px;"><a href="http://sc.chinaz.com/">美女福利图Quiet</a></li>
<li style="bottom: -36px;"><a href="http://sc.chinaz.com/">美女福利图DoubleLi</a></li>
<li style="bottom: 0px;"><a href="http://sc.chinaz.com/">美女福利图Quiet</a></li>
<li style="bottom: -36px;"><a href="http://sc.chinaz.com/">美女福利图Quiet</a></li>
</ul></div>
<ul class="num">
<li class=" "><a>1</a><span></span></li>
<li class=" "><a>2</a><span></span></li>
<li class="  on"><a>3</a><span></span></li>
<li class=" "><a>4</a><span></span></li>
</ul>
</div>
<script type="text/javascript">
jQuery(".focusBox").slide({ titCell:".num li", mainCell:".pic",effect:"fold", autoPlay:true,trigger:"click",startFun:function(i){jQuery(".focusBox .txt li").eq(i).animate({"bottom":0}).siblings().animate({"bottom":-36});}});
</script>
		            </div>
		        </div>
		    </div>
		    <script type="text/javascript">
		        SlideShow(2000);
		    </script>
        </div>
        <div id="center">
        	<div class="temp"></div>
        	<div>
        		<div id="tabdv9OIK_title" class="tab-title title" switchtype="mouseover">
        			<ul class="tb">
        				<li id="portal_block_367" class="a">
						<a href="javascript:;"> 最新发表</a>
						</li>
        			</ul>
        		</div>
        	</div>
        	<div id="tabdv9OIK_content" class="tb-c">
        		<ul>
        			<li>
					<em>
					<span title="2013-08-16">2 小时前</span>
					</em>
					<a target="_blank" title="2013河南政法干警考试申论备考：申论答题突出关键词" href="#">2013河南政法干警考试申论备考：申论答题突</a>
					</li>
        			<li>
						<em>
						<span title="2013-08-16">1 小时前</span>
						</em>
						<a target="_blank" title="2013河南政法干警考试申论备考：申论答题突出关键词" href="http://www.bbs370.com/thread-1233-1-1.html">2013河南政法干警考试申论备考：申论答题突</a>
					</li>
        		</ul>
        	</div>

        </div>
        <div id="right">
        	<div class="temp"></div>
            <div class="block">
            	<div class="title">
                	<span class="titletext">热门话题</span>
                </div>
                <div>
                	<ul>
                    	<li>
                        	<em><span title="2013-08-12">3 天前</span></em>
                            <a target="_blank" title="招聘网络兼职人员" href="#">招聘网络兼职人员</a>
                        </li>
                        <li>
                        <em>
                            <span title="2013-08-12">3 天前</span>
                            </em>
                            <a target="_blank" title="高薪招聘淘宝店员工！" href="#">高薪招聘淘宝店员工！</a>
                        </li>
                        <li>
                            <em>2013-07-28</em>
                            <a target="_blank" title="河南大学生论坛广告投放方案" href="#">河南大学生论坛广告投放方案</a>
                        </li>
                        <li>
                            <em>
                            <span title="2013-08-12">3 天前</span>
                            </em>
                            <a target="_blank" title="中国电信招聘一批网上兼职工" href="#">中国电信招聘一批网上兼职工</a>
                        </li>
                        <li>
                            <em>2013-07-29</em>
                            <a target="_blank" title="这个粗心的男人 还会..." href="#">这个粗心的男人 还会。。。</a>
                        </li>
                        <li>
                            <em>
                            <span title="2013-08-08">7 天前</span>
                            </em>
                            <a target="_blank" title="走过路过千万别错过，点击送大礼" href="#">走过路过千万别错过，点击送大礼</a>
                        </li>
                        <li>
                            <em>2013-07-19</em>
                            <a target="_blank" title="★尧山大峡谷漂流一日游★" href="#">★尧山大峡谷漂流一日游★</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div id="ct">
    	<div id="chart">
        	<p class="chart z">
            	今日:
                <em>3</em>
                <span class="pipe">|</span>
                昨日:
                <em>14</em>
                <span class="pipe">|</span>
                帖子:
                <em>1370</em>
                <span class="pipe">|</span>
                会员:
                <em>276</em>
                <span class="pipe">|</span>
                欢迎新会员:
                <em>
                <a class="xi2" target="_blank" href="http://www.bbs370.com/home.php?mod=space&username=%E5%A4%8F%E6%97%A5%E7%A7%8B%E6%9C%88">夏日秋月</a>
                </em>
            </p>
            <div class="y"><a class="xi2" title="查看新帖" href="#">查看新帖</a></div>
        </div>
		<div   class="mn"><!-- dsadsa -->
        <div style="width:75%;float:left">
        	<div>
                <div class="title" name="liu" value="1">
                  <h2 class="z hm"><a href="#">校园分类消息</a></h2>
                   <span class="y"><img id="category_1_img1" src="<%=basePath %>/login/skin/img/collapsed_no.gif"  name="category" alt="收起/展开" title="收起/展开"/></span>
                </div>
                <div id="category_11" class="bm_c">
                	<table class="fl_tb" cellspacing="0" cellpadding="0">
                    	<tbody>
                        	<tr>
                            	<td>
                                	<div class="fl_icn_g wth">
                                    	<a href="#"><img alt="二手交易" src="<%=basePath %>/login/skin/img/common_39_icon.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="academy.html">二手交易</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                     </dl>
                                </td>
                                <td>
                                	<div class="fl_icn_g wth">
                                    	<a href="#"><img alt="租房信息" src="<%=basePath %>/login/skin/img/common_41_icon.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">租房信息</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                   </dl>
                                </td>
							</tr>
                            <tr class="fl_row">
                                <td>
                                	<div class="fl_icn_g wth">
                                    	<a href="#"><img alt="兼职家教" src="<%=basePath %>/login/skin/img/common_42_icon.jpg" /></a>
                                    </div>
                                    
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">兼职家教</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                            	<td>
                                	<div class="fl_icn_g wth">
                                    	<a href="#"><img alt="学生交友" src="<%=basePath %>/login/skin/img/common_42_icon.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">学生交友</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
							</tr>
							<tr class="fl_row">
                                <td>
                                	<div class="fl_icn_g wth">
                                    	<a href="#"><img alt="招聘求职" src="<%=basePath %>/login/skin/img/common_68_icon.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">招聘求职</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                                <td>
                                	<div class="fl_icn_g wth">
                                    	<a href="#"><img alt="商家合作" src="<%=basePath %>/login/skin/img/common_44_icon.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">商家合作</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div>
            	<div class="title">
                	<h2 class="z hm"><a href="#">网友互动园地</a></h2>
                    <span class="y"><img id="category_1_img2" src="<%=basePath %>/login/skin/img/collapsed_no.gif"  name="category" alt="收起/展开" title="收起/展开"/></span>
                </div>
                <div id="category_12" class="bm_c">
                	<table class="fl_tb" cellspacing="0" cellpadding="0">
                    	<tbody>
                        	<tr>
                            	<td>
                                	<div class="fl_icn_g wth">
                                    	<a href="#"><img alt="校园杂谈" src="<%=basePath %>/login/skin/img/common_2_icon.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">校园杂谈</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                                <td>
                                	<div class="fl_icn_g wth">
                                    	<a href="#"><img alt="社会热点" src="<%=basePath %>/login/skin/img/common_46_icon.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">社会热点</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
							</tr>
							<tr class="fl_row">
                                <td>
                                	<div class="fl_icn_g wth">
                                    	<a href="#"><img alt="情感驿站" src="<%=basePath %>/login/skin/img/common_50_icon.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">情感驿站 </a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                            	<td>
                                	<div class="fl_icn_g wth">
                                    	<a href="#"><img alt="学习交流" src="<%=basePath %>/login/skin/img/common_47_icon.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">学习交流</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
							</tr>
							<tr class="fl_row">
                                <td>
                                	<div class="fl_icn_g wth">
                                    	<a href="#"><img alt="社团动态" src="<%=basePath %>/login/skin/img/common_48_icon.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">社团动态</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                                <td>
                                	<div class="fl_icn_g wth">
                                    	<a href="#"><img alt="就业规划" src="<%=basePath %>/login/skin/img/common_49_icon.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">就业规划</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                            </tr>
                            <tr class="fl_row">
                            	<td>
                                	<div class="fl_icn_g wth">
                                    	<a href="#"><img alt="摄影爱好者" src="<%=basePath %>/login/skin/img/common_104_icon.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">摄影爱好者</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                                <td>
                                	<div class="fl_icn_g wth">
                                    	<a href="#"><img alt="影音分享" src="<%=basePath %>/login/skin/img/common_51_icon.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">影音分享</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
							</tr>
							<tr class="fl_row">
                                <td>
                                	<div class="fl_icn_g wth">
                                    	<a href="#"><img alt="娱乐休闲" src="<%=basePath %>/login/skin/img/common_105_icon.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">娱乐休闲</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>  
                            	<td>
                                	<div class="fl_icn_g wth">
                                    	<a href="#"><img alt="餐饮购物" src="<%=basePath %>/login/skin/img/common_52_icon.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">餐饮购物</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
							</tr>
							<tr class="fl_row">
                                <td>
                                	<div class="fl_icn_g wth">
                                    	<a href="#"><img alt="旅游出行" src="<%=basePath %>/login/skin/img/common_53_icon.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">旅游出行</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                                <td>
                                	<div class="fl_icn_g wth">
                                    	<a href="#"><img alt="站务公告" src="<%=basePath %>/login/skin/img/common_59_icon.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">站务公告</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div>
            	<div class="title">
                	<h2 class="z hm"><a href="#">大学专区</a></h2>
                    <span class="y"><img id="category_1_img3" src="<%=basePath %>/login/skin/img/collapsed_no.gif" name="category" alt="收起/展开" title="收起/展开"/></span>
                </div>
                <div id="category_13" class="bm_c">
                	<table class="fl_tb" cellspacing="0" cellpadding="0">
                    	<tbody>
                        	<tr>
                            	<td>
                                	<div class="fl_icn_g">
                                    	<a href="#"><img alt="郑州大学" src="<%=basePath %>/login/skin/img/daxue/zhengda.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">郑州大学</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                                <td>
                                	<div class="fl_icn_g">
                                    	<a href="#"><img alt="河南大学"  width="87px" height="69px" src="<%=basePath %>/login/skin/img/daxue/heda.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">河南大学</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                                <td>
                                	<div class="fl_icn_g">
                                    	<a href="#"><img alt="河南工业大学" src="<%=basePath %>/login/skin/img/daxue/henangongye.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">河南工业大学</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                            </tr>
                            <tr class="fl_row">
                            	<td>
                                	<div class="fl_icn_g">
                                    	<a href="#"><img alt="河南科技大学" src="<%=basePath %>/login/skin/img/daxue/henankeji.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">河南科技大学</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                                <td>
                                	<div class="fl_icn_g">
                                    	<a href="#"><img alt="河南农业大学" src="<%=basePath %>/login/skin/img/daxue/henannongye.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">河南农业大学</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                                <td>
                                	<div class="fl_icn_g">
                                    	<a href="#"><img alt="河南理工大学" src="<%=basePath %>/login/skin/img/daxue/henanligong.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">河南理工大学</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                            </tr>
                              <tr class="fl_row">
                            	<td>
                                	<div class="fl_icn_g">
                                    	<a href="#"><img alt=" 郑州轻工业学院"  width="83px" height="69px" src="<%=basePath %>/login/skin/img/daxue/zhengzhouqinggong.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html"> 郑州轻工业学院</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                               <td>
                                	<div class="fl_icn_g">
                                    	<a href="#"><img alt=" 华北水利水电学院 " src="<%=basePath %>/login/skin/img/daxue/huabeishuilishuidian.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html"> 华北水利水电学院 </a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                                <td>
                                	<div class="fl_icn_g">
                                    	<a href="#"><img alt=" 郑州大学西亚斯国际学院 " src="<%=basePath %>/login/skin/img/daxue/xiyasi.jpg" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html"> 郑州大学西亚斯国际学院  </a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>

                            </tr>
                               <tr class="fl_row">
                                <td>
                                	<div class="fl_icn_g">
                                    	<a href="#"><img alt=" 黄河科技学院" src="<%=basePath %>/login/skin/img/forum_new.gif" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html"> 黄河科技学院 </a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                                <td>
                                	<div class="fl_icn_g">
                                    	<a href="#"><img alt=" 信阳师范学院 " src="<%=basePath %>/login/skin/img/forum_new.gif" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html"> 信阳师范学院 </a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                            	                                <td>
                                	<div class="fl_icn_g">
                                    	<a href="#"><img alt=" 中州大学 " src="<%=basePath %>/login/skin/img/forum_new.gif" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html"> 中州大学 </a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                            </tr>
                               <tr class="fl_row">
                            	<td>
                                	<div class="fl_icn_g">
                                    	<a href="#"><img alt="开封大学" src="<%=basePath %>/login/skin/img/forum_new.gif" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html"> 开封大学</a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                                <td>
                                	<div class="fl_icn_g">
                                    	<a href="#"><img alt=" 洛阳大学 " src="<%=basePath %>/login/skin/img/forum_new.gif" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html"> 洛阳大学 </a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                                <td>
                                	<div class="fl_icn_g">
                                    	<a href="#"><img alt="平原大学  " src="<%=basePath %>/login/skin/img/forum_new.gif" /></a>
                                    </div>
                                    <dl>
                                        <dt>
                                        <a href="http://www.bbs370.com/forum-2-1.html">平原大学  </a>
                                        </dt>
                                        <dd>
                                        <em>主题: 70</em>
                                        ,
                                        <em>帖数: 102</em>
                                        </dd>
                                        <dd>
                                        <a href="http://www.bbs370.com/forum.php?mod=redirect&tid=1191&goto=lastpost#lastpost">
                                        最后发表:
                                        <span title="2013-8-15 18:10">昨天 18:10</span>
                                        </a>
                                        </dd>
                                        </dl>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        <div class="bm">
        	<div class="ptm">
            	<ul class="mbm">
                	<li>
                    <a title="申请友情链接" target="_blank" href="http://www.bbs370.com/thread-596-1-1.html">申请友情链接</a>
                    </li>
                    <li>
                    <a title="爱开封社区" target="_blank" href="http://www.aikf.cn">爱开封社区</a>
                    </li>
                    <li>
                    <a title="经典励志语录" target="_blank" href="http://www.bbs370.com/forum-110-1.html">经典励志语录</a>
                    </li>
                    <li>
                    <a title="每日一文美文网" target="_blank" href="http://www.meiri.in/">每日一文美文网</a>
                    </li>
                    <li>
                    <a title="幽默小笑话吧" target="_blank" href="http://www.bbs370.com/forum-48-1.html">幽默小笑话吧</a>
                    </li>
                    <li>
                    <a title="杜晓龙博客" target="_blank" href="http://www.xiaolong520.com">杜晓龙博客</a>
                    </li>
                    <li>
                    <a title="河南商丘论坛" target="_blank" href="http://www.bbs370.com/">河南商丘论坛</a>
                    </li>
                    <li>
                    <a title="安妮宝贝作品集" target="_blank" href="http://www.meiri.in/anni/">安妮宝贝作品集</a>
                    </li>
                    <li>
                    <a title="经典爱情语录" target="_blank" href="http://www.bbs370.com/forum-50-1.html">经典爱情语录</a>
                    </li>
                    <li>
                    <a title="每日一笑话" target="_blank" href="http://www.meiri.in/xiaohua/">每日一笑话</a>
                    </li>
                    <li>
                    <a title="大学生村官论坛" target="_blank" href="http://www.bbs370.com/forum-69-1.html">大学生村官论坛</a>
                    </li>
                    <li>
                    <a title="心情日志" target="_blank" href="http://zhengzhou.bbs370.com/forum-85-1.html">心情日志</a>
                    </li>
                    <li>
                    <a title="读书笔记大全" target="_blank" href="http://www.bbs370.com/forum-74-1.html">读书笔记大全</a>
                    </li>
                    <li>
                    <a title="百度网址大全" target="_blank" href="http://www.baidudsb.com/">百度网址大全</a>
                    </li>
                    <li>
                    <a title="飘飘丽人坊" target="_blank" href="http://ppliren.taobao.com/">飘飘丽人坊</a>
                    </li>
                    <li>
                    <a title="123网址大全" target="_blank" href="http://123.hao1987.com/">123网址大全</a>
                    </li>
                    <li>
                    <a title="河南公务员考试论坛" target="_blank" href="http://www.bbs370.com/forum-62-1.html">河南公务员考试</a>
                    </li>
                    <li>
                    <a title="标语口号大全" target="_blank" href="http://www.bbs370.com/forum-57-1.html">标语口号大全</a>
                    </li>
                    <li>
                    <a title="历史上的今天" target="_blank" href="http://www.meiri.in/cn/">历史上的今天</a>
                    </li>
                    <li>
                    <a title="每日新鲜事儿" target="_blank" href="http://www.meiri.in/news/">每日新鲜事儿</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
	<div style="width:25%;float:left;">
	   <div class="area" id="diy2"> 
	        <div class=" frame move-span cl frame-1" id="frame7IiL8C">
			  <div class="title frame-title">
			    <span class="titletext">聚合标签</span>
			  </div>
			  <div class="column frame-1-c" id="frame7IiL8C_left">
			    <div class="move-span temp" id="frame7IiL8C_left_temp"></div>
			    <div class="block move-span" id="portal_block_1299">
			       <div class="dxb_bc" id="portal_block_1299_content">
				      <div class="portal_block_summary">
                      <pre><span class="STYLE22">&nbsp;<a class="STYLE19" href="/forum-39-1.html" target="_blank">跳蚤</a></span> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> <span class="STYLE19"><a class="STYLE17" href="/forum-43-1.html" target="_blank">找朋友</a></span> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"><span class="STYLE13"> </span><span class="STYLE28"><a class="STYLE12" href="/forum-41-1.html" target="_blank">租房子</a></span> &nbsp;</pre>
<pre><span class="STYLE19"><span class="STYLE22">&nbsp;</span><a class="STYLE12" href="/forum-68-1.html" target="_blank">求职</a></span> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> <span class="STYLE15"><span class="STYLE19"><a class="STYLE28" href="?" target="_blank">我要兼职</a></span> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> </span><span class="STYLE11"><a class="STYLE25" href="?" target="_blank">求实习</a></span></pre>
<pre><span class="STYLE12"><span class="STYLE22">&nbsp;</span><a class="STYLE30" href="?" target="_blank">找家教</a></span><span class="STYLE15"> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> </span><span class="STYLE28"><a class="STYLE26" href="/forum-44-1.html" target="_blank">求合作</a></span></pre>
<hr width="215" size="1">
<pre><span class="STYLE30"><span class="STYLE22">&nbsp;</span><a class="STYLE19" href="/forum-2-1.html" target="_blank">校园资讯</a></span> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> <span class="STYLE22"><a class="STYLE17" href="/forum-46-1.html" target="_blank">武汉热点</a></span></pre>
<pre><span class="STYLE11"><span class="STYLE22">&nbsp;</span><a class="STYLE26" href="?" target="_blank">爆料</a></span> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> <span class="STYLE13"><a class="STYLE28" href="?" target="_blank">看校花</a></span> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> <span class="STYLE22"><a class="STYLE19" href="?" target="_blank">大一新生</a></span></pre>
<pre><span class="STYLE30"><span class="STYLE22">&nbsp;</span><a class="STYLE30" href="?" target="_blank">将要毕业</a></span> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> <span class="STYLE25"><a class="STYLE25" href="?" target="_blank">情感交流</a></span></pre>
<hr width="215" size="1">
<pre><span class="STYLE19"><span class="STYLE22">&nbsp;</span><a class="STYLE19" href="/forum-47-1.html" target="_blank">学习交流</a></span> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> <span class="STYLE17"><a class="STYLE17" href="?" target="_blank">考研</a></span> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> <span class="STYLE11"><a class="STYLE19" href="?" target="_blank">英语角</a></span></pre>
<pre><span class="STYLE19"><span class="STYLE22">&nbsp;</span><a class="STYLE17" href="?" target="_blank">资料下载</a></span> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> <span class="STYLE11"><a class="STYLE19" href="/forum-48-1.html" target="_blank">社团</a> </span><img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"><span class="STYLE19"> <a class="STYLE28" href="?" target="_blank">找工作</a></span></pre>
<pre><span class="STYLE17"><span class="STYLE22">&nbsp;</span><a class="STYLE19" href="?" target="_blank">简历</a></span> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> <span class="STYLE19"><a class="STYLE28" href="?" target="_blank">职业规划</a></span> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> <span class="STYLE17"><a class="STYLE30" href="?" target="_blank">创业</a></span></pre>
<hr width="215" size="1">
<pre><span class="STYLE19"><span class="STYLE22">&nbsp;</span><a class="STYLE17" href="?" target="_blank">看电影</a> </span><img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> <span class="STYLE17"><a class="STYLE19" href="?" target="_blank">原创</a></span> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> <span class="STYLE19"><a class="STYLE28" href="?" target="_blank">开心一下</a></span></pre>
<pre> <span class="STYLE11"><span class="STYLE22">&nbsp;</span><a class="STYLE19" href="?" target="_blank">劲爆音乐</a></span> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> <span class="STYLE13"><a class="STYLE17" href="/forum.php?mod=forumdisplay&amp;fid=51&amp;filter=typeid&amp;typeid=48" target="_blank">摄影</a></span> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> <span class="STYLE19"><a class="STYLE19" href="/forum-39-1.html" target="_blank">去旅游</a></span></pre>
<hr width="215" size="1">
<pre><span class="STYLE26"><span class="STYLE22">&nbsp;</span><a class="STYLE26" href="?" target="_blank">火热团购</a></span><span class="STYLE1"> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> </span><span class="STYLE19"><a class="STYLE19" href="?" target="_blank">大促销</a></span> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> <span class="STYLE19"><a class="STYLE17" href="?" target="_blank">美食</a></span></pre>
<pre><span class="STYLE19"><span class="STYLE22">&nbsp;</span><a class="STYLE19" href="?" target="_blank">想逛街</a></span> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> <span class="STYLE13"><a class="STYLE22" href="?" target="_blank">ktv</a></span> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> <span class="STYLE17"><a class="STYLE19" href="/userapp.php" target="_blank">玩游戏</a></span></pre>
<pre class="STYLE12"><span class="STYLE22">&nbsp;</span><a class="STYLE30" href="yuzhu_ezhichina-yuzhu_ezhichina.html" target="_blank">愤怒的小鸟</a> <img width="1" height="15" src="<%=basePath %>/login/skin/img/vline.png"> <a class="STYLE28" href="/map.php" target="_blank">看地图</a>

</pre>
<hr width="215" size="1">
<pre class="STYLE22">&nbsp;河南校园网 <span class="STYLE22">河南高校</span>
 
<span class="STYLE25">&nbsp;河南大学生第一社区</span>

&nbsp;<a class="STYLE22" href="http://www.027xiao.com" target="_blank">027xiao.com</a> </pre>


</div></div></div></div></div><div class="frame move-span cl frame-1" id="frame3U9F1e"><div class="column frame-1-c" id="frame3U9F1e_left"><div class="move-span temp" id="frame3U9F1e_left_temp"></div><div class="block move-span" id="portal_block_1303"><div class="dxb_bc" id="portal_block_1303_content"><div class="portal_block_summary"><script src="http://j.wit.qq.com/sc/crystal2.js"></script><div id="discuz_14046044_012SLOTauto_gen_3" style="width: 120px; height: 240px; overflow: hidden;"></div></div></div></div><div class="block move-span" id="portal_block_1304"><div class="dxb_bc" id="portal_block_1304_content"><div class="portal_block_summary"><script src="http://j.wit.qq.com/sc/crystal2.js"></script><div id="discuz_14046044_013SLOTauto_gen_5" style="width: 120px; height: 240px; overflow: hidden;"></div></div></div></div></div></div></div>
	</div>
	</div><!--  sdfsddsdffffffffffffff-->
    <div class="hm a_f">
    	<div class="banner_left">
    		<a href="#">
    			<img src="<%=basePath %>/login/skin/img/banner_buying/T1uJQnXXlcXXXnsrnn-73-88.gif"/>
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
                <img src="<%=basePath %>/login/skin/img/security.png" />
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
