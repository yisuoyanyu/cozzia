<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<form id="pagerForm" method="post" action="demo_page1.html">
	<input type="hidden" name="status" value="${param.status}">
	<input type="hidden" name="keywords" value="${param.keywords}" />
	<input type="hidden" name="pageNum" value="1" />
	<input type="hidden" name="numPerPage" value="${model.numPerPage}" />
	<input type="hidden" name="orderField" value="${param.orderField}" />
</form>


<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="demo_page1.html" method="post">
	<div class="searchBar">
		<!--<ul class="searchContent">
			<li>
				<label>我的客户：</label>
				<input type="text"/>
			</li>
			<li>
			<select class="combox" name="province">
				<option value="">所有省市</option>
				<option value="北京">北京</option>
				<option value="上海">上海</option>
				<option value="天津">天津</option>
				<option value="重庆">重庆</option>
				<option value="广东">广东</option>
			</select>
			</li>
		</ul>
		-->
	
		<div class="subBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">检索</button></div></div></li>
				<li><a class="button" href="Mmmsearch.html" target="dialog" mask="true" title="查询框"><span>高级检索</span></a></li>
			</ul>
		</div>
	</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="../management/massagemode/add.jsp" target="navTab"><span>添加</span></a></li>
			<li><a class="delete" href="demo/common/ajaxDone.html?uid={sid_user}" target="ajaxTodo" title="确定要删除吗?"><span>删除</span></a></li>
			<li><a class="edit" href="../management/massagemode/update.jsp?uid={sid_user}" target="navTab"><span>修改</span></a></li>
			<li class="line">line</li>
			<li><a class="icon" href="../../jui/demo/common/dwz-team.xls" target="dwzExport" targetType="navTab" title="实要导出这些记录吗?"><span>导出EXCEL</span></a></li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="80"></th>
				<th width="120">分类</th>
				<th width="180">模式名称</th>
				<th width="100">模式指令</th>
				<th width="150">排序</th>
				<th width="80" align="center">状态</th>
			</tr>
		</thead>
		<tbody>
			<tr target="sid_user" rel="1">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="2">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="3">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="4">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="5">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="6">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="7">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="8">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="9">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="10">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="1">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="2">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="3">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="4">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="5">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="6">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="7">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="8">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="9">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="10">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="1">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			<tr target="sid_user" rel="2">
				<td>COZZIA模式</td>
				<td>1</td>
				<td>小力揉捏</td>
				<td>Ctrl+C</td>
				<td>1</td>
				<td>启用</td>
			</tr>
			
		</tbody>
	</table>
	<div class="panelBar">
		<div class="pages">
			<span>显示</span>
			<select class="combox" name="numPerPage" onchange="navTabPageBreak({numPerPage:this.value})">
				<option value="10">10</option>
				<option value="20">20</option>
				<option value="100">100</option>
				<option value="200">200</option>
			</select>
			<span>条，共${totalCount}条</span>
		</div>
		
		<div class="pagination" targetType="navTab" totalCount="200" numPerPage="20" pageNumShown="1" currentPage="1"></div>

	</div>
</div>
