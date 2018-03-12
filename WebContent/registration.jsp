<%@page import="jdbc.Jdbc"%>
<%@page import="com.mm.UserDao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.mm.UserDTO.UserDto" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
</head>
<body>
<h2>Register</h2>
<form action=registration.jsp method=post>
<div>
<label>First name </label>
<input type="text" name="fname" placeholder="enter fisrt name">
</div>
<div>
<label>last name: </label>
<input type="text" name="lname" placeholder="enter last name">
</div>
<div>
<label>Userid: </label>
<input type="text" name="uid" placeholder="enter uid here">
</div>
<div>
<label>Password: </label>
<input type="text" name="pass" placeholder="enter password">
</div>
<div>
<button name='btn' value='submit' class='btn btn-primar'>Submit</button>
<button class='btn btn-danger' type='reset'>Clear</button>
</div>
</form>
<%
String uid=request.getParameter("uid");
String pass=request.getParameter("pass");
UserDto user= new UserDto(uid,pass,request.getParameter("fname"),request.getParameter("lname"));
Jdbc jdbc=new Jdbc();
String msg="";
if(uid!=null){
if(!jdbc.userExist(user))
msg=jdbc.register(user);
else
	%> <h4>User already exist</h4><% 
}
%>
<h4><%=msg%></h4>
<%if(msg!=""){%>
<a href="http://localhost:8080/jsp/NewFile.jsp">Login here</a>
<%}%>
</body>
</html>