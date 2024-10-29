<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'update.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		window.onload = function (){
			var hs = "${user.hobbys}";
			var hss = hs.substring(1,hs.length-1).split(",");
			var hobbys = document.getElementsByName("hobby");
			for(var i = 0;i<hobbys.length;i++){
				for(var j = 0;j<hss.length;j++){
					if(hobbys[i].value==hss[j].replace(" ","")){
						hobbys[i].checked = "true";
					}
				}
			}
			var job = "${user.job}";
			var ops = document.getElementsByTagName("option");
			for(var i = 0;i<ops.length;i++){
				if(ops[i].value==job){
					ops[i].selected = "true";
				}
			}
			document.getElementById("info").value = "${user.info}";
		};
	</script>
  </head>
  
  <body>
  	<div>修改个人信息</div>
    	<form action="http://localhost:8080/tongxunlu/UserUpdateServlet" method="post">
    	<input type="hidden" name="id" value="${user.id}">
    		姓名：<input  type="text" name="name" value="${user.name}"><br/>
    		电话：<input  type="text" name="info" value="${user.info}"><br/>
    		性别：<input type="radio" name="sex" value="男" checked="${user.sex=='男'?true:false}"/>男
    				<input type="radio" name="sex" value="女" checked="${user.sex=='女'?true:false}"/>女<br/>
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
    		
    		<input type="submit" value="修改">
    		<input type="reset" value="重置">
    	</form>
  </body>
</html>
