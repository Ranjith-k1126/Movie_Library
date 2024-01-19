package dao;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;

import com.mysql.cj.x.protobuf.MysqlxPrepare.Prepare;

import controller.Saveadmin;
import dto.Admin;
import dto.movie;

public class Dao {
	public Connection getconnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql:///moviedb", "root", "root");
	}

	public int saveAdmin(Admin admin) throws ClassNotFoundException, SQLException {
		Connection con = getconnection();
		PreparedStatement pst = con.prepareStatement("insert into admin values(?,?,?,?,?)");
		pst.setInt(1, admin.getAdminid());
		pst.setString(2, admin.getAdminname());
		pst.setLong(3, admin.getAdmincontact());
		pst.setString(4, admin.getAdminemail());
		pst.setString(5, admin.getAdminpassword());

		return pst.executeUpdate();
	}

	public Admin findbyemail(String adminemail) throws ClassNotFoundException, SQLException {
		Connection con = getconnection();
		PreparedStatement pt = con.prepareStatement("select * from admin where adminemail=?");
		pt.setString(1, adminemail);
		ResultSet rs = pt.executeQuery();
		if(rs.next())
		{
		Admin d = new Admin();
		d.setAdminid(rs.getInt(1));
		d.setAdminname(rs.getString(2));
		d.setAdmincontact(rs.getLong(3));
		d.setAdminemail(rs.getString(4));
		d.setAdminpassword(rs.getString(5));
		return d;
		}
		else {
			return null;
		}
	}
	public int savemovie(movie m) throws ClassNotFoundException, SQLException {
		Connection con = getconnection();
		PreparedStatement pst = con.prepareStatement("insert into movie values(?,?,?,?,?,?,?)");
		pst.setInt(1, m.getMovieid());
		pst.setString(2, m.getMoviename());
		pst.setDouble(3, m.getMovieprice());
		pst.setDouble(4, m.getMovierating());
		pst.setString(5, m.getMoviegenre());
		pst.setString(6, m.getMovielanguage());
		Blob imageblob = new SerialBlob(m.getMovieimage());
		pst.setBlob(7, imageblob);
		return pst.executeUpdate();
	}

	public List<movie> getallmovies() throws SQLException, ClassNotFoundException {
		Connection con = getconnection();
		PreparedStatement pst = con.prepareStatement("select * from movie");
		ResultSet rs = pst.executeQuery();
		List<movie> movies = new ArrayList<movie>();
		while (rs.next()) {
			movie m = new movie();
			m.setMovieid(rs.getInt(1));
			m.setMoviename(rs.getString(2));
			m.setMovieprice(rs.getDouble(3));
			m.setMovierating(rs.getDouble(4));
			m.setMoviegenre(rs.getString(5));
			m.setMovielanguage(rs.getString(6));
			Blob b = rs.getBlob(7);
			byte[] img = b.getBytes(1, (int) b.length());
			m.setMovieimage(img);
			movies.add(m);
		}
		return movies;

	}

	public int deletemovie(int id) throws ClassNotFoundException, SQLException {
		Connection con = getconnection();
		PreparedStatement pst = con.prepareStatement("delete from movie where movieid=?");
		pst.setInt(1, id);
		return pst.executeUpdate();

	}
	public movie findmoviebyid(int id) throws ClassNotFoundException, SQLException
	{
		Connection con=getconnection();
		PreparedStatement pst=con.prepareStatement("select * from movie where movieid=?");
		pst.setInt(1, id);
		ResultSet rs= pst.executeQuery();
		rs.next();
		movie m=new movie();
		m.setMovieid(rs.getInt(1));
		m.setMoviename(rs.getString(2));
		m.setMovieprice(rs.getDouble(3));
		m.setMovierating(rs.getDouble(4));
		m.setMoviegenre(rs.getString(5));
		m.setMovielanguage(rs.getString(6));
		Blob b=rs.getBlob(7);
		byte[] img=b.getBytes(1, (int)b.length());
		m.setMovieimage(img);
		return m;
		
	}
	public int updatemovie(movie m) throws ClassNotFoundException, SQLException
	{
		Connection con=getconnection();
		PreparedStatement pst=con.prepareStatement("update movie set moviename=?,movieprice=?,movierating=?,moviegenre=?,movielanguage=?,movieimage=? where movieid=?");
		pst.setInt(7, m.getMovieid());
		pst.setString(1, m.getMoviename());
		pst.setDouble(2, m.getMovieprice());
		pst.setDouble(3, m.getMovierating());
		pst.setString(4, m.getMoviegenre());
		pst.setString(5, m.getMovielanguage());
		Blob b=new SerialBlob(m.getMovieimage());
		pst.setBlob(6, b);
		return pst.executeUpdate();
		
	}
}
