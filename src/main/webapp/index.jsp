<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>小米商城 - 小米10 Pro、Redmi 10X、小米MIX Alpha，小米电视官方网站</title>


    <link rel="icon" href="<%=application.getContextPath()%>/img/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/css/index.css" />
    <script type="text/javascript" src="<%=application.getContextPath()%>/js/jquery-1.11.3.js"></script>
    <script type="text/javascript" src="<%=application.getContextPath()%>/js/bootstrap.js"></script>
    <script type="text/javascript">
        $(function() {
            $("#logo").mouseover(function() {
                $("#logo #mi-home").stop().animate({
                    left: "0px"
                }, 100);
                $("#logo #mi-logo").stop().animate({
                    left: "60px"
                }, 100);
            });
            $("#logo").mouseout(function() {
                $("#logo #mi-home").stop().animate({
                    left: "-60px"
                }, 100);
                $("#logo #mi-logo").stop().animate({
                    left: "0px"
                }, 100);
            });
            $("#head-search-input").focus(function() {
                $("#head-search-input").css("border-color", "#FF6700");
                $("#head-search-button").css("border-color", "#FF6700");
                $("#head-search").removeClass("sch");
            });
            $("#head-search-input").blur(function() {
                $("#head-search-input").css("border-color", "#e0e0e0");
                $("#head-search-button").css("border-color", "#e0e0e0");
                $("#head-search").addClass("sch");
            });
            $("#head #logo img").click(function(){
                window.location.href="https://www.mi.com/";
            });
            $("#category ul li").mouseover(function(){
                var n=$(this).index();
                var t=-(n*42+20);
                $("#category li>div").css("top",t+"px");
            });
            var index=0;
            var lunbo=function(){
                var outdex = index;
                index++;
                if(index>$("#con-body-main-top>img").length-1){
                    index=0;
                }
                var $img = $("#con-body-main-top>img");
                //让上一张淡出 当前消失
                $img.eq(outdex).animate({"opacity":0},1000);
                //让下一张淡入 下一张图片显示
                $img.eq(index).animate({"opacity":1},1000);
                $(".point li").eq(index).addClass("atv").siblings().removeClass("atv");
            }
            var itv=setInterval(lunbo,5000);
            $(".point li").click(function(){
                clearInterval(itv);
                var i=$(this).index();
                if(i!=index){
                    var $img = $("#con-body-main-top>img");
                    //让上一张淡出 当前消失
                    $img.eq(index).animate({"opacity":0},1000);
                    //让下一张淡入 下一张图片显示
                    $img.eq(i).animate({"opacity":1},1000);
                    $(".point li").eq(i).addClass("atv").siblings().removeClass("atv");
                    index=i;
                }
                itv=setInterval(lunbo,5000);
            });
            $("#prve-page").mouseover(function(){
                $("#prve-page img").css("left","0");
            });
            $("#prve-page").mouseout(function(){
                $("#prve-page img").css("left","-83.5px");
            });
            $("#next-page").mouseover(function(){
                $("#next-page img").css("left","-41.5px");
            });
            $("#next-page").mouseout(function(){
                $("#next-page img").css("left","-125px");
            });
            $("#prve-page").click(function(){
                clearInterval(itv);
                var outdex = index;
                index--;
                if(index<0){
                    index=$("#con-body-main-top>img").length-1;
                }
                var $img = $("#con-body-main-top>img");
                //让上一张淡出 当前消失
                $img.eq(outdex).animate({"opacity":0},1000);
                //让下一张淡入 下一张图片显示
                $img.eq(index).animate({"opacity":1},1000);
                $(".point li").eq(index).addClass("atv").siblings().removeClass("atv");
                itv=setInterval(lunbo,5000);
            });
            $("#next-page").click(function(){
                clearInterval(itv);
                lunbo();
                itv=setInterval(lunbo,5000);
            });
        });
    </script>
