<%@page import="com.mm.UserDTO.UserDto"%>
<%@page import="jdbc.Jdbc"%>
<%@page import="com.mm.UserDao.UserDao"%>
<%@page import="java.lang.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    session="true"
    isErrorPage="false"
    %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">

</head>
<body>
<h1>Login page</h1>
	<%String uid=request.getParameter("uid");
	String pass=request.getParameter("pass");
	UserDto user= new UserDto(uid,pass);
	Jdbc checkUser=new Jdbc();
	String btn=request.getParameter("btn");
	if(btn!=null){
	if(btn.equals("register")){
		response.sendRedirect("registration.jsp");
		}
	else{
	if(uid!=null&&pass!=null){
	if(checkUser.userExist(user)){
	request.setAttribute("uid",user.getUsername());
	RequestDispatcher dispatcher=request.getRequestDispatcher("/index.jsp");
	dispatcher.forward(request, response);
	}
	else
	{%>
<h2>enter correct username or password</h2>
	<% }
	}}}
	%>
<form action=NewFile.jsp method=post>
<div>
<label>Userid: </label>
<input type="text" name="uid" placeholder="enter uid here">
</div>
<div>
<label>Password: </label>
<input type="text" name="pass" placeholder="password">
</div>
<div>
<button name='btn' value='submit' class='btn btn-primar'>Submit</button>
<button name='btn' value='register' class='btn btn-primary'>Register</button>
<button class='btn btn-danger' type='reset'>Clear</button>
</div>
</form>
</body>
</html>