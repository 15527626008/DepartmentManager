<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理系统</title>
<jsp:include page="/res/bootstrap.jsp" />
</head>
<body>
<jsp:include page="/res/nav.jsp"></jsp:include>
<div class="container">

      <div class="row row-offcanvas row-offcanvas-right">
         <div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
          <div class="list-group">
            <a href="#" class="list-group-item active">操作列表</a>
            <a href="<c:url value="/employee.html"/>" class="list-group-item">员工信息&nbsp;<span
						class="glyphicon glyphicon-chevron-right"></span></a>
            <a href="<c:url value="/addemployee.html"/>" class="list-group-item">录入员工&nbsp;<span
						class="glyphicon glyphicon-chevron-right"></span></a>
            <a href="<c:url value="/department.html"/>" class="list-group-item">部门信息&nbsp;<span
						class="glyphicon glyphicon-chevron-right"></span></a>
             <a href="<c:url value="/adddepartment.html"/>" class="list-group-item">添加部门&nbsp;<span
						class="glyphicon glyphicon-chevron-right"></span></a>
          </div>
        </div><!--/span-->
        
        <div class="col-xs-12 col-sm-9">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
          <div class="jumbotron">
            <h1>欢迎进入后台管理系统!</h1>
            <h4>关于本系统</h4>
            <p>1.硬件要求：Linux服务器</p>
            <p>2.软件件要求：tomcat服务器+mysql数据库</p>
            <p>3.系统开发框架：spring + springMVC + mybatis + bootstrap</p>
          </div>
        
        </div><!--/span-->

       
      </div><!--/row-->

      <hr>

      <footer>
        <p>&copy; Company 2016  作者：刘书刚   email:l863209181@163.com </p>
        <p><font color="red">申明：本系统只作为面试要求用，未经本人允许不得进行商业运用.</font></p>
      </footer>

    </div><!--/.container-->

</body>
</html>