<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="ckeditor" uri="http://ckeditor.com"%> --%>
<%-- <%@ taglib prefix="ckfinder" uri="http://cksource.com/ckfinder"%> --%>
<div class="form-group">
	<label for="title">Tiêu đề</label> <input type="text"
		class="form-control" id="title" name="title" value="">
</div>
<div class="form-group">
	<label for="author">Ngày cập nhật</label> <input type="text"
		class="form-control" id="author" name="author" value="20/11/2015"
		disabled="disabled">
</div>
<div class="form-group">
	<label for="content">Nội dung</label>
	<ckeditor:editor editor="editor" basePath="../resources/ckeditor"value=""></ckeditor:editor>
	<ckfinder:setupCKEditor basePath="../resources/ckfinder"editor="editor" />
</div>
<div class="form-group">
	<label for="status">Trạng thái</label> <select class="form-control"
		id="status">
		<option value="false">Đang chờ</option>
		<option value="true">Đã duyệt</option>
	</select>
</div>
<button id="save" class="btn btn-default">Lưu</button>
<span id="message"></span>
<script type="text/javascript">
			  	$('#save').click(function(e) {
			  		var content = CKEDITOR.instances.editor.getData();
			  		var name = $('#title').val();
			  		var status = $('#status').val();
			  		
			  		var object = {ac: "save", name: name, status: status, id:, content: content};
			  		
			  		$.post('infor', object, function(rsp){
						$('#message').html(rsp.message);
					});
			  	});
</script>