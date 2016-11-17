<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>员工信息</title>
<jsp:include page="/res/bootstrap.jsp" />
<style>
.table th,.table td {
	text-align: center;
}
</style>
<script type="text/javascript">
	$(document).ready(
			function() {
				$("button").click(
						function() {

							var arr = $(this).parent().prev();
							$("#exampleInputidCard").val(arr.text());

							$("#exampleInputPhone").val(arr.prev().text());

							$("#exampleInputEmail1").val(
									arr.prev().prev().text());

							$("#exampleInputposition").val(
									arr.prev().prev().prev().prev().text());
							$("#exampleInputname").val(
									arr.prev().prev().prev().prev().prev()
											.text());
						});
			});
</script>
</head>
<body>
	<jsp:include page="/res/nav.jsp"></jsp:include>
	<!-- Modal -->
	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">编辑员工信息</h4>
				</div>

				<div class="modal-body">
					<table width="100%">

						<tr>

							<td>


								<form class="form-horizontal" role="form">
									<div class="form-group">
										<label for="exampleInputUserName"
											class="col-sm-2 control-label">姓名</label>
										<div class="col-sm-10">
											<input type="text" name="employeeName" class="form-control"
												id="exampleInputname" placeholder="请输入员工姓名">
										</div>
									</div>
									<div class="form-group">
										<label for="exampleInput" class="col-sm-2 control-label">职位</label>
										<div class="col-sm-10">
											<input type="text" name="position" class="form-control"
												id="exampleInputposition" placeholder="请输入员工职位">
										</div>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1" class="col-sm-2 control-label">薪资</label>
                                       <div class="col-sm-10">
                                          <input type="text"
											path="salary" name="salary" class="form-control"
											id="exampleInputSalary" placeholder="请输入员工薪资" required="true">
										</div>
									</div>
									<div class="form-group">
										<label for="exampleInput" class="col-sm-2 control-label">所在部门</label>
										<div class="col-sm-10">
											<select class="form-control" name="departMentName">
												<c:forEach items="${departments}" var="department">
													<option value="${department.departmentName}">${department.departmentName}</option>
												</c:forEach>
											</select>
										</div>
									</div>

									<div class="form-group">
										<label for="exampleInputEmail1" class="col-sm-2 control-label">邮箱</label>
										<div class="col-sm-10">
											<input type="text" name="email" class="form-control"
												id="exampleInputEmail1" placeholder="请输入员工邮箱">
										</div>
									</div>
									<div class="form-group">
										<label for="exampleInputPhone" class="col-sm-2 control-label">手机号</label>
										<div class="col-sm-10">
											<input type="text" name="phone" class="form-control"
												id="exampleInputPhone" placeholder="请输入员工手机号">
										</div>
									</div>
									<div class="form-group">
										<label for="exampleInputidCard" class="col-sm-2 control-label">身份证号</label>
										<div class="col-sm-10">
											<input type="text" name="idCard" class="form-control"
												id="exampleInputidCard" placeholder="请输入员工身份证号">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-offset-2 col-sm-10">
											<button type="submit" class="btn btn-default">提交</button>
										</div>
									</div>
								</form>



							</td>

						</tr>


					</table>
				</div>
				<div class="modal-footer"></div>

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<!-- Modal -->
	<div class="modal fade" id="myModal2">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">警告！</h4>
				</div>

				<div class="modal-body">
					<h5>
						<font color="red" size="4">您确定要删除该员工吗？</font>
					</h5>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary">确定</button>

				</div>

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
	<div class="container">

		<div class="row row-offcanvas row-offcanvas-right">
			<div class="col-xs-12 col-sm-3 sidebar-offcanvas" id="sidebar"
				role="navigation">
				<div class="list-group">
					<a href="#" class="list-group-item active">操作列表</a> <a
						href="<c:url value="/employee.html"/>" class="list-group-item">员工信息&nbsp;<span
						class="glyphicon glyphicon-chevron-right"></span></a> <a
						href="<c:url value="/addemployee.html"/>" class="list-group-item">录入员工&nbsp;<span
						class="glyphicon glyphicon-chevron-right"></span></a> <a
						href="<c:url value="/department.html"/>" class="list-group-item">部门信息&nbsp;<span
						class="glyphicon glyphicon-chevron-right"></span></a> <a
						href="<c:url value="/adddepartment.html"/>"
						class="list-group-item">添加部门&nbsp;<span
						class="glyphicon glyphicon-chevron-right"></span></a>
				</div>
			</div>
			<!--/span-->

			<div class="col-xs-12 col-sm-9">
				<table class="table table-hover table-bordered">
					<thead>
						<tr class="active">
							<th>编号</th>
							<th>员工姓名</th>
							<th>职位</th>
							<th>薪资</th>
							<th>所在部门</th>
							<th>邮箱</th>
							<th>手机号</th>
							<th>省份证号码</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="employee" items="${employees}">
							<tr>
								<td><c:out value="${employee.id}" /></td>
								<td><c:out value="${employee.employeeName}" /></td>
								<td><c:out value="${employee.position}" /></td>
								<td><c:out value="${employee.salary}" /></td>
								<td><c:out value="${employee.departMentName}" /></td>
								<td><c:out value="${employee.email}" /></td>
								<td><c:out value="${employee.phone}" /></td>
								<td><c:out value="${employee.idCard}" /></td>
								<td><button type="button" id="alter" class="btn btn-info"
										data-toggle="modal" data-target="#myModal">修改</button>&nbsp;
									<button type="button" id="delete" class="btn btn-danger"
										data-toggle="modal" data-target="#myModal2">删除</button></td>
							</tr>

						</c:forEach>


					</tbody>
				</table>
				<ul class="pagination">
					<c:if test="${page > 1}">
						<li><a href="<c:url value="/employee.html?page=${page-1}"/>">&laquo;</a></li>
					</c:if>
					<c:if test="${page == 1}">
						<li><a href="#">&laquo;</a></li>
					</c:if>
					<c:forEach var="i" begin="1" end="${count}">
						<c:if test="${page == i  }">
							<li class="active"><a
								href="<c:url value="/employee.html?page=${i}"/>"><c:out
										value="${i}" /></a></li>
						</c:if>
						<c:if test="${page != i  }">
							<li><a href="<c:url value="/employee.html?page=${i}"/>"><c:out
										value="${i}" /></a></li>
						</c:if>

					</c:forEach>
					<c:if test="${page <count}">
						<li><a href="<c:url value="/employee.html?page=${page+1}"/>">&raquo;</a></li>
					</c:if>
					<c:if test="${page == count}">
						<li><a href="#">&raquo;</a></li>
					</c:if>
				</ul>
			</div>
			<!--/span-->


		</div>
		<!--/row-->

		<hr>

		<footer>
		<p>&copy; Company 2016 作者：刘书刚 email:l863209181@163.com</p>
		<p>
			<font color="red">申明：本系统只作为面试要求用，未经本人允许不得进行商业运用.</font>
		</p>
		</footer>

	</div>
	<!--/.container-->

</body>
</html>