<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div class="pageContent">
	<form method="post" action="../../jui/demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="56">
			<p>
				<label>分类名称：</label>
				<input name="sname" type="text" size="30"  value="类型一" alt="请输入分类名称"/>
			</p>
			<p>
				<label>所属模块：</label>
				<select name="mmodule" class="required combox">
					<option value="">请选择</option>
					<option value="模块一">模块一</option>
					<option value="模块二" selected>模块二 </option>
					<option value="模块三" selected>模块三 </option>
				</select>
			</p>
			<p>
				<label>上级分类：</label>
				<select name="mji" class="required combox">
					<option value="">请选择</option>
					<option value="一级分类">一级分类</option>
					<option value="二级分类" selected>二级分类 </option>
					<option value="三级分类" selected>三级分类 </option>
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
				<textarea style="width:140px;height:120px" >暂无备注
             </textarea>
			</p>
		</div>
		<div class="formBar">
			<ul>
				<!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存修改</button></div></div></li>
				<li>
					<div class="button"><div class="buttonContent"><button type="button" class="close">取消修改</button></div></div>
				</li>
			</ul>
		</div>
	</form>
</div>
