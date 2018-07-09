<%@ page import="easepal.util.LangUtil" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div class="pageContent">
	<form method="post" action="/cozzia/module!add.do" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="56">
			<p>
				<label><%=LangUtil.get("module_name")%></label>
				<input name="name" type="text" size="30"  alt="<%=LangUtil.get("enter_module_name")%>"/>
			</p>
			<p>
				<label><%=LangUtil.get("sort")%></label>
				<input type="text"   name="sort" class="digits" ><%=LangUtil.get("order_ASC")%>
			</p>
			<p>
				<label><%=LangUtil.get("status")%></label>
                <input type="radio" name="status" value="1" checked="checked" /><%=LangUtil.get("permit")%>
                <input type="radio" name="status" value="0" /><%=LangUtil.get("refuse")%>
            </p>
			<p>
				<label><%=LangUtil.get("remarks")%></label>
				<textarea style="width:140px;height:120px" name="remark">

             </textarea>
			</p>
		</div>
		<div class="formBar">
			<ul>
				<!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit"><%=LangUtil.get("is_submit")%></button></div></div></li>
				<li>
					<div class="button"><div class="buttonContent"><button type="button" class="close"><%=LangUtil.get("is_cancel")%></button></div></div>
				</li>
			</ul>
		</div>
	</form>
</div>
