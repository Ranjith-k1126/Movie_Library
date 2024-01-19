package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import dto.Admin;

@WebServlet("/adminlogin")
public class adminlogin extends HttpServlet
{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
{
	
	String email=req.getParameter("aemail");
	String password=req.getParameter("apassword");
	Dao dao=new Dao();
	try {
		Admin admin= dao.findbyemail(email);
		if(admin!=null)
		{
			if(admin.getAdminpassword().equals(password))
			{
				req.setAttribute("movies", dao.getallmovies());
				RequestDispatcher rd=req.getRequestDispatcher("Ahome.jsp");
				rd.include(req, resp);
			}
			else {
				req.setAttribute("message", "password was wrong");
				RequestDispatcher rd=req.getRequestDispatcher("Alogin.jsp");
				rd.include(req, resp);
			}
		}
		else
		{
			req.setAttribute("message", "Email was wrong");
			RequestDispatcher rd=req.getRequestDispatcher("Alogin.jsp");
			rd.include(req, resp);
		}
			
		
	} catch (ClassNotFoundException | SQLException e) 
	{
		
		e.printStackTrace();
	}
}
}
