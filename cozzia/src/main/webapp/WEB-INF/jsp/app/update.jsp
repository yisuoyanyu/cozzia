<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<h2 class="contentTitle">修改APP信息</h2>

<style type="text/css" media="screen">
.my-uploadify-button {
	background:none;
	border: none;
	text-shadow: none;
	border-radius:0;
}

.uploadify:hover .my-uploadify-button {
	background:none;
	border: none;
}

.fileQueue {
	width: 400px;
	height: 150px;
	overflow: auto;
	border: 1px solid #E5E5E5;
	margin-bottom: 10px;
}
</style>

<div class="pageContent" style="margin: 0 10px" layoutH="50">

<div class="pageContent">
	<form method="post" action="../../application/demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" >
			<p>
				<label>APP名称：</label>
				<input name="name" type="text" size="30" class="required"/>
			</p>
			<p>
				<label>APP标识：</label>
				<input name="identification" class="required" type="text" size="30"  />
			</p>
			
			<p>
				<label>版本号</label>
				<input name="version" class="required" type="text" size="30"  />
			</p>
			<p>
				<label>下载地址</label>
				<input name="adr" class="required" type="text" size="30"  />
			</p>
			<p>
				<label>更新内容</label>
				<input type="text"  value="" name="upcontent" class="required">
			</p>
		</div>
		<div class="formBar">
			<ul>
				<!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">修改</button></div></div></li>
				<li>
					<div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div>
				</li>
			</ul>
		</div>
	</form>
</div>
	

</div>