<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Buy Ticket</title>
<style>
.event{
position: relative;
    z-index: 2;
}

</style>
</head>
<body>
	<center>
		<h2>${message}</h2>
		<div id="detailsevent">
			<a href="cancelTicket?name=${name}"> Cancel ticket for event : ${name}</a>
		</div>
	</center>

</body>
</html>