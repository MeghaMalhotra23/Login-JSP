<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Register</h2>
<form action=registration.jsp method=post>
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
<button name='btn' value='register' class='btn btn-primary'>Register</button>
<button class='btn btn-danger' type='reset'>Clear</button>
</div>
</form>

</body>
</html>