<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/index.css">
<style type="text/css">
body{
	height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	/* background-color: black; */
	background-image:url("images/index.jpg");
	background-repeat:no-repeat;
	background-position:center center;
	background-clip:border-box;
	background-size:100% 100%;
	overflow: hidden;
	}
.container{
	font-size: 10px;
	width: 40em;
	height: 40em;
	position: relative;
}
.sun{
	position: absolute;
	top: 15em;
	left: 15em;
	width: 10em;
	height: 10em;
	background-color: yellow;
	border-radius: 50%;
	box-shadow: 0 0 3em white;
	opacity: 0.6;
	
}
.earth,.moon{
	position: absolute;
	border-style: solid;
	background-color: white transparent transparent fuchsia;
		border-radius: 50%;
		border-color: white;
}
.earth{
top: 5em;
left: 5em;
width: 30em;
height: 30em;
animation: orbit 36.5s linear infinite;
/* border-top: none;
border-right: none;
border-bottom: none; */
/* border-left-style: groove; */
border-width:  0.1rem 0 0 ;

}
.moon{
top: 0;
left: 0;
width: 8em;
height: 8em;
animation: orbit 2.7s linear infinite;
border-width:  0.1rem 0 0 ;

}
.earth::before,.moon::before 
{
	content: '';
	position: absolute;
	border-radius: 50%;
	
}
.earth::before{
top: 2.8em;
left: 2.8em;
width: 3em;
height: 3em;
background-color: aqua;
}
.moon::before{
top: 0.8em;
left: 0.2em;
width: 1.2em;
height: 1.2em;
background-color: silver;
}
@keyframes orbit {
to{
transform:rotate(-360deg);
}
}
#one{
position: absolute;
color: red;
left:300px;
}
#one{
color: red;
}
#one::first-letter 
{
	color:black;
	font-size: 40px;
}
#two::first-letter 
{
	color:red;
	font-size: 40px;
}
#three{
position: absolute;
top: -10px;
left:250px;
letter-spacing: 50px;
color: silver;
font-family: sans-serif;
opacity:0.2;
}
#user{
position: absolute;
top: 100px;
left: 92%;
text-decoration: none;
height: 30px;
width: 95px;
line-height:30px;
text-align:center;
background-color: white;
border: 1ps solid black;
transition-duration:.5s;
cursor: move;
}
#user:hover,#admin:hover{
transform: scale(1.2);
color: white;
background-color: black;
cursor: move;
font-size: 15px;
border-radius: 15px;
}
#admin{
position: absolute;
top: 50px;
left: 92%;
text-decoration: none;
height: 30px;
width: 95px;
line-height:30px;
text-align:center;
background-color: white;
border: 1ps solid black;
transition-duration:.5s;
cursor: move;
}
</style>
</head>
<body>
<div id="body">
<div class="container">
<div class="sun"></div>
<div class="earth">
<div class="moon"></div>
 </div>
</div>
 </div>
 <h1 id="one">GRAVITY</h1>
 <h1 id="two">CINEMA</h1>
 <h1 id="three">MOVIE LIBRARY</h1>
 <a href="Admin.jsp" id="admin">ADMIN</a>
 <a href="User.jsp" id="user">USER</a>
</body>
</html>
