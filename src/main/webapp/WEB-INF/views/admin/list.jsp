
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "CCCP" %>
<div class="container border" style="width: 500px;">
	<table class="table container">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Нэр</th>

				<th scope="col">Засах?</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">1</th>
				<td>Улс төр</td>

				<td><button onclick="showEditForm(23);" type="button"
						class="btn btn-primary" data-toggle="modal"
						data-target="#exampleModal" data-whatever="@mdo">Засах</button></td>
			</tr>
			<tr>
				<th scope="row">2</th>
				<td>Эдийн засаг</td>

				<td><button type="button" class="btn btn-primary"
						data-toggle="modal" data-target="#exampleModal"
						onclick="showEditForm(16)">Засах</button></td>
			</tr>
			<tr>
				<th scope="row">3</th>
				<td>Спорт</td>

				<td><button type="button" class="btn btn-primary"
						onclick="showEditForm(17)">Засах</button></td>
			</tr>
		</tbody>
	</table>
</div>
<table class="table table bordered">
	<thead>
		<th>ID code</th>
		<th> НЭР</th>
		<th>ТАЙЛБАР</th>
		<th style="width: 3px"></th>
			<th style="width: 3px"></th>
	</thead>
	
	<tbody>
	 	<CCCP:forEach items = "${Jagsaalt}" var = "Jagsah">
	 	<tr>
	 	     <td>${Jagsah.id }</td>
	 	     <td>${Jagsah.name }</td>
	 	     <td>${Jagsah.description }</td>
	 	     <td><button class="btn btn-light" onclick="showEditForm(${Jagsah.id})">Засах</button></td>
				<td><button class="btn btn-danger" onclick="deleteCategory(${Jagsah.id})">Устгах</button></td>
				</tr>
	 	</CCCP:forEach>	
	</tbody>
</table>
/* ELectron.js JAVAScript React Native - Mobile app IOS android doesnt
matter React - app ??? */
