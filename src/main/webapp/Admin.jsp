<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
*{
    margin: 0px;
    padding: 0px;
}
body{
    background-image:url("images/charlie-chaplin-7357040_640.jpg");
    background-position: center center;
    height: 100vh;
    background-repeat: no-repeat;
    background-size: 1300px 540px;
    background-clip: border-box;
    
}
body>h1{
    margin-left: 156px;
    padding-top: 15px;
    letter-spacing: 30px;
    font-size: 50px;
    opacity: 0.5;
    font-family: sans-serif;
}
#head
{
    position: absolute;
    left: 600px;
    border: 1px solid black;
    height: 230px;
    width: 230px;
    border: none;
    border-radius: 50%;
    box-shadow: 0rem 0rem 3rem;
    animation-name:ballu;
    animation-duration: 10s;
    animation-iteration-count: infinite;
    animation-direction: alternate;
    animation-timing-function: linear;
}
@keyframes ballu 
{
    from{
        top: 0px;
    }
    to{
        top: 300px;
    }
}
a{
    border: 10px solid  rgb(42, 41, 41);
    border-radius: 20px;
}
#log{
    text-decoration: none;
    position: absolute;
    top:65px;
    left: 85px;
    background-color: rgb(42, 41, 41);
    color: bisque;
    width: 45px;
    text-align: center;
     opacity: 0.4;
}
#sig{
    text-decoration: none;
    /* border: 1px solid black; */
    position: absolute;
    top:130px;
    left: 85px;
    background-color: rgb(42, 41, 41);
    color: bisque;
    opacity: 0.4;
}


</style>
</head>
<body>
    <h1>WELCOME ADMIN</h1>
    <div id="head">
        <a href="Alogin.jsp" id="log">Login</a> <br>
        <a href="Asingup.jsp" id="sig">Signup</a>
    </div>
</body>
</html>