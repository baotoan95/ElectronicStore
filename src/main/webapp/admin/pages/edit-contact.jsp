<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form>
	<div class="form-group">
		<label for="name">Tên:</label> ${contact.name } <input type="hidden"
			name="id" value="${promotion.id }" />
	</div>
	<div class="form-group">
		<label for="author">Email:</label> ${contact.email }
	</div>
	<div class="form-group">
		<label for="author">Điện thoại:</label> ${contact.phone }
	</div>
	<div class="form-group">
		<label for="author">Ngày nhận:</label> ${contact.sentDate }
	</div>
	<div class="form-group">
		<label for="content">Nội dung</label>
		<textarea rows="5" class="form-control" cols="100" id="content">${contact.content }</textarea>
	</div>
	<button id="save" class="btn btn-default">Lưu</button>
	<span id="message"></span>
</form>