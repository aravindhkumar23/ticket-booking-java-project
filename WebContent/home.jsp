<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="tcal.css" />
	<script type="text/javascript" src="tcal.js"></script> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
</head>
<body style="background-color:white">

<center><img src="bus.jpg"></center>
<form action="check.jsp" method="post">
<center><h1> Welcome To MRS Online BUS Ticket Booking</h1></center>

<center>
<table>
<tr>
<td>Departure</td>
<td><select name="departure" id="departure">
<option value=""></option>
<option value="chennai">chennai</option>
<option value="madurai">madurai</option>
<option value="erode">erode</option>
<option value="vellore">vellore</option>
<option value="karur">karur</option>
<option value="kovai">kovai</option>
</select><br></td></tr>
<tr><td>Arrival</td>
<td><select name="arrival" id="to">
<option value=""></option>
<option value="chennai">chennai</option>
<option value="madurai">madurai</option>
<option value="erode">erode</option>
<option value="vellore">vellore</option>
<option value="karur">karur</option>
<option value="kovai">kovai</option>
</select><br></td></tr>
<tr><td>Date Of Journey</td><td><input class="tcal" type="text" name="doj" value=""/><br></td></tr>
<tr><td>Seats needed</td>
<td><input type="text" name="seats" id="seats"/><br></td></tr>
<tr><td><input type="submit" value="check avalibility" id="check"/></td></tr>

</table>
</center>
</form>
</body>
</html>