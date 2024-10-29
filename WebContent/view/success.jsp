<%@ page language="java" import="java.util.*,domain.User" pageEncoding="utf-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <style type="text/css">
  body{
    text-align: center;
    font-size:38px;
  }
     *{
      font-family:华文楷体;
      font-size:18px;
      color:#F0F";
  }
  h1{
    text-align: center;
    font-size:38px;
  }
  a:link{
    color: #999;
    text-decoration: none;
  }
  a:VISITED {
  text-decoration: none;
  color: #c60;
}
  a:HOVER {
  text-decoration: none;
  color: #00F;
}
  </style>

	<link rel="stylesheet" type="text/css" href="css/tableStyle.css">
	<script type="text/javascript">
		window.onload = function(){
			var trs = document.getElementsByTagName("tr");
			var oldColor = "";
			for(var i = 0;i<trs.length;i++){
				trs[i].onmouseover = function(){
					var tds = this.getElementsByTagName("td");
					for(var j = 0;j<tds.length;j++){
						oldColor = tds[j].style.backgroundColor;
						tds[j].style.backgroundColor = "red";
					}
				}
				trs[i].onmouseout = function(){
					var tds = this.getElementsByTagName("td");
					for(var j = 0;j<tds.length;j++){
						tds[j].style.backgroundColor = oldColor;
					}
				}
			}
		};
	
	
	</script>

  </head>
  
  <body>
  <h1 style="font-size:38px;">欢迎登录到通信录系统</h1>
  <a style="font-size:26px;" href="<c:url value='/view/add.jsp'/>">添加联系人</a>
  <a style="font-size:26px;" href="<c:url value='/index.jsp'/>">退出系统</a>
	<table width="550" align="center" border="1">
		<tr>
			<th>编号</th>
			<th>姓名</th>
			<th>性别</th>
			<th>兴趣</th>
			<th>职业</th>
			<th>电话</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${users}" var="user">
			<tr>
				<td>${user.id}</td>
				<td>${user.name}</td>
				<td>${user.sex}</td>
				<td>${user.hobbys}</td>
				<td>${user.job}</td>
				<td>${user.info}</td>
				<td><a href="http://localhost:8080/tongxunlu/UserUpdateServlet?id=${user.id}">修改</a><a href="http://localhost:8080/tongxunlu/DeleteUserServlet?id=${user.id}">删除</a></td>
			</tr>
		</c:forEach>
			
	</table>
  </body>
</html>
