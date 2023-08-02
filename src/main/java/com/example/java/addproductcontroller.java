package com.example.java;



import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.java.jpaconn.AccountDetail;
import com.example.java.jpaconn.Grocery;
import com.example.java.jpaconn.prodRepo;
import com.example.java.jpaconn.signup;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class Registration
 */
@WebServlet("/addproductcontroller")
public class addproductcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Autowired
	 prodRepo prodrepo;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher dispacher;         //dispatch the request to registration.jsp
		String pname= request.getParameter("product-name");
		String price= request.getParameter("product-price");
		String productquantity = request.getParameter("product-quantity");
		String image= request.getParameter("product-image");               
		PrintWriter out=response.getWriter();                                       //send the response back to the client
		prodrepo.save(new Grocery(pname,price,productquantity,image));                    //saves in database
		RequestDispatcher dispatcher = request.getRequestDispatcher("productsdisplay.jsp");
		dispatcher.forward(request, response);
	}
}
