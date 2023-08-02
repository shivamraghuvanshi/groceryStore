package com.example.java;

import java.io.IOException;
import java.io.PrintWriter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.java.jpaconn.AccountDetail;
import com.example.java.jpaconn.signup;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class controller 
{
	@Autowired
	signup signup;
	RequestDispatcher dispacher=null;
	@RequestMapping("/home")
	public String home() 
	{
		System.out.println("Inside Home");
		return "login.jsp";
	}
 }
