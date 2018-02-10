<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<ol class="breadcrumb">
			<li><a href="index.html">Home</a></li>
			<li><a href="#">Dashboard</a></li>
		</ol>
	</div>
</div>
<div class="row">
<div class="col-xs-12 col-sm-8">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-search"></i>
					<span>User form</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link">
						<i class="fa fa-chevron-up"></i>
					</a>
					<a class="expand-link">
						<i class="fa fa-expand"></i>
					</a>
					<a class="close-link">
						<i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content">
				<form id="defaultForm" method="post" action="validators.html" class="form-horizontal">
					<fieldset>
						<legend>Not Empty validator</legend>
						<div class="form-group">
							<label class="col-sm-3 control-label">Username</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" name="username" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Country</label>
							<div class="col-sm-5">
								<select class="populate placeholder" name="country" id="s2_country">
									<option value="">-- Select a country --</option>
									<option value="fr">France</option>
									<option value="de">Germany</option>
									<option value="it">Italy</option>
									<option value="jp">Japan</option>
									<option value="ru">Russia</option>
									<option value="gb">United Kingdom</option>
									<option value="us">United State</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-9 col-sm-offset-3">
								<div class="checkbox">
									<label>
										<input type="checkbox"  name="acceptTerms" /> Accept the terms and policies
										<i class="fa fa-square-o small"></i>
									</label>
								</div>
							</div>
						</div>
					</fieldset>
					<fieldset>
						<legend>Regular expression based validators</legend>
						<div class="form-group">
							<label class="col-sm-3 control-label">Email address</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" name="email" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Website</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" name="website" placeholder="http://" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Phone number</label>
							<div class="col-sm-5">
								<input type="text" class="form-control" name="phoneNumber" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Hex color</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" name="color" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">US zip code</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" name="zipCode" />
							</div>
						</div>
					</fieldset>
					<fieldset>
						<legend>Identical validator</legend>
						<div class="form-group">
							<label class="col-sm-3 control-label">Password</label>
							<div class="col-sm-5">
								<input type="password" class="form-control" name="password" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Retype password</label>
							<div class="col-sm-5">
								<input type="password" class="form-control" name="confirmPassword" />
							</div>
						</div>
					</fieldset>
					<fieldset>
						<legend>Other validators</legend>
						<div class="form-group">
							<label class="col-sm-3 control-label">Ages</label>
							<div class="col-sm-3">
								<input type="text" class="form-control" name="ages" />
							</div>
						</div>
					</fieldset>
					<div class="form-group">
						<div class="col-sm-9 col-sm-offset-3">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>



	<h2>Input Form</h2>
	<form:form action="addUser" method="post" modelAttribute="user">
		<div class="form-group">
			<label for="name">Name:</label>
			<form:input path="name" cssClass="form-control" id="name"
				placeholder="Enter name" />
			<form:errors path="name" cssClass="error" />
		</div>
		<div class="form-group">
			<label for="email">Email:</label>
			<form:input path="email" cssClass="form-control" id="email"
				placeholder="Enter email" />
			<form:errors path="email" cssClass="error" />
		</div>
		<button type="submit" class="btn btn-default">Submit</button>
	</form:form>
</div>

<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-usd"></i> <span>User List</span>
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
						</tr>
					</thead>
					<tbody>
						<!-- Start: list_row -->
						<c:forEach items="${users}" var="user">
							<tr>
								<td>${user.id}</td>
								<td>${user.name}</td>
								<td>${user.email}</td>
							</tr>
						</c:forEach>
						<!-- End: list_row -->
					</tbody>
					<tfoot>
						<tr>
							<th>#</th>
							<th>Name</th>
							<th>Email</th>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
// Run Datables plugin and create 3 variants of settings
function AllTables(){
	TestTable1();
	LoadSelect2Script(MakeSelect2);
}
function MakeSelect2(){
	$('select').select2();
	$('.dataTables_filter').each(function(){
		$(this).find('label input[type=text]').attr('placeholder', 'Search');
	});
}
$(document).ready(function() {
	// Load Datatables and run plugin on tables 
	LoadDataTablesScripts(AllTables);
	// Add Drag-n-Drop feature
	WinMove();
});
</script>