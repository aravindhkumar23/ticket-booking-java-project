<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>amount to be paid</title>
</head>
<body background="Thankyou.jpg" style="background-color:grey;"><center>
<form action="home.jsp" method="post">
<%
int p=100,total=0;
int c=Integer.parseInt(request.getParameter("seats"));
//out.print(request.getParameter("bal"));
total=p*c;
%>
<h2>
<%
//out.println("you have to pay (rs):"+total);
%></h2>
<br>
<h1>Receipt is printed
<%
out.println("Thank You! ");
out.println(" Visit Again.");
%>
<br><br>
<input type="submit" value="home"/>
</h1></form>
<form action="login.jsp" method="post">
<input type="submit" value="logout"/>
</form>
</center>
</body>
</html>