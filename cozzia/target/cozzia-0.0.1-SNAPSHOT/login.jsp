<%--

  User: 郭清泉
  Date: 2015/3/26
  Time: 12:26
  des:　登录
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>COZZIA MASSAGE Administrator's Control Panel</title>
    <script src="jui/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript">
        if(top!=this) {
            top.location=this.location;
        }
    </script>
    <style type="text/css">
        body{margin:0;padding:0;font-size:12px;background:url(jsp/img/bg.jpg) top repeat-x;}
        td{font-size: 12px; }
        .login_info,.login_info2 {
            color: red;
        }
        .input{width:150px;height:17px;border-top:1px solid #404040;border-left:1px solid #404040;border-right:1px solid #D4D0C8;border-bottom:1px solid #D4D0C8;}
    </style>

    <script type="text/javascript">
        $(function() {
            $("#username").focus();
            $("#username").keydown(function(event) {
                if (event.keyCode == 13) {
                    login();
                }
            });
            $("#password").keydown(function(event) {
                if (event.keyCode == 13) {
                    login();
                }
            });
            $("#btnLogin").click(function(){
               login();
            });
        });

        //登录
        function login() {
            var errorMsg = "";
            var loginName = document.getElementById("username");
            var password = document.getElementById("password");
            if (!loginName.value) {
                errorMsg += "Login name is required!";
            }
            if (!password.value) {
                errorMsg += "Password is required!";
            }
            if (errorMsg != "") {
                $(".login_info").html(errorMsg);
                $(".login_info").show();
            } else {
                //$(".login_info").show();
                $.ajax({
                    type: "post",
                    dataType: "json",
                    url: "${pageContext.request.contextPath}/login!login.do",
                    data: "loginName=" + loginName.value + "&password=" + encodeURIComponent(password.value) ,
                    beforeSend: function () {
                        $("#btnLogin").attr("disabled", true);
                        $(".login_info2").show();
                        $(".login_info").hide();
                        $(".login_info2").html("&nbsp;&nbsp;正在验证...");
                    },
                    error: function (responseText, textStatus, xmlHttpRequest) {
                        $("#btnLogin").attr("disabled", false);
                        $(".login_info2").hide();
                        $(".login_info").html(responseText);
                        $(".login_info").show();
                    },
                    success: function (d) {
                        if (d != null) {
                            if (d.success) {
                                $(".login_info2").html("Successful，Going to control panel...");
                                window.location.href = "jsp/index/index.jsp";
                            } else {
                                $(".login_info").html(d.msg);
                                $(".login_info").show();
                                $(".login_info2").hide();
                                $("#btnLogin").attr("disabled", false);
                            }
                        } else {
                            $(".login_info").html("null");
                            $(".login_info").show();
                            $(".login_info2").hide();
                            $("#btnLogin").attr("disabled", false);
                        }
                    }
                });
            }
        }
    </script>
</head>
<body>
<form id="jvForm" method="post">
    <table width="750" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td height="200">&nbsp;</td>
        </tr>
        <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="423" height="280" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td><img src="jsp/img/ltop.jpg" /></td>
                        </tr>
                        <tr>
                            <td><img src="jsp/img/llogo.jpg" /></td>
                        </tr>
                    </table></td>
                    <td width="40" align="center" valign="bottom"><img src="jsp/img/line.jpg" width="23" height="232" /></td>
                    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td height="90" align="center" valign="bottom"></td>
                        </tr>
                        <tr>
                            <td>
                                <div>
                                    <div class="login_info" style="display:none;"></div>
                                    <div class="login_info2" style="display:none;"></div>
                                </div>
                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="5">
                                    <tr>
                                        <td width="91" height="40" align="right"><strong> LOGIN NAME：</strong></td>
                                        <td width="211"><input type="input" id="username" name="username" vld="{required:true}" maxlength="100" class="input"/></td>
                                    </tr>
                                    <tr>
                                        <td height="40" align="right"><strong>PASSWORD：</strong></td>
                                        <td><input name="password" type="password" id="password" maxlength="32" vld="{required:true}" class="input"/></td>
                                    </tr>
                                    <tr>
                                        <td height="40" colspan="2" align="center">
                                            <input type="button" style="cursor: pointer"  id="btnLogin" src="jsp/img/login.jpg"  value="SUBMIT"  />
                                            &nbsp; &nbsp;

                                            <input type="reset" style="cursor: pointer"  src="jsp/img/login.jpg"  value="RESET"  />

                                              </td>
                                    </tr>
                                </table></td>
                        </tr>
                    </table></td>
                </tr>
            </table></td>
        </tr>
    </table>
</form>

</body>
</html>
