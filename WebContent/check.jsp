<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ticket avaliablity checking</title>
</head>
<body style="background-color:white;"background="sleeper_ub_big.jpg">
<form action="booktic.jsp" method="post">
<center>
<h1>
<font color="white"> 
<%
session.setAttribute("arrival",request.getParameter("arrival")); 
session.setAttribute("departure",request.getParameter("departure"));
String departure=(String)session.getAttribute("departure");
//out.println(departure);
session.setAttribute("doj",request.getParameter("doj")); 

		//out.println("MySQL");

		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "tbook";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "root";
		String password = "aravindh";
		String u=request.getParameter("departure");
		String v=request.getParameter("arrival");
		String w=request.getParameter("doj");
		//int usern=Integer.parseInt(request.getParameter("username"));
		int s=Integer.parseInt(request.getParameter("seats"));
		String query = "Select * from aval where departure='"+u+"'and arrival='"+v+"'";
		String query1 ="update aval set avaliable=a where departure='"+u+"'and arrival='"+v+"'and doj='"+w+"'";
		int avail=0;
		try {
			Class.forName(driver).newInstance();
			conn = DriverManager.getConnection(url + dbName, userName, password);
			//out.println("Connected to the database");
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			if(rs.next()) {
				avail = rs.getInt(3);
				out.print("Total Avaliable Seats=" +avail);
				%><br>
				<%
				out.println("Required Seats=" +s);
				if(avail>s)
				{%>
				<br>
				<%
					out.println("Seats Available.U can book now");
					%><br>
					<br>
					<input type="submit" value="book ticket" id="book ticket"/>
					<input type="hidden" name="seats" value="<%= s%>"/>
				<input type="hidden" name="username" value="<%= u%>"/>
					
					
						<%	}
				else
					out.println("Total Avaliable Seats is less then your reqiurement..sorry for inconvinience..");			
			}
			else
				out.println("Not Avaliable");
			} catch (Exception e) {
			e.printStackTrace();
		}
		
%>
</font>
</h1>
</center>
</form>
</body>
</html>