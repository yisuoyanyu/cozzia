<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div class="pageContent">
	<form method="post" action="../../jui/demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="56">
			<p>
				<label>Email：</label>
				<input name="uemail" type="text" size="30"  value="12334@qq.com" alt="请输入新的Email"/>
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
				<label>电话</label>
				<input name="upho" type="text" size="30"  value="05924568231" alt="请输入新的电话"/>
			</p>
			<p>
				<label>注册来源</label>
				<input name="usource" type="text" size="30"  value="Android pad" alt="请输入新的注册地址"/>
			</p>
			<p>
				<label>用户分类：</label>
				<select name="uclassify" class="required combox">
					<option value="">请选择</option>
					<option value="分类一">分类一</option>
					<option value="分类二" selected>分类二 </option>
					<option value="分类三" selected>分类三 </option>
				</select>
			</p>		
			<p>
				<label>状态:</label>
				<input type="checkbox"  name="ustate" >是否启用
			</p>
			<p>
				<label>选项:</label>
				<input type="checkbox"  name="uoption" >是否统计行为记录
			</p>
						<p>
				<label>注册时间：</label>
				<input name = "registertime"type="text" name="date10" class="date" dateFmt="MM/dd/yyyy HH:mm:ss" readonly="true"/>
				<a class="inputDateButton" href="javascript:;">选择</a>
				<span class="info"></span>
			</p>
			<p>
				<label>最后登录时间：</label>
				<input name = "lastlandtime"type="text" name="date10" class="date" dateFmt="MM/dd/yyyy HH:mm:ss" readonly="true"/>
				<a class="inputDateButton" href="javascript:;">选择</a>
				<span class="info"></span>
			</p>
			
			<p>
				<label>修改密码：</label>
				<input name="pass1" type="password" size="30"   alt="请输入新的密码"/>
			</p>
			<p>
				<label>确认密码：</label>
				<input name="pass2" type="password" size="30"   alt="请再次输入密码"/>
			</p>
			<p>
				<label>备注：</label>
				<textarea name = "uremarks" style="width:140px;height:120px">暂无内容
             </textarea>
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
