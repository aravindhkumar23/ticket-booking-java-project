<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login validations </title>
</head>
<body style="background-color:#F5DEB3;">
<form action="home.jsp" method="post">
<center>
<h1>
<%
session.setAttribute("username",request.getParameter("username"));
int u=0;
		//out.println("MySQL Connect Example.");
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "tbook";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "root";
		String password = "aravindh";
		String us=request.getParameter("username");
		//out.println(us);
		String ps=request.getParameter("password");
		String query = "Select * from login where username='"+us+"'and password='"+ps+"'";
		String dbtime = "";
		try {
			Class.forName(driver).newInstance();
			conn = DriverManager
					.getConnection(url + dbName, userName, password);
			//out.println("Connected to the database\n");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			if(rs.next()) {
				dbtime = rs.getString(1);
				out.println("Hello  " +dbtime);%>
				<input type="hidden" name="username" value="<%= u%>"/>
				<br><input type="submit" value="check avalibility" id="check"/>
			<%} 
			else
			{
				out.println("Enter Valid Username and Password");
				response.sendRedirect("login.jsp");
		}
		} catch (Exception e) {
			e.printStackTrace();
		} 
%>
</h1>
</center>
</form>
</body>
</html>