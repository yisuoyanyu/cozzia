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
	
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<li><a class="add" href="../management/goods/add.jsp" target="navTab"><span>添加</span></a></li>
			<li class="line">line</li>
			<li><a class="icon" href="../../jui/demo/common/dwz-team.xls" target="dwzExport" targetType="navTab" title="实要导出这些记录吗?"><span>导出EXCEL</span></a></li>
		</ul>
	</div>
	<table class="table" width="1200" layoutH="138">
		<thead>
			<tr>
				
				<th width="120" >品牌</th>
				<th width="80" >分类</th>
				<th width="90" >商品名称</th>
				<th width="60" >型号</th>
				<th width="60" >价格</th>
				<th width="70">操作</th>
			</tr>
		</thead>
		<tbody>
			<tr target="sid_user" rel="1">
				
				<td>COZZIA</td>
				<td>分类1</td>
				<td>按摩椅</td>
				<td>7558</td>
				<td>$5210</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					<a title="修改" target="navTab" href="../management/goods/update.jsp?id=xxx" class="btnEdit">修改</a>
				</td>
			</tr>
			<tr target="sid_user" rel="2">
				
				<td>COZZIA</td>
				<td>分类1</td>
				<td>按摩椅</td>
				<td>7558</td>
				<td>$5210</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					<a title="修改" target="navTab" href="../management/goods/update.jsp?id=xxx" class="btnEdit">修改</a>
				</td>
			</tr>
			<tr target="sid_user" rel="3">
				
				<td>COZZIA</td>
				<td>分类1</td>
				<td>按摩椅</td>
				<td>7558</td>
				<td>$5210</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					<a title="修改" target="navTab" href="../management/goods/update.jsp?id=xxx" class="btnEdit">修改</a>
				</td>
			</tr>
			<tr target="sid_user" rel="4">
				
				<td>COZZIA</td>
				<td>分类1</td>
				<td>按摩椅</td>
				<td>7558</td>
				<td>$5210</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					<a title="修改" target="navTab" href="../management/goods/update.jsp?id=xxx" class="btnEdit">修改</a>
				</td>
			</tr>
			<tr target="sid_user" rel="5">
				
				<td>COZZIA</td>
				<td>分类1</td>
				<td>按摩椅</td>
				<td>7558</td>
				<td>$5210</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					<a title="修改" target="navTab" href="../management/goods/update.jsp?id=xxx" class="btnEdit">修改</a>
				</td>
			</tr>
			<tr target="sid_user" rel="6">
				
				<td>COZZIA</td>
				<td>分类1</td>
				<td>按摩椅</td>
				<td>7558</td>
				<td>$5210</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					<a title="修改" target="navTab" href="../management/goods/update.jsp?id=xxx" class="btnEdit">修改</a>
				</td>
			</tr>
			<tr target="sid_user" rel="7">
				
				<td>COZZIA</td>
				<td>分类1</td>
				<td>按摩椅</td>
				<td>7558</td>
				<td>$5210</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					<a title="修改" target="navTab" href="../management/goods/update.jsp?id=xxx" class="btnEdit">修改</a>
				</td>
			</tr>
			<tr target="sid_user" rel="8">
				
				<td>COZZIA</td>
				<td>分类1</td>
				<td>按摩椅</td>
				<td>7558</td>
				<td>$5210</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					<a title="修改" target="navTab" href="../management/goods/update.jsp?id=xxx" class="btnEdit">修改</a>
				</td>
			</tr>
			<tr target="sid_user" rel="9">
				
				<td>COZZIA</td>
				<td>分类1</td>
				<td>按摩椅</td>
				<td>7558</td>
				<td>$5210</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					<a title="修改" target="navTab" href="../management/goods/update.jsp?id=xxx" class="btnEdit">修改</a>
				</td>
			</tr>
			<tr target="sid_user" rel="10">
				
				<td>COZZIA</td>
				<td>分类1</td>
				<td>按摩椅</td>
				<td>7558</td>
				<td>$5210</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					<a title="修改" target="navTab" href="../management/goods/update.jsp?id=xxx" class="btnEdit">修改</a>
				</td>
			</tr>
			<tr target="sid_user" rel="11">
				
				<td>COZZIA</td>
				<td>分类1</td>
				<td>按摩椅</td>
				<td>7558</td>
				<td>$5210</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					<a title="修改" target="navTab" href="../management/goods/update.jsp?id=xxx" class="btnEdit">修改</a>
				</td>
			</tr>
			<tr target="sid_user" rel="12">
				
				<td>COZZIA</td>
				<td>分类1</td>
				<td>按摩椅</td>
				<td>7558</td>
				<td>$5210</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					<a title="修改" target="navTab" href="../management/goods/update.jsp?id=xxx" class="btnEdit">修改</a>
				</td>
			</tr>
			<tr target="sid_user" rel="13">
				
				<td>COZZIA</td>
				<td>分类1</td>
				<td>按摩椅</td>
				<td>7558</td>
				<td>$5210</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					<a title="修改" target="navTab" href="../management/goods/update.jsp?id=xxx" class="btnEdit">修改</a>
				</td>
			</tr>
			<tr target="sid_user" rel="14">
				
				<td>COZZIA</td>
				<td>分类1</td>
				<td>按摩椅</td>
				<td>7558</td>
				<td>$5210</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					<a title="修改" target="navTab" href="../management/goods/update.jsp?id=xxx" class="btnEdit">修改</a>
				</td>
			</tr>
			<tr target="sid_user" rel="15">
				
				<td>COZZIA</td>
				<td>分类1</td>
				<td>按摩椅</td>
				<td>7558</td>
				<td>$5210</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					<a title="修改" target="navTab" href="../management/goods/update.jsp?id=xxx" class="btnEdit">修改</a>
				</td>
			</tr>
			<tr target="sid_user" rel="16">
				
				<td>COZZIA</td>
				<td>分类1</td>
				<td>按摩椅</td>
				<td>7558</td>
				<td>$5210</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					<a title="修改" target="navTab" href="../management/goods/update.jsp?id=xxx" class="btnEdit">修改</a>
				</td>
			</tr>
			<tr target="sid_user" rel="17">
				
				<td>COZZIA</td>
				<td>分类1</td>
				<td>按摩椅</td>
				<td>7558</td>
				<td>$5210</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					<a title="修改" target="navTab" href="../management/goods/update.jsp?id=xxx" class="btnEdit">修改</a>
				</td>
			</tr>
			<tr target="sid_user" rel="18">
				
				<td>COZZIA</td>
				<td>分类1</td>
				<td>按摩椅</td>
				<td>7558</td>
				<td>$5210</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					<a title="修改" target="navTab" href="../management/goods/update.jsp?id=xxx" class="btnEdit">修改</a>
				</td>
			</tr>
			<tr target="sid_user" rel="19">
				
				<td>COZZIA</td>
				<td>分类1</td>
				<td>按摩椅</td>
				<td>7558</td>
				<td>$5210</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					<a title="修改" target="navTab" href="../management/goods/update.jsp?id=xxx" class="btnEdit">修改</a>
				</td>
			</tr>
			<tr target="sid_user" rel="20">
				
				<td>COZZIA</td>
				<td>分类1</td>
				<td>按摩椅</td>
				<td>7558</td>
				<td>$5210</td>
				<td>
					<a title="删除" target="ajaxTodo" href="demo/common/ajaxDone.html?id=xxx" class="btnDel">删除</a>
					<a title="修改" target="navTab" href="../management/goods/update.jsp?id=xxx" class="btnEdit">修改</a>
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
