<%@ page import="easepal.util.LangUtil" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form id="pagerForm" method="post" action="/cozzia/category!list.do">
	<input type="hidden" name="pageNum" value="1" />
	<input type="hidden" name="numPerPage" value="${model.numPerPage}" />
	<input type="hidden" name="orderField" value="${param.orderField}" />
	<input type="hidden" name="orderDirection" value="${param.orderDirection}" />
</form>

<div class="pageHeader">
	<form rel="pagerForm" onsubmit="return navTabSearch(this);" action="/cozzia/category!list.do" method="post">
	<div class="searchBar">
		
		
		<div class="subBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">检索</button></div></div></li>
				<li><a class="button" href="demo_page6.html" target="dialog" mask="true" title="查询框"><span>高级检索</span></a></li>
			</ul>
		</div>
	</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="/cozzia/category!show_add.do" target="navTab"><span>添加</span></a></li>
			<li class="line">line</li>
			<li><a class="icon" href="../../jui/demo/common/dwz-team.xls" target="dwzExport" targetType="navTab" title="实要导出这些记录吗?"><span>导出EXCEL</span></a></li>
		</ul>
	</div>
	<table class="table" width="1200" layoutH="138">
		<thead>
			<tr>
				
				<th width="120" orderField="accountNo" class="asc">序号</th>
				<th width="80" orderField="accountType">类型名称</th>
				<th width="90" orderField="accountCert">排序</th>
				<th width="60" align="center" orderField="accountLevel">状态</th>
				<th width="70">操作</th>
			</tr>
		</thead>
		<tbody>
        <s:iterator value="#request.list.rows">
            <tr target="id_category" rel=<s:property value="cateId"/>>
            <td width="120" align="left"><s:property value="cateId"/></td>
            <td  width="80" align="left"><s:property value="cateName"/></td>
            <td width="90" align="left"><s:property value="orders"/></td>
            <td width="60" align="left"><s:property value="status"/></td>
            <td width="70">
                <a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
                <a title="编辑" target="navTab" href="../management/modetype/update.jsp?id=xxx" class="btnEdit">编辑</a>
            </td>
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
