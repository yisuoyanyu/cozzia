<%@ page import="easepal.util.LangUtil" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html >

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>COZZIA MASSAGE Administrator's Control Panel</title>

    <link href="../../jui/themes/default/style.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../../jui/themes/css/core.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../../jui/themes/css/print.css" rel="stylesheet" type="text/css" media="print"/>
    <link href="../../jui/uploadify/css/uploadify.css" rel="stylesheet" type="text/css" media="screen"/>
    <!--[if IE]>
    <link href="../../jui/themes/css/ieHack.css" rel="stylesheet" type="text/css" media="screen"/>
    <![endif]-->

    <!--[if lte IE 9]>
    <script src="../../jui/js/speedup.js" type="text/javascript"></script>
    <![endif]-->

    <script src="../../jui/js/jquery-1.7.2.js" type="text/javascript"></script>
    <script src="../../jui/js/jquery.cookie.js" type="text/javascript"></script>
    <script src="../../jui/js/jquery.validate.js" type="text/javascript"></script>
    <script src="../../jui/js/jquery.bgiframe.js" type="text/javascript"></script>
    <script src="../../jui/xheditor/xheditor-1.2.1.min.js" type="text/javascript"></script>
    <script src="../../jui/xheditor/xheditor_lang/zh-cn.js" type="text/javascript"></script>
    <script src="../../jui/uploadify/scripts/jquery.uploadify.js" type="text/javascript"></script>

    <!-- svg图表  supports Firefox 3.0+, Safari 3.0+, Chrome 5.0+, Opera 9.5+ and Internet Explorer 6.0+ -->
    <script type="text/javascript" src="../../jui/chart/raphael.js"></script>
    <script type="text/javascript" src="../../jui/chart/g.raphael.js"></script>
    <script type="text/javascript" src="../../jui/chart/g.bar.js"></script>
    <script type="text/javascript" src="../../jui/chart/g.line.js"></script>
    <script type="text/javascript" src="../../jui/chart/g.pie.js"></script>
    <script type="text/javascript" src="../../jui/chart/g.dot.js"></script>
    <!--
    <script src="js/dwz.core.js" type="text/javascript"></script>
    <script src="js/dwz.util.date.js" type="text/javascript"></script>
    <script src="js/dwz.validate.method.js" type="text/javascript"></script>
    <script src="js/dwz.barDrag.js" type="text/javascript"></script>
    <script src="js/dwz.drag.js" type="text/javascript"></script>
    <script src="js/dwz.tree.js" type="text/javascript"></script>
    <script src="js/dwz.accordion.js" type="text/javascript"></script>
    <script src="js/dwz.ui.js" type="text/javascript"></script>
    <script src="js/dwz.theme.js" type="text/javascript"></script>
    <script src="js/dwz.switchEnv.js" type="text/javascript"></script>
    <script src="js/dwz.alertMsg.js" type="text/javascript"></script>
    <script src="js/dwz.contextmenu.js" type="text/javascript"></script>
    <script src="js/dwz.navTab.js" type="text/javascript"></script>
    <script src="js/dwz.tab.js" type="text/javascript"></script>
    <script src="js/dwz.resize.js" type="text/javascript"></script>
    <script src="js/dwz.dialog.js" type="text/javascript"></script>
    <script src="js/dwz.dialogDrag.js" type="text/javascript"></script>
    <script src="js/dwz.sortDrag.js" type="text/javascript"></script>
    <script src="js/dwz.cssTable.js" type="text/javascript"></script>
    <script src="js/dwz.stable.js" type="text/javascript"></script>
    <script src="js/dwz.taskBar.js" type="text/javascript"></script>
    <script src="js/dwz.ajax.js" type="text/javascript"></script>
    <script src="js/dwz.pagination.js" type="text/javascript"></script>
    <script src="js/dwz.database.js" type="text/javascript"></script>
    <script src="js/dwz.datepicker.js" type="text/javascript"></script>
    <script src="js/dwz.effects.js" type="text/javascript"></script>
    <script src="js/dwz.panel.js" type="text/javascript"></script>
    <script src="js/dwz.checkbox.js" type="text/javascript"></script>
    <script src="js/dwz.history.js" type="text/javascript"></script>
    <script src="js/dwz.combox.js" type="text/javascript"></script>
    <script src="js/dwz.print.js" type="text/javascript"></script>-->


    <script src="../../jui/bin/dwz.min.js" type="text/javascript"></script>

    <script src="../../jui/js/dwz.regional.zh.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(function () {
            DWZ.init("dwz.frag.xml", {
                loginUrl: "login_dialog.html", loginTitle: "登录",	// 弹出登录对话框
//		loginUrl:"login.html",	// 跳到登录页面
                statusCode: {ok: 200, error: 300, timeout: 301}, //【可选】
                pageInfo: {
                    pageNum: "pageNum",
                    numPerPage: "numPerPage",
                    orderField: "orderField",
                    orderDirection: "orderDirection"
                }, //【可选】
                keys: {statusCode: "statusCode", message: "message"}, //【可选】
                ui: {hideMode: 'offsets'}, //【可选】hideMode:navTab组件切换的隐藏方式，支持的值有’display’，’offsets’负数偏移位置的值，默认值为’display’
                debug: false,	// 调试模式 【true|false】
                callback: function () {
                    initEnv();
                    $("#themeList").theme({themeBase: "../../jui/themes"}); // themeBase 相对于index页面的主题base路径
                }
            });
        });

    </script>
