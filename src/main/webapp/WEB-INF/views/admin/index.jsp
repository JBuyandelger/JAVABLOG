<%@ page contentType="text/html; charset=UTF-8"%>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<div class="container">
	<h1 type="button" class="btn btn-primary">Ангилaл</h1>
	<table>
		<tr>
			<h> Нэр
			</th>
			<div>
				<h1 class="btn">asdasd</h1>
				Засах
			</div>
		</tr>
		<tr>
			<td class="btn">Улс төр</td>
			<td>
				<button type="button" class="btn btn-primary">Засах</button>
			</td>
		</tr>
		<tr>
			<td>Нийгэм</td>
			<td>
				<button type="button" class="btn btn-primary">Засах</button>
			</td>
		</tr>
		<tr>
			<td>Эдийн засаг</td>
			<td>
				<button type="button" class="btn btn-primary">Засах</button>
			</td>
		</tr>
	</table>
	<!-- Button trigger modal -->
	

	
	<div id="list"></div>
	<script>
		$.ajax({
			url : "/admin/category/list"
		}).done(function(data) {
			$('#list').html(data);
		});

		function showContent() {
			console.log("content is showing");
		}
		
		function showEditForm(id){
			$('#exampleModal').modal('show');
			
			$.ajax({url : "/admin/category/edit?id="+id}).done(function(data) {
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
