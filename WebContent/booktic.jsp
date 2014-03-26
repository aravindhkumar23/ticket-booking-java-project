<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>book now</title>
</head>
<body style="background-color:#BC8F8F;">
<form action="boktic1.jsp" method="post">


<table border=4 align="center">
<tr>
<th>name</th>
<th>age</th>
</tr>
<%
//int u=Integer.parseInt(request.getParameter("username"));
int s=Integer.parseInt(request.getParameter("seats"));
for(int i=1;i<=s;i++)
{
%>
<tr>
<td><input type="text" name="name<%= i%>"/></td>
<td><input type="text" name="age<%= i%>"/></td>
</tr>
<%
}
%>
</table>
<br><br><center><input type="submit" value="Book now" id="Book now"/>
<input type="reset" value="reset" id="reset"/></center>/
<input type="hidden" name="seats" value="<%= s%>"/>
<input type="hidden" name="username" value="<%= s%>"/>
</form>
</body>
</html>