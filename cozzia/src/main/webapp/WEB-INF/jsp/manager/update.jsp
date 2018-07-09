<%@ page import="easepal.util.LangUtil" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<script language="javascript" src="../../jui/js/dwz.ajax.js" charset="utf-8"></script>
<div class="pageContent">
    <form method="post" action="/cozzia/admin!update.do" class="pageForm required-validate"
          onsubmit="return validateCallback(this, navTabAjaxDone);">
        <div class="pageFormContent" layoutH="56">

            <p>
                <label><%=LangUtil.get("manager_id")%>
                </label>
                <input name="sn" type="text" size="30" value="${list.id}" readonly="readonly"/>
            </p>

            <p>
                <label><%=LangUtil.get("login_name")%>
                </label>
                <input name="name" class="required" type="text" size="30" value="${list.loginName}"
                       alt="<%=LangUtil.get("enter_login_name")%>"/>
            </p>

            <p>
                <label><%=LangUtil.get("enter_new_password")%>
                </label>
                <input name="passone" type="password" size="30" alt="<%=LangUtil.get("enter_password")%>" id="pw1"/>
            </p>

            <p>
                <label><%=LangUtil.get("enter_new_password_once")%>
                </label>
                <input name="passtwo" type="password" size="30" alt="<%=LangUtil.get("enter_password_once")%>%" id="pw2"
                       onkeyup="validate()"/><span id="cue"/>
            </p>

            <p>
                <label><%=LangUtil.get("email")%>
                </label>
                <input type="text" readonly="readonly" name="email" value="${list.email}">
            </p>

            <p>
                <label><%=LangUtil.get("real_name")%>
                </label>
                <input name="realname" type="text" size="30" value="${list.fullName}"/>
            </p>

        </div>
        <div class="formBar">
            <ul>
                <!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
                <li>
                    <div class="buttonActive">
                        <div class="buttonContent">
                            <button type="submit" id="submit"><%=LangUtil.get("is_submit")%>
                            </button>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="button">
                        <div class="buttonContent">
                            <button type="button" class="close"><%=LangUtil.get("is_cancel")%>
                            </button>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </form>
</div>
