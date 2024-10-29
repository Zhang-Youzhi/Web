<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    	<div>添加联系人信息</div>
    	<form action="http://localhost:8080/tongxunlu/addservlet" method="post">
    		姓名：<input  type="text" name="name" ><br/>
    		电话：<input  type="text" name="info" ><br/>
    		性别：<input type="radio" name="sex" value="男"/>男
    				<input type="radio" name="sex" value="女"/>女<br/>
    		兴趣：<input type="checkbox" name="hobby" value="写代码">写代码
    			<input type="checkbox" name="hobby" value="上网">上网
    			<input type="checkbox" name="hobby" value="唱歌">唱歌
    			<input type="checkbox" name="hobby" value="睡觉">睡觉<br/>
    		职业：<select name="job">
    			<option value="学生">学生</option>
    			<option value="医生">医生</option>
    			<option value="老师">老师</option>
    			<option value="程序员">程序员</option>
    			
    		
    		</select><br/>
    		<input type="submit" value="添加">
    		<input type="reset" value="重置">
    	</form>
    	
    	
    	
    	
  </body>
</html>
