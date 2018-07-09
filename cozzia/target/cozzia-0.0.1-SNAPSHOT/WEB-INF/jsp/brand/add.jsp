<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div class="pageContent">
	<form method="post" action="../../jui/demo/common/ajaxDone.html" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone);">
		<div class="pageFormContent" layoutH="56">
			<p>
				<label>品牌名称：</label>
				<input name="brandname" type="text" size="30"  alt="请输入品牌名称"/>
			</p>
			<p>
				<label>排序:</label>
				<input type="text"  value="0" name="brandsort" class="digits" >
			</p>
			<p>
				<label>状态:</label>
				<input type="checkbox"  name="brandstate" >是否启用
			</p>
			<p>
				<label>备注：</label>
				<textarea name = "brandrmarks" style="width:140px;height:120px">暂无任何备注
             </textarea>
			</p>
			
			
			
			<p class="pageContent" style="margin: 0 10px" layoutH="50">
			<input id="testFileInput" type="file" name="image" 
		    uploaderOption="{
			swf:'../../jui/uploadify/scripts/uploadify.swf',
			uploader:'../../jui/demo/common/ajaxDone.html',
			formData:{PHPSESSID:'xxx', ajax:1},
			buttonText:'上传Logo',
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
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">保存</button></div></div></li>
				<li>
					<div class="button"><div class="buttonContent"><button type="button" class="close">取消</button></div></div>
				</li>
			</ul>
		</div>
	</form>
</div>
