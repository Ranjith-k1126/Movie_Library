<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
img{
    width: 920px;
    height: 530px;
    margin-left: 220px;
    box-shadow: 0.5em 2em 2em 1em;
    position: absolute;
    border-radius:30px;
    top: 30px;
}
#from{
    position: absolute;
    top: 150px;
    left: 550px;
    height: 290px;
    width: 290px;
  background-color:red;
  opacity: 0.4;
  box-shadow: 0rem 0rem 15rem 10rem rgb(30, 93, 93);
  border:3px solid lime;
  border-radius: 18px;
  
}
body{
    background-image: linear-gradient( rgb(47, 4, 12),rgb(175, 239, 175));
    margin-top: 100px;
}
form{
    position: absolute;
    top: 240px;
    left: 580px;
    line-height: 30px;
}
#email{
    margin-left: 23px;
    font-size: 20px;
    font-family: sans-serif;
    color: rgb(5, 79, 79);
}
#password{
    margin-left: -6px;
    font-size: 20px;
    color: rgb(5, 79, 79);
}
#sub{
    margin-top: 30px;
    margin-left: 80px;
    background-color:firebrick;
    border: none;
    font-size: x-large;
    font-weight: bolder;
  
}
#message{
position: absolute;
left:620px;
top:340px;
font-size: 20px;
font-weight: bolder;
}
h1{
position: absolute;
top: 45px;
left: 48%;
font-family: monospace;
color: gray;
font-style: oblique;
font-size: 50px;
letter-spacing: 3px;
text-decoration: underline;
}
</style>
</head>
<body>
 <div>
        <img src="images/movie-6860568_640.jpg" alt="">
    </div>
    <div id="from">
    </div>
    <form action="adminlogin" method="post">
        <label id="email"><b>Email</b></label>
        <input type="email" name="aemail" > <br>
        <label id="password"><b>Password</b></label>
        <input type="password" name="apassword" > <br>
        <input type="submit" id="sub">
        </form>
        <div id="message">
<%String message=(String)request.getAttribute("message");%>
<%if(message!=null){ %>
<%=message %>
<%} %>
</div>
<h1>Login</h1>
</body>
</html>