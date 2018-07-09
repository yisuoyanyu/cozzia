<%@ page import="easepal.util.LangUtil" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<script language="javascript" src="../../jui/js/dwz.ajax.js" charset="utf-8"></script>
<div class="pageContent">
    <form method="post" action="/cozzia/admin!add.do" class="pageForm required-validate"
          onsubmit="return validateCallback(this, navTabAjaxDone);">
        <div class="pageFormContent" layoutH="56">
            <p>
                <label><%=LangUtil.get("login_name")%>
                </label>
                <input name="name" class="required" type="text" size="30" alt="<%=LangUtil.get("enter_login_name")%>"/>
            </p>

            <p>
                <label><%=LangUtil.get("enter_password")%>
                </label>
                <input name="passone" class="required" type="password" size="30" id="pw1"/>
            </p>

            <p>
                <label><%=LangUtil.get("enter_password_once")%>
                </label>
                <input name="passtwo" class="required" type="password" size="30" id="pw2" onkeyup="validate()"/><span
                    id="cue"/>
            </p>

            <p>
                <label><%=LangUtil.get("email")%>
                </label>
                <input type="text" name="email">
            </p>

            <p>
                <label><%=LangUtil.get("real_name")%>
                </label>
                <input type="text" name="realname" class="required">
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
