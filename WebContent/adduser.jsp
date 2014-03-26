<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="login.jsp" method="post">
<%
//out.println("MySQL Connect Example.");
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "tbook";
		String driver = "com.mysql.jdbc.Driver";
		String user= "root";
		String pass= "aravindh";
	String us=request.getParameter("username");
	//out.println(us);
	String ps=request.getParameter("password");
	//out.println(ps);
	//	String query = "insert into login values('aravindh','12345')";
		try {
			Class.forName(driver).newInstance();
			conn = DriverManager
					.getConnection(url + dbName, user, pass);
			%><center><h1>Welcome<br>Sign up successfull<br>Please login to continue</h1>
			<%
		//out.println("Welcome..sign up successfull..please login to continue..");
			Statement stmt = conn.createStatement();
			//stmt=con.createStatement(rs.TYPE_SCROLL_SENSITIVE,rs.CONCUR_UPDATABLE);
			stmt.executeUpdate("insert into login values('"+us+"','"+ps+"')");
		}
				catch (Exception e) {
					e.printStackTrace();
				}
%>
<br><input type="submit" value="please login"/>
</center>
</form><br>
</body>
</html>