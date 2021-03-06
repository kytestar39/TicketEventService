<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring 4 MVC - HelloWorld Index Page</title>
<style>

.center{
	width: 100%;
	margin:0 auto;
	display: inline-block;
}



.dropDownMenu a {
	color: #FFF;
}
.dropDownMenu,
.dropDownMenu ul {
	width: auto;
	list-style: none;
	margin: 0;
	padding: 0;
}
.dropDownMenu li {
	position: relative;
}
.dropDownMenu a {
	padding: 10px 20px;
	display: block;
	text-decoration: none;
    font-size: 17px;
    font-style: italic;
    font-family: Rockwell, sans-serif;
    background-color: #f37422;
    color: #26180e;
}
.dropDownMenu a:hover {
	background-color: #d1661f; 
}


/* Level 1 Drop Down Menu */
.dropDownMenu > li {
	display: inline-block;
	vertical-align: top;
	margin-left: -4px; /* solve the 4 pixels spacing between list-items */
}
.dropDownMenu > li:first-child {
	margin-left: 0;
}
.dropDownMenu > li > a {}
.dropDownMenu > li > a:hover {}



/* Level 2 */
.dropDownMenu > li > ul {
	text-align: left;
	width: 220px; /* change auto value with 200px if you want a bigger menu */
	display: none;
	background: #5DBB04;
	position: absolute;
	top: 100%;
	left: 0;
	
	z-index: 9999999; /* if you have YouTube iframes, is good to have a bigger z-index so the video can appear above the video */
}
.dropDownMenu > li:hover > ul {
	display: block;
}
.dropDownMenu ul li a {}
.dropDownMenu ul li a:hover {}

.dropDownMenu a{	
		padding:15px;
	}
	
	.dropDownMenu ul li{
		display: block;
    text-align: center;
    margin: 0px;
    height: 40px;
    padding: 10px 0px 0px 0px;
	}
	
	.dropDownMenu ul li:hover{
	background-color:#f37422;
	
	
</style>
</head>
<body>
 
	<center>
		<h2>TicketsEvent</h2>
		<div class="center">
			<ul class="dropDownMenu">
			<li><a href="event?name=Home">Home</a>
				</li>
				<li><a href="#">Concerte</a>
					<ul>
						<li><a href="event?name=Rock">Rock</a></li>
						<li><a href="event?name=Pop">Pop</a></li>
						<li><a href="event?name=Metal">Metal</a></li>
						<li><a href="event?name=HipHop">Hip Hop</a></li>
					</ul>
				</li>
				<li><a href="#" >Teatru</a>
					<ul>
						<li><a href="event?name=TeatruCopii">Teatru pentru copii</a></li>
					</ul>
				</li>
				<li><a href="#">Evenimente</a>
					<ul>
						<li><a href="event?name=Spectacol">Spectacole</a></li>
						<li><a href="event?name=StandUp">Stand-up comedy</a></li>
						<li><a href="event?name=Sport">Sport</a></li>
					</ul>
				</li>
				
			</ul>
		</div>		
					
	</center>
</body>
</html>