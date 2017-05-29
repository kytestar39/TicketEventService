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
		<h2>Details for ${name} are: </h2>
		<div id="detailsevent">
			
		</div>
	</center>
	<script>
	document.addEventListener("DOMContentLoaded", function(){
	var event = document.getElementById("detailsevent");
	var events = '${message}';
	events = events.split("|");
	var div = document.createElement('DIV');
	div.className="description";
	var h2 = document.createElement('H2');
	h2.appendChild(document.createTextNode(events[1]));
	var p = document.createElement('P');
	var a = document.createElement('A');
	var span = document.createElement('SPAN');
	span.appendChild(document.createTextNode("Numarul de bilete valabile este: " + events[2]));
	a.href = "buyTicket?name="+'${name}';
	a.className ="event";
	a.appendChild(document.createTextNode("Click to buy a ticket"));
	p.appendChild(a);
	p.appendChild(span);
	div.appendChild(h2);
	div.appendChild(p);
	event.appendChild(div);
	});
	
	</script>
</body>
</html>