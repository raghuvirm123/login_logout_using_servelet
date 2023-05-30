package com.signupProject;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.protocol.Resultset;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class login extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String uname = req.getParameter("username");
		String pass = req.getParameter("pass");
		HttpSession session=req.getSession();
		
		
		
		
		
		
		RequestDispatcher disp=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root & password=root");
			 PreparedStatement pst = con.prepareStatement("select * from login_project.user where uname = ? and pass = ? ");
			
			pst.setString(1, uname);
			pst.setString(2, pass);
			
			ResultSet rs= pst.executeQuery();
			
			if(rs.next())
			{
				session.setAttribute("uname", rs.getString("uname"));
				 disp = req.getRequestDispatcher("index.jsp");
			}
			else
			{
				req.setAttribute("status", "failed");
				disp = req.getRequestDispatcher("login.jsp");
			}
			disp.forward(req, resp);
		
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
