<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 孟祥瑞
  Date: 2019/12/26
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>|DEMO_jQuery之家-自由分享jQuery、html5、css3的插件库</title>
    <link rel="stylesheet" type="text/css" href="../css/normalizemanager.css" />
    <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css'>
    <link rel="stylesheet" type="text/css" href="../css/htmleaf.css">
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <style>
        html, body, .page {
            width: 100%;
            height: 100%;
            margin: 0;
            padding: 0;
            -webkit-transition: all .6s cubic-bezier(.5, .2, .2, 1.1);
            -o-transition: all .6s cubic-bezier(.5, .2, .2, 1.1);
            transition: all .6s cubic-bezier(.5, .2, .2, 1.1);
            color: #fff;
            overflow: hidden;
        }

        * {
            font-family: 'open sans', 'lato', 'helvetica', sans-serif;
        }

        .page {
            position: absolute;
        }

        #p1 {
            left: 0;
        }

        #p2, #p3, #p4, #p5 {
            left: 200%;
        }

        #p1 { background: darkslateblue; }
        #p2 { background: tomato; }
        #p3 { background: gold; }
        #p4 { background: deeppink; }
        #p5 { background: #9b59b6; }

        #t2:target #p2,
        #t3:target #p3,
        #t4:target #p4,
        #t5:target #p5 {
            -webkit-transform: translateX(-190%);
            -ms-transform: translateX(-190%);
            -o-transform: translateX(-190%);
            transform: translateX(-190%);
            -webkit-transition-delay: .4s !important;
            -o-transition-delay: .4s !important;
            transition-delay: .4s !important;
        }

        #t2:target #p1,
        #t3:target #p1,
        #t4:target #p1,
        #t5:target #p1{
            background: black;
        }

        #t2:target #p1 .icon,
        #t3:target #p1 .icon,
        #t4:target #p1 .icon,
        #t5:target #p1 .icon {
            -webkit-filter: blur(3px);
            filter: blur(3px);
        }

        .icon {
            color: #fff;
            font-size: 32px;
            display: block;
        }

        ul .icon:hover {
            opacity: 0.5;
        }

        .page .icon .title {
            line-height: 2;
        }

        #t2:target ul .icon,
        #t3:target ul .icon,
        #t4:target ul .icon,
        #t5:target ul .icon{
            -webkit-transform: scale(.6);
            -ms-transform: scale(.6);
            -o-transform: scale(.6);
            transform: scale(.6);
            -webkit-transition-delay: .25s;
            -o-transition-delay: .25s;
            transition-delay: .25s;
        }

        #t2:target #dos,
        #t3:target #tres,
        #t4:target #cuatro,
        #t4:target #cinco {
            -webkit-transform: scale(1.2) !important;
            -moz-transform: scale(1.2) !important;
            -o-transform: scale(1.2) !important;
            transform: scale(1.2) !important;
        }

        ul {
            position: fixed;
            z-index: 1;
            top: 0;
            bottom: 0;
            left: 0;
            margin: auto;
            height: 280px;
            width: 10%;
            padding: 0;
            text-align: center;
        }

        #menu .icon {
            margin: 30px 0;
            -webkit-transition: all .5s ease-out !important;
            -moz-transition: all .5s ease-out !important;
            -o-transition: all .5s ease-out !important;
            transition: all .5s ease-out !important;
        }

        a {
            text-decoration: none;
        }

        .title, .hint {
            display: block;
        }

        .title {
            font-size: 38px;
        }

        .hint {
            font-size: 13px;
        }

        #p4 .hint {
            display: inherit !important;
        }

        .hint a {
            color: yellow;
            -webkit-transition: all 250ms ease-out;
            -moz-transition: all 250ms ease-out;
            -o-transition: all 250ms ease-out;
            transition: all 250ms ease-out;
        }

        .hint a:hover {
            color: #FFF;
        }

        .line-trough {
            text-decoration: line-through;
        }

        .page .icon {
            position: absolute;
            top: 0;
            bottom: 0;
            right: 10%;
            left: 0;
            width: 100%;
            height: 100%;
            margin: auto;
            text-align: center;
            font-size: 80px;
            line-height: 1.3;

            -webkit-transform: translateX(360%);
            -moz-transform: translateX(360%);
            -o-transform: translateX(360%);
            transform: translateX(360%);

            -webkit-transition: all .5s cubic-bezier(.25, 1, .5, 1.25);
            -moz-transition: all .5s cubic-bezier(.25, 1, .5, 1.25);
            -o-transition: all .5s cubic-bezier(.25, 1, .5, 1.25);
            transition: all .5s cubic-bezier(.25, 1, .5, 1.25);
        }

        .page#p1 .icon {
            height: 220px;
        }

        .page#p1 .icon {
            -webkit-transform: translateX(10%) !important;
            -ms-transform: translateX(10%) !important;
            -o-transform: translateX(10%) !important;
            transform: translateX(10%) !important;
        }

        #t2:target .page#p2 .icon,
        #t3:target .page#p3 .icon,
        #t4:target .page#p4 .icon,
        #t5:target .page#p5 .icon {

            -webkit-transform: translateX(0) !important;
            -moz-transform: translateX(0) !important;
            -o-transform: translateX(0) !important;
            transform: translateX(0) !important;
            -webkit-transition-delay: 1s;
            -o-transition-delay: 1s;
            transition-delay: 1s;
        }
    </style>
    <!--[if IE]>

    <![endif]-->
</head>
<body>
    <div class="ct" id="t2">
        <div class="ct" id="t3">

                    <ul id="menu">

                        <a href="#t2"><li class="icon fa fa-car" id="dos"></li></a>
                        <a href="#t3"><li class="icon fa fa-user" id="tres"></li></a>

                    </ul>

                    <div class="page" id="p2">
                            <iframe src="../Manager/userinformation.jsp" name="rightframe"
                                    frameborder="0" height="100%" width="100%" style="float: left" target="_self"
                                    marginwidth="0" marginheight="0"
                                    scrolling="auto"   overflow="hidden">
                            </iframe>
                    </div>
                    <div class="page" id="p3">
                            <iframe src="manager_action!read_car" name="rightframe"
                                    frameborder="0" height="100%" width="100%" style="float: left" target="_self"
                                    marginwidth="0" marginheight="0"
                                    scrolling="auto"   overflow="hidden">

                            </iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>