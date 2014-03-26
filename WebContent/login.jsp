<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login page</title>
</head>
<body style="background-color:#94A;">
<center>
<form action="loginvali.jsp" method="post">
<center><h1> Welcome To MRS Online BUS Ticket Booking</h1></center>
<table>
<tr>
<td>User name</td>
<td><input type="text" name="username" id="username"/><br></td></tr>
<tr><td>Password</td>
<td><input type="password" name="password" id="password"/><br></td></tr>
</table>
<input type="submit" value="login" id="login"/>
<input type="reset" value="reset" id="reset"/>
</form>
<form action="signup.jsp" method="post">
<input type="submit" value="signup"/>
</form>
</center>
</body>

</html>