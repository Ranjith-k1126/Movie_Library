package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.Dao;
import dto.movie;

@WebServlet("/savemovie")
@MultipartConfig(maxFileSize = 5*1024*1024)
public class savemovie  extends HttpServlet
{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
{
	int movieid=Integer.parseInt(req.getParameter("mid"));
	String moviename=req.getParameter("mname");
	double movieprice=Double.parseDouble(req.getParameter("mprice"));
	double movierating=Double.parseDouble(req.getParameter("mrating"));
	String moviegenre=req.getParameter("mgenre");
	String movielanguage=req.getParameter("mlanguage");
	Part img=req.getPart("mimage");
	movie m=new movie();
	m.setMovieid(movieid);
	m.setMoviename(moviename);
	m.setMovieprice(movieprice);
	m.setMovierating(movierating);
	m.setMoviegenre(moviegenre);
	m.setMovielanguage(movielanguage);
	m.setMovieimage(img.getInputStream().readAllBytes());
	Dao d=new Dao();
	try {
		d.savemovie(m);
		req.setAttribute("movies", d.getallmovies());
		RequestDispatcher rd=req.getRequestDispatcher("Ahome.jsp");
		rd.include(req, resp);
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
