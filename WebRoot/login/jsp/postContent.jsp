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
            <a class="nvhm" title="首页" href="./">河南大学生论坛</a>
            <em>»</em>
            <a href="http://www.bbs370.com/forum.php">河南大学生论坛</a>
            <em>›</em>
            <a href="http://www.bbs370.com/forum.php?gid=41">休闲吧</a>
            <em>›</em>
            <a href="http://www.bbs370.com/forum-45-1.html">爱情吧</a>
            <em>›</em>
            <a href="http://www.bbs370.com/thread-1426-1-1.html">一个普通爱情故事</a>
        </div>
    </div>
    <div id="ct">
    	<div id="pgt" class="pgs mbm cl ">
        	<div class="pgt"></div>
            <span id="visitedforums" class="y pgb" onmouseover="#">
                <a href="http://www.bbs370.com/forum-45-1.html">返回列表</a>
            </span>
            <a id="newspecial" title="发新帖" href="#" onclick="" onmouseover="#">
           		 <img alt="发新帖" src="<%=basePath %>login/skin/img/pn_post.png" />
            </a>
        </div>
   		<div id="postlist" class="pl bm">
        	<table cellpadding="0" cellspacing="0">
            	<tbody>
                	<tr>
                    	<td class="pls ptm pbm">
                            <div class="hm">
                                <span class="xg1">查看:</span>
                                <span class="xi1">16</span>
                                <span class="pipe">|</span>
                                <span class="xg1">回复:</span>
                                <span class="xi1">0</span>
                            </div>
                        </td>
                    	<td class="plc ptm pbn vwthd">
                        	<div class="y">
                                <a target="_blank" title="打印" href="#">
                                	<img class="vm" alt="打印" src="<%=basePath %>login/skin/img/print.png" />
                                </a>
                                <a title="上一主题" href="#">
                               		 <img class="vm" alt="上一主题" src="<%=basePath %>login/skin/img/thread-prev.png" />
                                </a>
                                <a title="下一主题" href="#">
                               		 <img class="vm" alt="下一主题" src="<%=basePath %>login/skin/img/thread-next.png" />
                                </a>
                            </div>
                        	<h1 class="ts">
                           		 <a id="thread_subject" href="#">一个普通爱情故事</a>
                            </h1>
                       		<span class="xg1">
                           		 <a onclick="return copyThreadUrl(this)" href="#">[复制链接]</a>
                            </span>
                        </td>
                    </tr>
                </tbody>
            </table>
        	<table class="ad" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td class="pls"></td>
                        <td class="plc"></td>
                    </tr>
                </tbody>
            </table>
        	<div id="post_1995">
            	<table id="pid1995" cellspacing="0" cellpadding="0" summary="pid1995">
					<tbody>
                    	<tr>
                        	<td class="pls" rowspan="2">
                            	<div class="pi">
                                    <div class="authi">
                                   		 <a class="xw1" target="_blank" href="http://www.bbs370.com/home.php?mod=space&uid=156">壹月想故乡</a>
                                    </div>
                                </div>
                          		<div>
                                	<div class="avatar" onmouseover="showauthor(this, 'userinfo1995')">
                                        <a target="_blank" href="#">
                                      	  <img src="<%=basePath %>login/skin/img/avatar.php.gif" />
                                    	</a>
                                    </div>
                               		<div class="tns xg2">
                                    	<table>
                                        	<tbody>
                                            	<tr>
                                                	<th>
                                                        <p>
                                                        <a class="xi2" href="#">79</a>
                                                        </p>
                                                        主题
                                                    </th>
                                               		<th>
                                                        <p>
                                                     	   <a class="xi2" href="#">1</a>
                                                        </p>
                                                        听众
                                                    </th>
                                                	<td>
                                                        <p>
                                                      	  <a class="xi2" href="#">1793</a>
                                                        </p>
                                                        积分
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                               		<p>
                                        <em>
                                        	<a target="_blank" href="#">金牌会员</a>
                                        </em>
                                    </p>
                                </div>
                          		<p id="g_up1995" onmouseover="#">
                                    <img alt="Rank: 6" src="<%=basePath %>login/skin/img/star_level3.gif">
                                    <img alt="Rank: 6" src="<%=basePath %>login/skin/img/star_level2.gif">
                                </p>
                            	<div class="qdsmile">
                                	<li>
                                    	<center>TA的每日心情</center>
                                        <table>
                                        	<tbody>
                                            	<tr>
                                                	<th>
                                                    	<img src="<%=basePath %>login/skin/img/kx.gif" />
                                                    </th>
                                                    <th>
                                                        <font size="5px">开心</font>
                                                        <br/>
                                                        <span title="2013-8-25 12:22">前天 12:22</span>
                                                    </th>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </li>
                                </div>
                           		<p>签到天数: 79 天</p>
								<p>[LV.6]常住居民II</p>
                                <ul class="xl xl2 o cl">
                                    <li class="addflw">
                                   		<a id="followmod_156" class="xi2" onclick="" title="收听TA" href="#">收听TA</a>
                                    </li>
                                    <li class="pm2">
                                    	<a class="xi2" title="发消息" onclick="" href="#">发消息</a>
                                    </li>
                                </ul>
                            </td>
                        	<td class="plc">
                            	<div class="pi">
                                	<div id="fj" class="y">
                                        <label class="z">电梯直达</label>
                                        <input class="px p_fre z" type="text" title="跳转到指定楼层" onkeydown="" onkeyup="" size="2" />
                                        <a id="fj_btn" class="z" title="跳转到指定楼层" href="#">
                                       		 <img class="vm" alt="跳转到指定楼层" src="<%=basePath %>login/skin/img/fj_btn.png" />
                                        </a>
                                    </div>
                               		<div class="pti">
                                    	<div class="authi">
                                            <img id="authicon1995" class="authicn vm" src="<%=basePath %>login/skin/img/online_member.gif">
                                            <em id="authorposton1995">
                                            发表于
                                            <span title="2013-8-22 16:51:54">5 天前</span>
                                            </em>
                                            <span class="pipe">|</span>
                                            <a rel="nofollow" href="#">只看该作者</a>
                                            <span class="pipe">|</span>
                                            <a href="#">倒序浏览</a>
                                        </div>
                                    </div>
                                </div>
                           		<div class="pct">
                                	<div class="a_pt">
                                    	<div id="uptown" class="uptown uptown3">
                                        	<a id="logo" class="logo" title="推广用户：www.tqkaoyan.com" href="#" target="_blank"> </a>
                                            <table id="house" class="house" cellspacing="0" cellpadding="0">
                                            	<tbody>
                                                	<tr id="floor" class="floor">
                                                    	<td id="room0" class="room room0">
                                                        	<div class="titwarp">
                                                          		<a id="tit0" class="tit" target="_blank" href="#">2014年考研选哪里 ..</a>
                                                            </div>
                                                      		<div class="cntwarp">
                                                            	<a id="icon0" target="_blank" href="#">
                                                                	<img class="icon" src="<%=basePath %>login/skin/img/0f000cSJjTEoCOLtXMKg00.jpg" />
                                                                </a>
                                                            	<div>
                                                               		 <a id="cnt0" class="cnt" target="_blank" href="#">太奇考研积累丰富的考研经验,</a>
                                                                </div>
                                                           		<div>
                                                               		 <a id="url0" class="url" target="_blank" href="#">www.tqkaoyan.com</a>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td id="room1" class="room room1">
                                                        	<div class="titwarp">
                                                          		<a id="tit0" class="tit" target="_blank" href="#">u盘定制</a>
                                                            </div>
                                                      		<div class="cntwarp">
                                                            	<a id="icon0" target="_blank" href="#">
                                                                	<img class="icon" src="<%=basePath %>login/skin/img/0f000KibjIbWNwLlW_YO4f.jpg" />
                                                                </a>
                                                            	<div>
                                                               		 <a id="cnt0" class="cnt" target="_blank" href="#">太奇考研积累丰富的考研经验,</a>
                                                                </div>
                                                           		<div>
                                                               		 <a id="url0" class="url" target="_blank" href="#">www.tqkaoyan.com</a>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td id="room2" class="room room2">
                                                        	<div class="titwarp">
                                                          		<a id="tit0" class="tit" target="_blank" href="#">u盘定制</a>
                                                            </div>
                                                      		<div class="cntwarp">
                                                            	<a id="icon0" target="_blank" href="#">
                                                                	<img class="icon" src="<%=basePath %>login/skin/img/0f000KLx1U0a8Vked9V_Of.jpg" />
                                                                </a>
                                                            	<div>
                                                               		 <a id="cnt0" class="cnt" target="_blank" href="#">太奇考研积累丰富的考研经验,</a>
                                                                </div>
                                                           		<div>
                                                               		 <a id="url0" class="url" target="_blank" href="#">www.tqkaoyan.com</a>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                           		<div class="pcb">
                                	<div class="t_fsz">
                                    	<table cellspacing="0" cellpadding="0">
                                        	<tbody>
                                            	<tr>
                                                	<td id="postmessage_1995" class="t_f">
                                                        　　有一个很普通的高中，一天转来了一男孩，高大帅气，一身帅气打扮，从他身上总流露出一种高贵的气质。一夜之间，他就出了名，天天收到情书，礼物，经常被女生"不小心"撞一下几乎是常事。　　
                                                        <br/>
                                                        <br/>
                                                        　　男孩却一直没有接受任何女生。不是她们不够优秀，只是对她们没有任何感觉。直到有一天，男孩看到一个可爱女孩后，他清晰的记得看到女孩的那一刻他的心跳的有多快。之后，男孩拜托朋友和女孩说了男孩准备追她，女孩听到这个消息，先是一愣，随后就说；"我不答应！"便转身走掉了。之后男孩打听到女孩曾经受过伤害，她曾经很用心的对待一个男生，可是那个男生只把她当玩具，所以她不敢轻易接受感情了，她只是怕再受伤，何况男孩那么优秀，女孩觉得男孩一定不会对她真心的。
                                                        <br/>
                                                        <br/>
                                                        　　原来女孩受过伤，男孩在心里发誓，他一定会好好爱女生的，不让她受一点伤。第二天，男孩就昭告天下他喜欢女孩，这件事又一次轰动了学校。男孩每天都会去找女孩，陪她写作业，帮她打饭，送她去宿舍，下雨天帮他打伞，自己却淋湿，他从来不叫女孩的名字，一直都叫她"小傻瓜"因为男孩说叫"小傻瓜"才会更亲切...渐渐的，女孩相信了男孩是真心喜欢她的了。
                                                        <br/>
                                                        <br/>
                                                        　　当天天夜晚，在送女孩去宿舍的小树林走道上，男孩再一次对女孩表白："小傻瓜，我喜欢你，真的好喜欢好喜欢，当我女朋友好不好？这么长时间了，难道你就真的还看不出来我真的喜欢你吗？我保证我一定不会让你受伤的，我一辈子都会好好的呵护你。小傻瓜，我会好好疼你的，相信我，好吗？"女孩害羞的低下头："嗯"男孩低下头吻了女孩，女孩紧紧的闭上了眼睛。好长一段时间，两个人成了学校里人人羡慕的一对，女孩觉得自己就像是灰姑娘，终于找到了自己的王子。她每天都过得好开心好幸福。
                                                        <br/>
                                                        <br/>
                                                        　　在他们庆祝恋爱半年的那天晚上下暴雨，两人回不了宿舍，被迫在外面的宾馆住一晚，当晚两人唱着歌跳着舞，情到浓时，男孩把女孩拉上床，俩人现出了各自的第一次，因为他们都相信对方是可以付托终身的，还好男孩是事先发现了宾馆那的抽屉里有一个诺丝避孕套，而且还没过期，正好在今晚能派上用场了。
                                                        <br/>
                                                        <br/>
                                                        　　可是好景不长，，女孩发现男孩这几天对她越来越冷谈了，很少来找她，就连电话信息都很少了。女孩慌了，她觉得自己的幸福好像快溜走了。终于，女孩忍不住去了男孩的教室找他了。女孩去的时候男孩趴在桌上睡觉，女孩很生气，男孩宁愿睡觉也不愿意理她，同桌看到女孩，推了推男孩，男孩抬头看到女孩，慵懒的起身从座位上走出教室来到女孩面前，女孩抬头问男孩："老公，你为什么不理我了啊？你是不是不要我了啊？"男孩冷漠的眼眸划过一丝悲伤，随即又马上被冷漠所代替，他低下头看着女孩，看着女孩，说："是，所以你以后别再来找我了！我们结束了！"
                                                        <br/>
                                                        <br/>
                                                        　　这些话如同晴天霹雳，使得女孩猛的一怔，眼泪马上就决堤而下，她拉住男孩的手；"老公，你骗我的对不对？你说过会一辈子都呵护我的啊，你说过不会让我受伤的，不是吗？！你说过我是你的小傻瓜，你会好好疼小傻瓜的啊！你怎么可能会忘了这些啊？老公，你一定是骗我的对吧？"
                                                        <br/>
                                                        <br/>
                                                        　　男孩别过脸不看女孩，他闭上眼睛，狠狠地甩开了女孩的手，力道之大，以至于女孩跌倒在地。他对女孩说："我说的还不够清楚吗？！我不要你了！不喜欢你了！以后不要再来找我了！"四周围满了看笑话的人，大家都对男孩的反应吓了一跳。
                                                        <br/>
                                                        <br/>
                                                        　　女孩伤心欲绝，但她抬起来脸，看着男孩问；"为什么？"男孩一手搂住旁边一个漂亮女生的肩膀："这就是理由"漂亮女生可能没想到男孩会喜欢上她，她一开始愣了一下，随后回过神，故意往男生身上靠了靠。
                                                        <br/>
                                                        <br/>
                                                        　　女孩看着这一幕，心痛得快不能呼吸。她捂住胸口，是吗？原来一切都是骗人的，他也只是玩玩我的而已…既然这样，我又何必像个像个小丑一样，让所有人笑话呢？可是怎么办，我的心，好痛…女孩擦干眼泪，平静的对男孩说了句："我知道了，以后我不会来烦你"说完便转身离开了。
                                                        <br/>
                                                        <br/>
                                                        　　男孩没有看到女孩转身的那一刻，她哭得有多悲伤。同样，女孩也没有看到，她转身后，男孩一脸厌恶的推开漂亮女生后回到座位上继续睡觉，没有人看到，男孩趴到桌上的那一刻，他的眼眶红了。男孩再也忍不住了，他的心痛得快死，就连呼吸都变得有刺痛感，他真的不想伤害她的，他给她的承诺他也从来没有忘记过，他也想实现这些承诺啊！他也是真的爱他的小傻瓜的啊，他也好想好想疼她一辈子的啊，可是自从接到医院那张癌症晚期的单子后这一切就不可能了…亲爱的小傻瓜，我可爱的老婆，以后没有了我在身边，你一个人也要开开心心的活下去，老公我会在天堂爱你。老婆，原谅老公的自私，我宁愿伤害你，也不能让你看着我死……
                                                        <br/>
                                                        <br/>
                                                    </td>
                                                </tr>
                                           		<tr>
                                                	<td class="plc plm">
                                                    	<div id="p_btn" class="mtw mbm cl">
                                                        	<div class="tshare cl">
                                                            	<strong>分享到:</strong>
                                                                <a id="k_qqshare" title="QQ空间" onclick="postToQzone();" href="javascript:void(0);">
                                                                    <i>
                                                                   		 <img alt="QQ空间" src="<%=basePath %>login/skin/img/qzone.gif" />
                                                                    	 QQ空间
                                                                    </i>
                                                                </a>
                                                          		<a id="k_weiboshare" title="腾讯微博" onclick="postToWb();" href="javascript:void(0)">
                                                                    <i>
                                                                        <img alt="腾讯微博" src="<%=basePath %>login/skin/img/weibo.png" />
                                                                        腾讯微博
                                                                    </i>
                                                                </a>
                                                           		<a id="k_pengyoushare" title="腾讯朋友" onclick="postToPengyou();" href="javascript:void(0);">
                                                                    <i>
                                                                        <img alt="腾讯朋友" src="<%=basePath %>login/skin/img/pengyou.png">
                                                                        腾讯朋友
                                                                    </i>
                                                                </a>
                                                            </div>
                                                       		<a id="k_relay" onmouseover="" onclick="" href="#">
                                                                <i>
                                                                    <img alt="转播" src="<%=basePath %>login/skin/img/rt.png">
                                                                    转播
                                                                    <span id="relaynumber">0</span>
                                                                </i>
                                                            </a>
                                                       		<a id="k_collect" onmouseover="" onclick="" href="#">
                                                                <i>
                                                                <img alt="分享" src="<%=basePath %>login/skin/img/collection.png">
                                                                淘帖
                                                                <span id="collectionnumber">0</span>
                                                                </i>
                                                            </a>
                                                       		<a id="k_share" onmouseover="" onclick="" href="#">
                                                                <i>
                                                                <img alt="分享" src="<%=basePath %>login/skin/img/oshr.png" />
                                                                分享
                                                                <span id="sharenumber">0</span>
                                                                </i>
                                                            </a>
                                                      		<a id="k_favorite" onmouseover="" onclick="" href="#">
                                                                <i>
                                                                <img alt="收藏" src="<%=basePath %>login/skin/img/fav.gif" />
                                                                收藏
                                                                <span id="favoritenumber">0</span>
                                                                </i>
                                                            </a>
                                                        </div>
                                                    	
                                                        
                                                        
                                                        
                                                        
                                                        
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
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
