<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div class="pageContent">
	<form method="post" action="../../jui/demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="56">
			<p>
				<label>Accountname：</label>
				<input name="uaname" type="text" size="30"  value="12334@qq.com" alt="请输入新的Accountname"/>
			</p>
			<p>
				<label>Firstname：</label>
				<input name="ufname" type="text" size="30"  value="John" alt="请输入新的Firstname"/>
			</p>
			<p>
				<label>Lastname</label>
				<input name="ulname" type="text" size="30"  value="Wilson" alt="请输入新的Lastname"/>
			</p>
			
			<p>
				<label>新密码：</label>
				<input name="pass1" type="password" size="30"   alt="请输入新的密码"/>
			</p>
			<p>
				<label>确认密码：</label>
				<input name="pass2" type="password" size="30"   alt="请再次输入密码"/>
			</p>
		</div>
		<div class="formBar">
			<ul>
				<!--<li><a class="buttonActive" href="javascript:;"><span>保存</span></a></li>-->
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">确认修改</button></div></div></li>
				<li>
					<div class="button"><div class="buttonContent"><button type="button" class="close">取消修改</button></div></div>
				</li>
			</ul>
		</div>
	</form>
</div>
