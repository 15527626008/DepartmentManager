<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>部门信息</title>
<jsp:include page="/res/bootstrap.jsp" />
<link rel="StyleSheet" href="css/dtree.css" type="text/css" />
<script type="text/javascript" src="js/dtree.js"></script>
</head>
<body>
	<jsp:include page="/res/nav.jsp"></jsp:include>
	<div class="container">

		<div class="row row-offcanvas row-offcanvas-right">
			<div class="col-xs-12 col-sm-3 sidebar-offcanvas" id="sidebar"
				role="navigation">
				<div class="list-group">
					<a href="#" class="list-group-item active">操作列表</a> <a
						href="<c:url value="/employee.html"/>" class="list-group-item">员工信息&nbsp;<span
						class="glyphicon glyphicon-chevron-right"></span></a>
						<a href="<c:url value="/addemployee.html"/>" class="list-group-item">录入员工&nbsp;<span
						class="glyphicon glyphicon-chevron-right"></span></a>
					<a href="<c:url value="/department.html"/>" class="list-group-item">部门信息&nbsp;<span class="glyphicon glyphicon-chevron-down"></span></a>
					
					<div class="dtree list-group-item">

						<p>
							<a href="javascript: d.openAll();">展开全部</a> | <a
								href="javascript: d.closeAll();">关闭</a>
						</p>

						<script type="text/javascript">
						<!--
							d = new dTree('d');

							d.add(0, -1, 'My example tree');
							d.add(1, 0, 'Node 1', 'example01.html');
							d.add(2, 0, 'Node 2', 'example01.html');
							d.add(3, 1, 'Node 1.1', 'example01.html');
							d.add(4, 0, 'Node 3', 'example01.html');
							d.add(5, 3, 'Node 1.1.1', 'example01.html');
							d.add(6, 5, 'Node 1.1.1.1', 'example01.html');
							d.add(7, 0, 'Node 4', 'example01.html');
							d.add(8, 1, 'Node 1.2', 'example01.html');
							d.add(9, 0, 'My Pictures', 'example01.html',
									'Pictures I\'ve taken over the years', '',
									'', 'img/imgfolder.gif');
							d.add(10, 9, 'The trip to Iceland',
									'example01.html',
									'Pictures of Gullfoss and Geysir');
							d.add(11, 9, 'Mom\'s birthday', 'example01.html');
							d.add(12, 0, 'Recycle Bin', 'example01.html', '',
									'', 'img/trash.gif');
							d.add(13, 4, '123', 'example01.html');

							document.write(d);
						//-->
						</script>

					</div>
					 <a href="<c:url value="/adddepartment.html"/>" class="list-group-item">添加部门&nbsp;<span
						class="glyphicon glyphicon-chevron-right"></span></a>
				</div>
			</div>
			<!--/span-->

			<div class="col-xs-12 col-sm-9"></div>
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