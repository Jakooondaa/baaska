<%@ page contentType="text/html; charset=UTF-8"%>

<div class="modal-content">
	<div class="modal-header">
		<h5 class="modal-title" id="exampleModalLabel">Шинэ ангилал</h5>
		<button type="button" class="close" data-dismiss="modal"
			aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
	<div class="modal-body">
		<form id="newForm">
			<div class="form-group">
				<label>Нэр</label> 
				<form:input path="ner" class="form-control" cssErrorClass="form-control is-invalid"/> 
				<form:errors path="ner" class="invalid-feedback"/>			
			
			<div class="form-group">
				<label>Тайлбар</label> 
				<input type="text" name="tailbar" class="form-control" placeholder="Тайлбар..."> 
			</div>
						
		</form>

	</div>
	<div class="modal-footer">
		<button type="button" class="btn btn-secondary" data-dismiss="modal">Болих</button>
		<button type="button" class="btn btn-primary" onclick="sendForm()">Хадгалах</button>
	</div>
</div>

<script>
function sendForm() {
	$.post('/admin/category/save', $('#newForm').serialize()).done(function(data){
		
	//	$('#exampleModal').modal('hide');
	//	loadList();			
	})
}

</script>