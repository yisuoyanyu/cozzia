<%@ page import="easepal.util.LangUtil" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<form id="pagerForm" method="post" action="/cozzia/module!list.do">
	<input type="hidden" name="status" value="${param.status}">
	<input type = "hidden" name="keywords" value="${param.keywords}" />
	<input type="hidden" name="pageNum" value="1" />
	<input type="hidden" name="numPerPage" value="${model.numPerPage}" />
	<input type="hidden" name="orderField" value="${param.orderField}" />
</form>


<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="/cozzia/module!list.do" method="post">
	<div class="searchBar">
		<div class="subBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit"><%=LangUtil.get("search")%></button></div></div></li>
				<li><a class="button" href="demo_page6.html" target="dialog" mask="true" title="<%=LangUtil.get("query_box")%>"><span><%=LangUtil.get("advanced_search")%></span></a></li>
			</ul>
		</div>
	</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="/cozzia/module!show_add.do" target="navTab"><span><%=LangUtil.get("add")%></span></a></li>
			<li><a class="delete" href="/cozzia/module!delete.do?id={id_module}" target="ajaxTodo" title="<%=LangUtil.get("sure_to_drop")%>"><span><%=LangUtil.get("drop")%></span></a></li>
			<li><a class="edit" href="/cozzia/module!show_update.do?id={id_module}" target="navTab"><span><%=LangUtil.get("edit")%></span></a></li>
			<li class="line">line</li>
			<li><a class="icon" href="../../jui/demo/common/dwz-team.xls" target="dwzExport" targetType="navTab" title="<%=LangUtil.get("leading_out_it")%>"><span><%=LangUtil.get("leading_out_excel")%></span></a></li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="80"><%=LangUtil.get("module_id")%></th>
				<th width="120"><%=LangUtil.get("module_name")%></th>
				<th width="80"><%=LangUtil.get("sort")%></th>
				<th width="100"><%=LangUtil.get("status")%></th>
				<th width="150"><%=LangUtil.get("remarks")%></th>
			</tr>
		</thead>
		<tbody>
        <s:iterator value="#request.list.rows">
            <tr target="id_module" rel=<s:property value="moduleId"/>>
            <td width="80" align="left"><s:property value="moduleId"/></td>
            <td width="120" align="left"><s:property value="moduleName"/></td>
            <td width="80" align="left"><s:property value="orders"/></td>
            <td width="100" align="left"><s:property value="status"/></td>
            <td width="150" align="left"><s:property value="remark"/></td>
            </tr>
        </s:iterator>
		</tbody>
	</table>
    <div class="panelBar">
        <div class="pages">
            <span><%=LangUtil.get("display")%></span>
            <select class="combox" name="numPerPage" onchange="navTabPageBreak({numPerPage:this.value})">
                <option value="1">1</option>
                <option value="50">50</option>
                <option value="100">100</option>
                <option value="200">200</option>
            </select>
            <span>条，共${list.total}条</span>
        </div>
        <div class="pagination" targetType="navTab" totalCount=${list.total} numPerPage="${list.numPerPage}" pageNumShown="10" currentPage="${list.pageNum}"></div>
    </div>
</div>
