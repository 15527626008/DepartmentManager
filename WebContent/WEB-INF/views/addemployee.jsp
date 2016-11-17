<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>添加员工</title>
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
						<h3 class="panel-title">录入员工</h3>
					</div>
					<div class="panel-body">
						<form:form role="form" action="addemployee.html" method="post" modelAttribute="employee">
							<div class="form-group">
								<label for="exampleInputUserName">姓名</label> 
								<form:input type="text" path="employeeName"
									name="employeeName" class="form-control"
									id="exampleInputEmail1" placeholder="请输入员工姓名" required="true"/>
							</div>
							<div class="form-group">
								<label for="exampleInput">职位</label> <form:input type="text" path="position"
									name="position" class="form-control" id="exampleInputEmail1"
									placeholder="请输入员工职位" required="true"/>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">薪资</label> <form:input type="text" path="salary"
									name="salary" class="form-control" id="exampleInputSalary"
									placeholder="请输入员工薪资" required="true"/>
							</div>
							<div class="form-group">
								<label for="exampleInput">所在部门</label> <select
									class="form-control"  name="departMentName">
									<c:forEach items="${departments}" var="department" >
									<option value="${department.departmentName}">${department.departmentName}</option>
									</c:forEach>
								</select>
							</div>
							
							
							<div class="form-group">
								<label for="exampleInputEmail1">邮箱</label> <form:input type="email" path="email"
									name="email" class="form-control" id="exampleInputEmail1"
									placeholder="请输入员工邮箱" required="true"/>
							</div>
							
							<div class="form-group">
								<label for="exampleInputEmail1">手机号</label> <input type="phone"
									name="phone" class="form-control" id="exampleInputPhone" minlength="11"
									placeholder="请输入员工手机号" required="true">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">身份证号</label> <input type="text"
									name="idCard" class="form-control" id="exampleInputIdcard"
									placeholder="请输入员工身份证号" required="true">
							</div>
							<button type="submit" class="btn btn-default">提交</button>
						</form:form>
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