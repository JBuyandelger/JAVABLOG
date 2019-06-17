<%@ page contentType="text/html; charset=UTF-8"%>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<div class="container">
	<h1 type="button" class="btn btn-primary" onclick = "showSHINEform();">ШИНЭ</h1>
	
	<!-- Button trigger modal -->
	

	
	<div id="list"></div>
	<script>
	 function loadList(){
		$.ajax({
			url : "/admin/category/list"
		}).done(function(data) {
			$('#list').html(data);
		});

		function showContent() {
			console.log("content is showing");
		}
	 }
	 
	 
	 loadList();
	 
	 function showSHINEform(){
		 
	$('#exampleModal').modal('show');
			
			$.ajax({url : "/admin/category/new"}).done(function(data) {
				$('#modalNew').html(data);
				console.log(id);
			});
		 
	 }
		
		function showEditForm(id){
			$('#exampleModal').modal('show');
			
			$.ajax({url : "/admin/category/edit?ID="+id}).done(function(data) {
				$('#modalNew').html(data);
				console.log(id);
			});
		}
	</script>

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm" role="document" id="modalNew">

		</div>
	</div>

</div>
