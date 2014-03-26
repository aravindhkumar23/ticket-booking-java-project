<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="bus2.jpg">
<form action="cash.jsp" method="post">
<center>
<h1>
<font color="red">
<% String username=(String)session.getAttribute("username");
String arrival=(String)session.getAttribute("arrival");
String departure=(String)session.getAttribute("departure");
String doj=(String)session.getAttribute("doj");
//out.println(doj);
//out.println(arrival);
//out.println(departure);
//out.println(username);
Connection conn = null;
String url = "jdbc:mysql://localhost:3306/";
String dbName = "tbook";
String driver = "com.mysql.jdbc.Driver";
String userName = "root";
String password = "aravindh";
int s=Integer.parseInt(request.getParameter("seats"));
//out.println(s);
int u=Integer.parseInt(request.getParameter("username"));
//out.println(username);
int avail=0,b=0;
try {
	Class.forName(driver).newInstance();
	conn = DriverManager.getConnection(url + dbName, userName, password);
	Statement stmt = conn.createStatement();
	stmt.executeUpdate("insert into  tbooked values('"+username+"','"+s+"','"+departure+"','"+arrival+"','"+doj+"')");
	
	ResultSet up=stmt.executeQuery("select avaliable from aval where arrival='"+arrival+"'");
	while(up.next())
		{
		 int av=up.getInt("avaliable");
		 //out.print(av);
		 b=av-s;
		 //out.print(b);
		 PreparedStatement stm=conn.prepareStatement("update aval set avaliable='"+b+"' where departure='"+departure+"' and arrival='"+arrival+"'");
		 stm.executeUpdate();
		}
	//out.println(up.getString("avaliable"));
		
}
		catch (Exception e) {
		e.printStackTrace();
	}
int i=0,n;

//out.println("your requirement is="+s);
//out.println("booked.");%>
<br>
<%out.println("Happy Journey..");
%>
<%
int p=100,total=0;
int c=Integer.parseInt(request.getParameter("seats"));
//out.print(request.getParameter("bal"));
total=p*c;
%></font>
<table border=4>
<tr>
<th>name</th>
<th>no of tic </th>
<th>amount</th>
<th>date of journey</th>
</tr>
<tr><td><font color="red"><%= username%></font></td>
<td><font color="red"><%= s%></font></td>
<td><font color="red"><%= total%></font></td>
<td><font color="red"><%= doj%></font></td>
</tr>

</table>


<%
out.println("please print the page..:)");
//out.println("you have to pay (rs):"+total);
%>
					<input type="hidden" name="seats" value="<%= s%>"/><br>
<input type="submit" value="next"/>

</h1>
</center>
</form>
<center>
<form action="print.jsp" method="post">
<input type="button"value="print this page" onClick="window.print()"/>
</form>
</center>
</body>
</html>