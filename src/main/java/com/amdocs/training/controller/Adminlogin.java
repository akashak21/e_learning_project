package com.amdocs.training.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.springframework.web.bind.annotation.PostMapping;

import util.DButil;

public class Adminlogin {
	
	public Adminlogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	Connection conn = DButil.getConnection();
	
	@PostMapping("/admin-login-checks")
	public String getAdminPassword(int admin_id) {
		
		String sql = "select password from admin where admin_id = "+admin_id;
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
