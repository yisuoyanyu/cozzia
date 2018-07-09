<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="pageContent">
	<form method="post" action="../../jui/demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="56">
			<p>
				<label>分类名称：</label>
				<input name="sname" type="text" size="30"  alt="请输入分类名称"/>
			</p>
			<p>
				<label>所属模块：</label>
				<select name="mmodule" class="required combox">

				</select>
			</p>
			<p>
				<label>上级分类：</label>
				<select name="mji" class="required combox">
                    <c:forEach items="${c_list}" var="cla">
                        <option value="${cla.cateName}">
                                ${cla.cateName}
                        </option>
                    </c:forEach>
				</select>
			</p>
			<p>
				<label>排序:</label>
				<input type="text"  value="0" name="sort" class="digits" >按数字从小到大排
			</p>
			<p>
				<label>状态:</label>
				<input type="checkbox"  name="mustate" >是否启用
			</p>
			<p>
				<label>备注：</label>
				<textarea style="width:140px;height:120px">

             </textarea>
			</p>
		</div>
		<div class="formBar">
			<ul>
				<!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				<li>
					<div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div>
				</li>
			</ul>
		</div>
	</form>
</div>
