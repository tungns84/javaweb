<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<ol class="breadcrumb">
			<li><a href="/home">Home</a></li>
			<li><a href="#">User Tools</a></li>
		</ol>
	</div>
</div>
<div class="row">
	<div class="col-xs-12 col-sm-8">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-user-md"></i> <span>User form</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a> <a class="expand-link"> <i class="fa fa-expand"></i>
					</a> <a class="close-link"> <i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content">
				<form:form id="defaultForm" action="addUser" method="post"
					modelAttribute="user" class="form-horizontal">
					<fieldset>
						<legend>User Informations</legend>
						<div class="form-group">
							<label class="col-sm-3 control-label">Username</label>
							<div class="col-sm-5">
								<form:input path="name" type="text" class="form-control"
									name="username" />
								<form:errors path="name" cssClass="error" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Email address</label>
							<div class="col-sm-5">
								<form:input path="email" type="text" class="form-control"
									name="email" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Phone number</label>
							<div class="col-sm-5">
								<form:input path="phoneNumber" type="text" class="form-control"
									name="phoneNumber" />
							</div>
						</div>
						<div class="form-group has-feedback">
							<label class="col-sm-3 control-label">Birthday</label>
							<div class="col-sm-5">
								<input type="text" id="input_date" class="form-control"
									placeholder="BOD"> <span
									class="fa fa-calendar txt-danger form-control-feedback"></span>
							</div>
						</div>
					</fieldset>
					<fieldset>
						<legend>Identical validator</legend>
						<div class="form-group">
							<label class="col-sm-3 control-label">Password</label>
							<div class="col-sm-5">
								<form:input path="password" type="password" class="form-control"
									name="password" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Retype password</label>
							<div class="col-sm-5">
								<input path="confirmPassword" type="password"
									class="form-control" name="confirmPassword" />
							</div>
						</div>
					</fieldset>
					<div class="form-group">
						<div class="col-sm-9 col-sm-offset-3">
							<button type="submit" class="btn btn-primary">
								<i class="fa fa-save"></i> Save
							</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-users"></i> <span>User List</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
					</a> <a class="expand-link"> <i class="fa fa-expand"></i>
					</a> <a class="close-link"> <i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content no-padding">
				<table
					class="table table-bordered table-striped table-hover table-heading table-datatable"
					id="datatable-1">
					<thead>
						<tr>
							<th>#</th>
							<th>Name</th>
							<th>Email</th>
							<th>Phone Number</th>
						</tr>
					</thead>
					<tbody>
						<!-- Start: list_row -->
						<c:forEach items="${users}" var="user">
							<tr>
								<td>${user.id}</td>
								<td>${user.name}</td>
								<td><a href="mailto:#">${user.email}</a></td>
								<td>${user.phoneNumber}</td>
							</tr>
						</c:forEach>
						<!-- End: list_row -->
					</tbody>
					<tfoot>
						<tr>
							<th>#</th>
							<th>Name</th>
							<th>Email</th>
							<th>Phone Number</th>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	// Run Datables plugin and create 3 variants of settings
	function AllTables() {
		TestTable1();
		LoadSelect2Script(MakeSelect2);
	}
	function MakeSelect2() {
		$('select').select2();
		$('.dataTables_filter').each(
				function() {
					$(this).find('label input[type=text]').attr('placeholder',
							'Search');
				});
	}
	$(document).ready(function() {
		// Load Datatables and run plugin on tables 
		$('#input_date').datepicker({
			setDate : new Date(),
			format : 'dd/mm/yyyy'
		});
		LoadDataTablesScripts(AllTables);
		LoadBootstrapValidatorScript(DemoFormValidator);
		// Add Drag-n-Drop feature
		WinMove();
	});
</script>