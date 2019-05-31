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
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#exampleModal" data-whatever="@mdo">Open modal
		for @mdo</button>
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#exampleModal" data-whatever="@fat">Open modal
		for @fat</button>
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#exampleModal" data-whatever="@getbootstrap">Open
		modal for @getbootstrap</button>

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">New message</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="recipient-name" class="col-form-label"
								placeholder="First name">Ангиллын нэр:</label> <input
								type="text" class="form-control" id="recipient-name">
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Хаах</button>
					<button type="button" class="btn btn-primary">Хадгалах</button>
				</div>
			</div>
		</div>
	</div>
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
		function showEditForm(){
			$('#exampleModal').modal('show');
			
			$.ajax({url : "/admin/category/edit"}).done(function(data) {
				$('#modalNew').html(data);
			});
	</script>

	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm" role="document" id="modalNew">

		</div>
	</div>

</div>
