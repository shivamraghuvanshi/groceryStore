package com.example.java;


import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;


import com.example.java.jpaconn.prodRepo;


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/deletetocart")
public class deleteproduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Autowired
	prodRepo pr;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname= request.getParameter("name");

//		Grocery gr=pr.findByprodname(uname);
		Long rid=Long.parseLong(uname);
		/* HttpSession session=request.getSession(); */
		RequestDispatcher dispacher=null;
		try {
			pr.deleteById(rid);;
			System.out.println("delete  hua");
			dispacher=request.getRequestDispatcher("productsdisplay.jsp");
			dispacher.forward(request, response);
//			pr.save()
		}
		catch(Exception e) {
		e.printStackTrace();	
		}
	}
}