package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import dto.movie;
@WebServlet("/editmovie")
public class editmovie extends HttpServlet
{
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
{
	int id=Integer.parseInt(req.getParameter("id"));
	Dao d=new Dao();
	try {
		movie mov=d.findmoviebyid(id);
		req.setAttribute("movie", mov);
		RequestDispatcher rd=req.getRequestDispatcher("Aedit.jsp");
				rd.include(req, resp);
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}
}
