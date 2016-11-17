<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加部门</title>
<jsp:include page="/res/bootstrap.jsp" />
</head>
<body>
	<jsp:include page="/res/nav.jsp"></jsp:include>
	<div class="container">

		<div class="row row-offcanvas row-offcanvas-right">
			<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar"
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
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">添加部门</h3>
					</div>
					<div class="panel-body">
						<form role="form" action="adddepartment.html" method="post" modelAttribute="department">
							<div class="form-group">
								<label for="exampleInputName">部门名称</label> <input
									type="text" name="departmentName" class="form-control"
									id="exampleInputName" placeholder="请输入员部门名称" required="true">
							</div>

							<div class="form-group">
								<label for="exampleInput">上级部门</label> 
								<select
									class="form-control" name="higherDepartmentId">
									<c:forEach items="${departments}" var="department">
										<option value="${department.id}">${department.departmentName}</option>
									</c:forEach>
									<option value="0">无上级部门</option>
								</select>
							</div>

							<button type="submit" class="btn btn-default">提交</button>
						</form>
					</div>
				</div>

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