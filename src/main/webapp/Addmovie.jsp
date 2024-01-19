<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="savemovie" method="post" enctype="multipart/form-data" >
<label>movie id</label>
<input type="number" name="mid"> <br>
<label>movie name</label>
<input type="text" name="mname"><br>
<label>movie price</label>
<input type="number" name="mprice"><br>
<label>movie rating</label>
<input type="number" name="mrating"><br>
<label>movie genre</label>
<input type="text" name="mgenre"><br>
<label>movie language</label>
<input type="text" name="mlanguage"><br>
<label>movie image</label>
<input type="file" name="mimage"><br>
<input type="submit">
</form>
</body>
</html>