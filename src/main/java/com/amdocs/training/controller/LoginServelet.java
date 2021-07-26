package com.amdocs.training.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.PostMapping;

import util.DButil;

@WebServlet("/UserLoginServlet")
public class LoginServelet extends HttpServlet{
	
	@Override
	@PostMapping
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
       int user_id = Integer.parseInt(request.getParameter("user_id"));
        String password = request.getParameter("password");
 
        Connection conn = DButil.getConnection();
    	boolean status=false;
    		
    		String sql = "select password from user1 where user_id = "+user_id;
    		try {
    			Statement stmt = conn.createStatement();
    			ResultSet rs = stmt.executeQuery(sql);
    			if(rs.next()) status = true;
    			else status = false;
    	} catch (SQLException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	}
        if(status) //If function returns success string then user will be rooted to Home page
         {
             //request.setAttribute("user_id", user_id); 
             request.getRequestDispatcher("user-list").forward(request, response); }
         else
         {
            request.getRequestDispatcher("index").forward(request, response);
         }
    }

}
