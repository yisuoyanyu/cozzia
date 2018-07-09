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
				<li><a class="button" href="demo_page6.html" target="dialog" mask="true" title="查询框"><span>高级检索</span></a></li>
			</ul>
		</div>
	</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="../management/app/add.jsp" target="navTab"><span>发布新版APP</span></a></li>
			<li><a class="delete" href="../../application/demo/common/ajaxDone.html?uid={sid_user}" target="ajaxTodo" title="确定要删除吗?"><span>删除</span></a></li>
			<li><a class="edit" href="../management/app/update.jsp" target="navTab"><span>修改</span></a></li>
			<li class="line">line</li>
			<li><a class="icon" href="../../jui/demo/common/dwz-team.xls" target="dwzExport" targetType="navTab" title="实要导出这些记录吗?"><span>导出EXCEL</span></a></li>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th width="80"></th>
				<th width="120">ＡＰＰ名称</th>
				<th>ＡＰＰ标示</th>
				<th width="100">ＡＰＰ版本号</th>
				<th width="80" align="center">下载地址</th>
				<th width="80">更新日期</th>
				<th width="150">更新内容</th>
				<th width="80">创建日期</th>
			</tr>
		</thead>
		<tbody>
			<tr target="sid_user" rel="1">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="2">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="3">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="4">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="5">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="6">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="7">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="8">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="9">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="10">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="1">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="2">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="3">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="4">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="5">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="6">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="7">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="8">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="9">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="10">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="1">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="2">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="3">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="4">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="5">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="6">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="7">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="8">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="9">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="10">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="1">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="2">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="3">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="4">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="5">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			<tr target="sid_user" rel="6">
				<td>COZZIA康城</td>
				<td>SV-410 Zero Gravity</td>
				<td>cozzia410</td>
				<td>1.0</td>
				<td>www.baidu.com</td>
				<td>2010-05-21</td>
				<td>增加了揉捏控制</td>
				<td>2009-05-21</td>
			</tr>
			
		</tbody>
	</table>
	<div class="panelBar">
		<div class="pages">
			<span>显示</span>
			<select class="combox" name="numPerPage" onchange="navTabPageBreak({numPerPage:this.value})">
				<option value="20">20</option>
				<option value="50">50</option>
				<option value="100">100</option>
				<option value="200">200</option>
			</select>
			<span>条，共${totalCount}条</span>
		</div>
		
		<div class="pagination" targetType="navTab" totalCount="200" numPerPage="20" pageNumShown="1" currentPage="1"></div>

	</div>
</div>
