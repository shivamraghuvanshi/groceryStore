package com.example.java;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.java.jpaconn.AccountDetail;
import com.example.java.jpaconn.signup;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Autowired
	signup signup;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname= request.getParameter("username");
		String pass= request.getParameter("password");

		RequestDispatcher dispacher=null;
		try {
			AccountDetail user=signup.findByName(uname);
			System.out.println(user);
			if(user==null||!user.getPass().equals(pass)) {
				request.setAttribute("status", "failed");
				dispacher=request.getRequestDispatcher("login.jsp");
			}
			else {
				dispacher=request.getRequestDispatcher("index.jsp");
			}
			dispacher.forward(request, response);
		}
		catch(Exception e) {
		e.printStackTrace();	
		}
	}
}