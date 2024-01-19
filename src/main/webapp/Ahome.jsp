 <%@page import="java.util.Base64"%>
<%@page import="dto.movie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>welcome Admin</h1>
<%List<movie> mov=(List)request.getAttribute("movies");%>
<table border="1px solid black">
<thead >
<tr>
<th>id</th>
<th>movie name</th>
<th>price</th>
<th>rating</th>
<th>genre</th>
<th>language</th>
<th>image</th>
<th>delete</th>
<th>edit</th>
</tr>
</thead>
<%if(mov!=null){%>
<%for(movie m:mov) {%>
<tr>
<td><%=m.getMovieid()%></td>
<td><%=m.getMoviename()%></td>
<td><%=m.getMovieprice()%></td>
<td><%=m.getMovierating()%></td>
<td><%=m.getMoviegenre()%></td>
<td><%=m.getMovielanguage()%></td>
<%String base64image=new String(Base64.getEncoder().encode(m.getMovieimage()));%>
<td><img src="data:image/jpeg;base64,<%=base64image%>" height="100px" width="100px"></td>
<td><a href="deletemovie?id=<%m.getMovieid();%>">delete</a></td>
<td><a href="editmovie?id=<%m.getMovieid();%>">editmovie</a></td>
</tr>
<%} %>
</table>
<button><a href="Addmovie.jsp">Add movie</a></button>
<%}else {%>
<button><a href="Addmovie.jsp">Add movie</a></button>
<%} %>
</body>
</html>