</head>

<body scroll="no">
<div id="layout">
    <div id="header">
        <div class="headerNav">
            <a class="logo" href="#"><%=LangUtil.get("logo")%>
            </a>
            <ul class="nav">
                <li><a href="changepwd.html" target="dialog" width="600"><%=LangUtil.get("set")%>
                </a></li>
                <li><a href="login.html"><%=LangUtil.get("quit")%>
                </a></li>
            </ul>
            <ul class="themeList" id="themeList">
                <li theme="default">
                    <div class="selected"><%=LangUtil.get("blue")%>
                    </div>
                </li>
                <li theme="green">
                    <div><%=LangUtil.get("green")%>
                    </div>
                </li>
                <!--<li theme="red"><div>红色</div></li>-->
                <li theme="purple">
                    <div><%=LangUtil.get("purple")%>
                    </div>
                </li>
                <li theme="silver">
                    <div><%=LangUtil.get("silvery")%>
                    </div>
                </li>
                <li theme="azure">
                    <div><%=LangUtil.get("azure")%>
                    </div>
                </li>
            </ul>
        </div>
        <!-- navMenu -->
    </div>

    <div id="leftside">
        <div id="sidebar_s">
            <div class="collapse">
                <div class="toggleCollapse">
                    <div></div>
                </div>
            </div>
        </div>
        <div id="sidebar">
            <div class="toggleCollapse"><h2><%=LangUtil.get("admin_menu")%>
            </h2>

                <div><%=LangUtil.get("contract")%>
                </div>
            </div>
            <div class="accordion" fillSpace="sidebar">
                <div class="accordionHeader">
                    <h2><span>Folder</span>sys</h2>
                </div>
                <div class="accordionContent">
                    <ul class="tree">
                        <li><a href="/cozzia/module!list.do" target="navTab"
                               rel="modulelist"><%=LangUtil.get("module_management")%>
                        </a></li>
                        <li><a href="/cozzia/category!list.do" target="navTab"
                               rel="modetypelist"><%=LangUtil.get("sort_management")%>
                        </a></li>
                        <li><a href="../management/app/list.jsp" target="navTab"
                               rel="applist"><%=LangUtil.get("app_management")%>
                        </a></li>
                        <li><a href="/cozzia/admin!list.do" target="navTab"
                               rel="managerlist"><%=LangUtil.get("manager_management")%>
                        </a></li>
                        <li><a href="../management/log/list.jsp" target="navTab"
                               rel="loglist"><%=LangUtil.get("log_management")%>
                        </a></li>
                    </ul>
                </div>

                <div class="accordionHeader">
                    <h2><span>Folder</span>account</h2>
                </div>
                <div class="accordionContent">
                    <ul class="tree">
                        <li><a href="../management/user/list.jsp" target="navTab"
                               rel="userlist"><%=LangUtil.get("user_management")%>
                        </a></li>
                        <li><a href="../management/member/list.jsp" target="navTab"
                               rel="memberlist"><%=LangUtil.get("member_management")%>
                        </a></li>
                    </ul>
                </div>

                <div class="accordionHeader">
                    <h2><span>Folder</span>articles</h2>
                </div>
                <div class="accordionContent">
                    <ul class="tree">
                        <li><a href="../management/information/list.jsp" target="navTab"
                               rel="massagemodelist"><%=LangUtil.get("information_management")%>
                        </a></li>
                    </ul>
                </div>

                <div class="accordionHeader">
                    <h2><span>Folder</span>store</h2>
                </div>
                <div class="accordionContent">
                    <ul class="tree">
                        <li><a href="../management/goods/list.jsp" target="navTab"
                               rel="dlg_page"><%=LangUtil.get("goods_management")%>
                        </a></li>
                        <li><a href="../management/brand/list.jsp" target="navTab"
                               rel="brandmanger"><%=LangUtil.get("brand_management")%>
                        </a></li>
                    </ul>
                </div>

                <div class="accordionHeader">
                    <h2><span>Folder</span>massage</h2>
                </div>
                <div class="accordionContent">
                    <ul class="tree">
                        <li><a href="../management/massagemode/list.jsp" target="navTab"
                               rel="massagemodelist"><%=LangUtil.get("massage_mode_management")%>
                        </a></li>
                    </ul>
                </div>

                <div class="accordionHeader">
                    <h2><span>Folder</span>report</h2>
                </div>
                <div class="accordionContent">
                    <ul class="tree">
                        <li><a href="../management/forms/piechart.jsp" target="navTab"
                               rel="piechart"><%=LangUtil.get("form_show")%>
                        </a></li>
                        <li><a href="../management/faultquery/list.jsp" target="navTab"
                               rel="faultquerylist"><%=LangUtil.get("fault_code_query")%>
                        </a></li>
                    </ul>
                </div>

                <div class="accordionHeader">
                    <h2><span>Folder</span>feedback</h2>
                </div>
                <div class="accordionContent">
                    <ul class="tree">
                        <li><a href="../management/feedback/list.jsp" target="navTab"
                               rel="massagemodelist"><%=LangUtil.get("feedback")%>
                        </a></li>
                    </ul>
                </div>

            </div>
        </div>
    </div>
    <div id="container">
        <div id="navTab" class="tabsPage">
            <div class="tabsPageHeader">
                <div class="tabsPageHeaderContent"><!-- 显示左右控制时添加 class="tabsPageHeaderMargin" -->
                    <ul class="navTab-tab">
                        <li tabid="main" class="main"><a href="javascript:;"><span><span
                                class="home_icon"><%=LangUtil.get("home_page")%></span></span></a></li>
                    </ul>
                </div>
                <div class="tabsLeft">left</div>
                <!-- 禁用只需要添加一个样式 class="tabsLeft tabsLeftDisabled" -->
                <div class="tabsRight">right</div>
                <!-- 禁用只需要添加一个样式 class="tabsRight tabsRightDisabled" -->
                <div class="tabsMore">more</div>
            </div>
            <ul class="tabsMoreList">
                <li><a href="javascript:;">HOME</a></li>
            </ul>
            <div class="navTab-panel tabsPageContent layoutBox">
                <div class="page unitBox">
                    <div class="accountInfo">
                        <div class="alertInfo">
                            <p></p>

                            <p><%=LangUtil.get("developer_list")%>
                            </p>
                        </div>
                        <p><span>COZZIA MASSAGE Administrator's Control Panel</span></p>

                    </div>
                    <div class="pageFormContent" layoutH="80">

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="footer">Copyright &copy; 2015 <a href="demo_page2.html" target="dialog">EASEPAL TEAM</a></div>
</body>
</html>