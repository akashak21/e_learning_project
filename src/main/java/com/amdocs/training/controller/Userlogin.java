package com.amdocs.training.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.springframework.web.bind.annotation.PostMapping;

import util.DButil;

public class Userlogin {
	
	public Userlogin() {
		// TODO Auto-generated constructor stub
	}

	Connection conn = DButil.getConnection();
	
	@PostMapping("/user-login-checks")
	public String getPassword(int user_id) {
		
		String sql = "select password from user1 where user_id = "+user_id;
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()) return rs.getString("password");
			else return "";
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return "";
	}

}
