<%@page import="dto.movie"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%movie m=(movie)request.getAttribute("movie"); %>
<form action="updatemovie" method="post" enctype="multipart/form-data" >
<label>movie id</label>
<input type="number" name="mid" value="<%=m.getMovieid()%>" readonly="readonly"> <br>
<label>movie name</label>
<input type="text" name="mname" value="<%=m.getMoviename()%>"><br>
<label>movie price</label>
<input type="number" name="mprice" value="<%=m.getMovieprice()%>"><br>
<label>movie rating</label>
<input type="number" name="mrating" value="<%=m.getMovierating()%>"><br>
<label>movie genre</label>
<input type="text" name="mgenre" value="<%=m.getMoviegenre()%>"><br>
<label>movie language</label>
<input type="text" name="mlanguage" value="<%=m.getMovielanguage()%>"><br>
<label>movie image</label>
<input type="file" name="mimage"><br>
<input type="submit">
</form>
</body>
</html>