package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import dto.Admin;
@WebServlet("/saveadmin")
public class Saveadmin extends HttpServlet
{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
{
	int id=Integer.parseInt(req.getParameter("aid"));
	String name=req.getParameter("aname");
	long contact=Long.parseLong(req.getParameter("acontact"));
	String email=req.getParameter("aemail");
	String password=req.getParameter("apassword");
	Admin ad=new Admin();
	ad.setAdminid(id);
	ad.setAdminname(name);
	ad.setAdmincontact(contact);
	ad.setAdminemail(email);
	ad.setAdminpassword(password);
	Dao d=new Dao();
	try {
		int res=d.saveAdmin(ad);
		if(res>0)
		{
			req.getRequestDispatcher("Alogin.jsp").include(req, resp);
		}
		else
		{
			req.setAttribute("message", "field Missing");
			req.getRequestDispatcher("Asingup.jsp").include(req, resp);
		}
	} catch (ClassNotFoundException | SQLException e) 
	{
		req.setAttribute("message", "Duplicate or repeated value please check the values");
		req.getRequestDispatcher("Asingup.jsp").include(req, resp);
	}
			
}
}
