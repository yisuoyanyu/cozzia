<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div class="pageContent">
	<form method="post" action="../../jui/demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="56">
			<p>
				<label>商品名称：</label>
				<input name="goodsname" type="text" size="30" value="COZZIA" alt="请输入商品名称"/>
			</p>
			<p>
				<label>型号：</label>
				<input name="goodsversion" type="text" size="30" value="7558" alt="请输入商品型号"/>
			</p>
			<p>
				<label>价格：</label>
				<input name="goodsprice" type="text" size="30"  value="$5210" alt="请输入商品价格"/>
			</p>
			
			<p>
				<label>所属品牌：</label>
				<select name="goodsbrand" class="required combox">
					<option value="">请选择</option>
					<option value="COOZIA">COOZIA</option>
					<option value="OGAWA" selected>OGAWA </option>
				</select>
			</p>
			
			<p>
				<label>所属分类：</label>
				<select name="goodsclassify" class="required combox">
					<option value="">请选择</option>
					<option value="分类一">分类一</option>
					<option value="分类二" selected>分类二 </option>
				</select>
			</p>
			
			<p>
				<label>排序:</label>
				<input type="text"  value="0" name="goodssort" class="digits" >
			</p>
			<p>
				<label>状态:</label>
				<input type="checkbox"  name="goodsstate" >是否启用
			</p>
			
			<p>
				<label>颜色：</label>
				<input name="goodscolor" type="text" size="30" value="白,蓝" alt="请输入商品颜色"/>
			</p>		
			<p>
				<label>备注：</label>
				<textarea name = "brandrmarks" style="width:140px;height:60px">暂无任何备注
             </textarea>
			</p>
			<p> <label> </label></P>

<p >
<input id="testFileInput2" type="file" name="image2" 
		uploaderOption="{
			swf:'../../jui/uploadify/scripts/uploadify.swf',
			uploader:'../../jui/demo/common/ajaxDone.html',
			formData:{PHPSESSID:'xxx', ajax:1},
			queueID:'fileQueue',
			buttonImage:'../../jui/uploadify/img/add.jpg',
			buttonClass:'my-uploadify-button',
			width:102,
			auto:false
		}"
	/>
	<input type="image" src="../../jui/uploadify/img/upload.jpg" onclick="$('#testFileInput2').uploadify('upload', '*');"/>
	<input type="image" src="../../jui/uploadify/img/cancel.jpg" onclick="$('#testFileInput2').uploadify('cancel', '*');"/>
	</p>
			
			
			
			<p class="pageContent" style="margin: 0 10px" layoutH="50">
			<input id="testFileInput" type="file" name="image" 
		    uploaderOption="{
			swf:'../../jui/uploadify/scripts/uploadify.swf',
			uploader:'../../jui/demo/common/ajaxDone.html',
			formData:{PHPSESSID:'xxx', ajax:1},
			buttonText:'修改主图',
			fileSizeLimit:'200KB',
			fileTypeDesc:'*.jpg;*.jpeg;*.gif;*.png;',
			fileTypeExts:'*.jpg;*.jpeg;*.gif;*.png;',
			auto:true,
			multi:true,
			onUploadSuccess:uploadifySuccess,
			onQueueComplete:uploadifyQueueComplete
		}"
	/>
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
