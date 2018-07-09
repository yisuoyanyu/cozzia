<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<form id="pagerForm" method="post" action="#rel#">
	<input type="hidden" name="pageNum" value="1" />
	<input type="hidden" name="numPerPage" value="${model.numPerPage}" />
	<input type="hidden" name="orderField" value="${param.orderField}" />
	<input type="hidden" name="orderDirection" value="${param.orderDirection}" />
</form>

<div class="pageHeader">
	<form rel="pagerForm" onsubmit="return navTabSearch(this);" action="w_removeSelected.html" method="post">
	<div class="searchBar">
		
		
		<div class="subBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><label>产品序列号:</label><input type="text" name="search"><button type="submit">检索</button></div></div></li>
				<li><a class="button" href="demo_page6.html" target="dialog" mask="true" title="查询框"><span>高级检索</span></a></li>
			</ul>
		</div>
	</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li class="line">line</li>
			<li><a class="icon" href="../../jui/demo/common/dwz-team.xls" target="dwzExport" targetType="navTab" title="实要导出这些记录吗?"><span>导出EXCEL</span></a></li>
		</ul>
	</div>
	<table class="table" width="1200" layoutH="138">
		<thead>
			<tr>
				
				<th width="120" >产品序列号</th>
				<th width="80" >错误代码</th>
				<th width="90" >用户名</th>
				<th width="60" align="center" >上传时间</th>
				<th width="90" >来源</th>
				<th width="70">操作</th>
			</tr>
		</thead>
		<tbody>
			<tr target="sid_user" rel="1">
				
				<td>我的反馈信息</td>
				<td>3212.09</td>
				<td>巽楚</td>
				<td>2015-03-23 12:20:02</td>
				<td>Android平板</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					
				</td>
			</tr>
			<tr target="sid_user" rel="2">
				
				<td>我的反馈信息</td>
				<td>3212.09</td>
				<td>巽楚</td>
				<td>2015-03-23 12:20:02</td>
				<td>Android平板</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					
				</td>
			</tr>
			<tr target="sid_user" rel="3">
				
				<td>我的反馈信息</td>
				<td>3212.09</td>
				<td>巽楚</td>
				<td>2015-03-23 12:20:02</td>
				<td>Android平板</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					
				</td>
			</tr>
			<tr target="sid_user" rel="4">
				
				<td>我的反馈信息</td>
				<td>3212.09</td>
				<td>巽楚</td>
				<td>2015-03-23 12:20:02</td>
				<td>Android平板</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					
				</td>
			</tr>
			<tr target="sid_user" rel="5">
				
				<td>我的反馈信息</td>
				<td>3212.09</td>
				<td>巽楚</td>
				<td>2015-03-23 12:20:02</td>
				<td>Android平板</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					
				</td>
			</tr>
			<tr target="sid_user" rel="6">
				
				<td>我的反馈信息</td>
				<td>3212.09</td>
				<td>巽楚</td>
				<td>2015-03-23 12:20:02</td>
				<td>Android平板</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					
				</td>
			</tr>
			<tr target="sid_user" rel="7">
				
				<td>我的反馈信息</td>
				<td>3212.09</td>
				<td>巽楚</td>
				<td>2015-03-23 12:20:02</td>
				<td>Android平板</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					
				</td>
			</tr>
			<tr target="sid_user" rel="8">
				
				<td>我的反馈信息</td>
				<td>3212.09</td>
				<td>巽楚</td>
				<td>2015-03-23 12:20:02</td>
				<td>Android平板</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					
				</td>
			</tr>
			<tr target="sid_user" rel="9">
				
				<td>我的反馈信息</td>
				<td>3212.09</td>
				<td>巽楚</td>
				<td>2015-03-23 12:20:02</td>
				<td>Android平板</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					
				</td>
			</tr>
			<tr target="sid_user" rel="10">
				
				<td>我的反馈信息</td>
				<td>3212.09</td>
				<td>巽楚</td>
				<td>2015-03-23 12:20:02</td>
				<td>Android平板</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					
				</td>
			</tr>
			<tr target="sid_user" rel="11">
				
				<td>我的反馈信息</td>
				<td>3212.09</td>
				<td>巽楚</td>
				<td>2015-03-23 12:20:02</td>
				<td>Android平板</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					
				</td>
			</tr>
			<tr target="sid_user" rel="12">
				
				<td>我的反馈信息</td>
				<td>3212.09</td>
				<td>巽楚</td>
				<td>2015-03-23 12:20:02</td>
				<td>Android平板</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					
				</td>
			</tr>
			<tr target="sid_user" rel="13">
				
				<td>我的反馈信息</td>
				<td>3212.09</td>
				<td>巽楚</td>
				<td>2015-03-23 12:20:02</td>
				<td>Android平板</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					
				</td>
			</tr>
			<tr target="sid_user" rel="14">
				
				<td>我的反馈信息</td>
				<td>3212.09</td>
				<td>巽楚</td>
				<td>2015-03-23 12:20:02</td>
				<td>Android平板</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					
				</td>
			</tr>
			<tr target="sid_user" rel="15">
				
				<td>我的反馈信息</td>
				<td>3212.09</td>
				<td>巽楚</td>
				<td>2015-03-23 12:20:02</td>
				<td>Android平板</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					
				</td>
			</tr>
			<tr target="sid_user" rel="16">
				
				<td>我的反馈信息</td>
				<td>3212.09</td>
				<td>巽楚</td>
				<td>2015-03-23 12:20:02</td>
				<td>Android平板</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					
				</td>
			</tr>
			<tr target="sid_user" rel="17">
				
				<td>我的反馈信息</td>
				<td>3212.09</td>
				<td>巽楚</td>
				<td>2015-03-23 12:20:02</td>
				<td>Android平板</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					
				</td>
			</tr>
			<tr target="sid_user" rel="18">
				
				<td>我的反馈信息</td>
				<td>3212.09</td>
				<td>巽楚</td>
				<td>2015-03-23 12:20:02</td>
				<td>Android平板</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					
				</td>
			</tr>
			<tr target="sid_user" rel="19">
				
				<td>我的反馈信息</td>
				<td>3212.09</td>
				<td>巽楚</td>
				<td>2015-03-23 12:20:02</td>
				<td>Android平板</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					
				</td>
			</tr>
			<tr target="sid_user" rel="20">
				
				<td>我的反馈信息</td>
				<td>3212.09</td>
				<td>巽楚</td>
				<td>2015-03-23 12:20:02</td>
				<td>Android平板</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					
				</td>
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
