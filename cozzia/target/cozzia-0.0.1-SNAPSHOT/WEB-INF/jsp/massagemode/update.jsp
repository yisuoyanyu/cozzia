<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div class="pageContent">
	<form method="post" action="../../jui/demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="56">
		
		<p>
				<label>所属类型：</label>
				<select name="mtype" class="required combox">
					<option value="">请选择</option>
					<option value="分类一">分类一</option>
					<option value="分类二" selected>分类二</option>
				</select>
			</p>
			<p>
				<label>模式名称：</label>
				<input name="mname" class="required" type="text" size="30" value="小力揉捏" alt="请输入模式名称"/>
			</p>
			<p>
				<label>按摩指令：</label>
				<input name="moders" type="text"  class="required" value="Ctrl+C">
			</p>
		<p>
				<label>排序:</label>
				<input type="text"  value="0" name="sort" class="digits" >按数字从小到大排
			</p>
			<p>
				<label>状态:</label>
				<input type="checkbox"  name="mstate" >是否启用
			</p>
			<p>
				<label>按摩知识：</label>
				<textarea style="width:140px;height:120px" name="mknow">按摩有益于健康

             </textarea>
			</p>
			<p>
				<label>说明：</label>
				<textarea style="width:140px;height:120px" name="mexplain">暂无说明

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
