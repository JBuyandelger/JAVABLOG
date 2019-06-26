<%@ page contentType="text/html; charset=UTF-8"%>

<div class="container mt-5" style="max-width: 500px;">
	<div class="d-flex justify-content-between mb-5">
		<h1>Ангилал</h1>
		<button class="btn btn-primary" onclick="showSHINEForm();">Шинэ</button>
	</div>

	<div id="list"></div>

	<script>
			
 		function loadList(){
 			$.get("/admin/category/list").done(function(data) {
 				$('#list').html(data);
 			});	
 		}
 		
 		loadList(); 	
		
		function showSHINEForm(){
			$('#exampleModal').modal('show');
			
			$.ajax({url : "/admin/category/new"}).done(function(data) {
				$('#modalNew').html(data);
			});
		}
		
		function showEditForm(id){
			$('#exampleModal').modal('show');
			
			$.ajax({url : "/admin/category/edit?id=" + id}).done(function(data) {
				$('#modalNew').html(data);
			});
		}
		
		function deleteCategory(id){
			if (confirm('Устгах уу?')) {
				$.post('/admin/category/delete/'+id).done(function(){
					loadList();			
				});	
			} 			
		}
	</script>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm" role="document" id="modalNew">

		</div>
	</div>

</div>