</head>
<body>
<div id="con">
    <div id="nav">
        <div id="nav-main">
            <div id="nav-left">
                <ul>
                    <li style="margin-left: 0;">
                        <a href="#">小米商城</a>
                    </li>
                    <li>|</li>
                    <li>
                        <a href="#">MIUI</a>
                    </li>
                    <li>|</li>
                    <li>
                        <a href="#">IoT</a>
                    </li>
                    <li>|</li>
                    <li>
                        <a href="#">云服务</a>
                    </li>
                    <li>|</li>
                    <li>
                        <a href="#">金融</a>
                    </li>
                    <li>|</li>
                    <li>
                        <a href="#">有品</a>
                    </li>
                    <li>|</li>
                    <li>
                        <a href="#">小爱开放平台</a>
                    </li>
                    <li>|</li>
                    <li>
                        <a href="#">企业团购</a>
                    </li>
                    <li>|</li>
                    <li>
                        <a href="#">资质证照</a>
                    </li>
                    <li>|</li>
                    <li>
                        <a href="#">协议规则</a>
                    </li>
                    <li>|</li>
                    <li style="position: relative;">
                        <a id="download-a" href="#">下载app
                            <span id="download-sj" class="glyphicon glyphicon-triangle-top"></span>
                            <div id="download">
                                <img src="img/download.png" width="90px" height="90px" />
                                <span>小米商城APP</span>
                            </div>
                        </a>
                    </li>
                    <li>|</li>
                    <li>
                        <a href="#">智能生活</a>
                    </li>
                    <li>|</li>
                    <li>
                        <a href="#">Select&nbsp;Location</a>
                    </li>
                </ul>
            </div>
            <div id="nav-cart">
                <a href="#" id="cart">
                    <span class="glyphicon glyphicon-shopping-cart"></span>
                    <span>购物车&nbsp;&nbsp;(0)</span>
                    <div id="cart-main">购物车中还没有商品，赶紧选购吧！</div>
                </a>
            </div>
            <div id="nav-right">
                <ul>
                    <li>
                        <a href="#">登录</a>
                    </li>
                    <li>|</li>
                    <li>
                        <a href="#">注册</a>
                    </li>
                    <li>|</li>
                    <li>
                        <a href="#">消息通知</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div id="head">
        <div id="logo">
            <img id="mi-logo" src="img/mi-logo.png" />
            <img id="mi-home" src="img/mi-home.png" />
        </div>
        <div id="head-nav">
            <ul>
                <li>
                    <a href="javascipt:">小米手机</a>
                </li>
                <li>
                    <a href="javascipt:">Redmi&nbsp;红米</a>
                </li>
                <li>
                    <a href="javascipt:">电视</a>
                </li>
                <li>
                    <a href="javascipt:">笔记本</a>
                </li>
                <li>
                    <a href="javascipt:">家电</a>
                </li>
                <li>
                    <a href="javascipt:">路由器</a>
                </li>
                <li>
                    <a href="javascipt:">智能硬件</a>
                </li>
                <li>
                    <a href="javascipt:">服务</a>
                </li>
                <li>
                    <a href="javascipt:">社区</a>
                </li>
            </ul>
        </div>
        <div id="head-search" class="sch">
            <input id="head-search-input" placeholder="小米手机" type="text" />
            <div id="head-search-button"><span class="glyphicon glyphicon-search"></span></div>
        </div>
    </div>
    <div id="con-body">
        <div id="con-body-main">
            <div id="con-body-main-top">
                <img class="lunbo" src="img/lb1.jpg"  style="opacity: 1;"/>
                <img class="lunbo" src="img/lb2.jpg" />
                <img class="lunbo" src="img/lb3.jpg" />
                <img class="lunbo" src="img/lb4.jpg" />
                <img class="lunbo" src="img/lb5.jpg" />
                <img class="lunbo" src="img/lb6.jpg" />
                <div class="point">
                    <ul>
                        <li class="atv"></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                </div>
                <div id="category">
                    <ul>
                        <li><a href="#">手机&nbsp;电话卡<span class="glyphicon glyphicon-chevron-right"></span></a>
                            <div></div>
                        </li>
                        <li><a href="#">电视&nbsp;盒子<span class="glyphicon glyphicon-chevron-right"></span></a>
                            <div></div>
                        </li>
                        <li><a href="#">笔记本&nbsp;显示器<span class="glyphicon glyphicon-chevron-right"></span></a>
                            <div></div>
                        </li>
                        <li><a href="#">家电&nbsp;插线板<span class="glyphicon glyphicon-chevron-right"></span></a>
                            <div></div>
                        </li>
                        <li><a href="#">出行&nbsp;穿戴<span class="glyphicon glyphicon-chevron-right"></span></a>
                            <div></div>
                        </li>
                        <li><a href="#">智能&nbsp;路由器<span class="glyphicon glyphicon-chevron-right"></span></a>
                            <div></div>
                        </li>
                        <li><a href="#">电源&nbsp;配件<span class="glyphicon glyphicon-chevron-right"></span></a>
                            <div></div>
                        </li>
                        <li><a href="#">健康&nbsp;儿童<span class="glyphicon glyphicon-chevron-right"></span></a>
                            <div></div>
                        </li>
                        <li><a href="#">耳机&nbsp;音箱<span class="glyphicon glyphicon-chevron-right"></span></a>
                            <div></div>
                        </li>
                        <li><a href="#">生活&nbsp;箱包<span class="glyphicon glyphicon-chevron-right"></span></a>
                            <div></div>
                        </li>
                    </ul>
                </div>
                <div id="prve-page">
                    <img src="img/icon-slides.png" />
                </div>
                <div id="next-page">
                    <img src="img/icon-slides.png" />
                </div>
            </div>
            <div id="con-body-main-bottom">
                <div id="bottom-left">
                    <ul>
                        <li><a href="#"><img src="img/bl1.png" />小米秒杀</a></li>
                        <li><a href="#"><img src="img/bl2.png" />企业团购</a></li>
                        <li><a href="#"><img src="img/bl3.png" />F码通道</a></li>
                        <li><a href="#"><img src="img/bl4.png" />米粉卡</a></li>
                        <li><a href="#"><img src="img/bl5.png" />以旧换新</a></li>
                        <li><a href="#"><img src="img/bl6.png" />话费充值</a></li>
                    </ul>
                </div>
                <div id="bottom-right">
                    <ul>
                        <li style="margin-left: 0px;"><a href="#"><img src="img/cb1.jpg" /></a></li>
                        <li><a href="#"><img src="img/cb2.jpg" /></a></li>
                        <li><a href="#"><img src="img/cb3.jpg" /></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!--
    作者：offline
    时间：2020-09-14
    描述：以下为轮播图以下
-->
<div class="page-main">
    <div class="page-con">
        <div id="page-con-top">
            小米闪购
        </div>
        <div id="advert1">
            <a href="#"><img src="img/advert1.jpg" /></a>
        </div>
        <div id="page-con-phone">
            <div id="phone-head">
                <h2 id="phone-title-left">手机</h2>
                <div id="phone-title-right">

                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
