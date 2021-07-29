package com.amdocs.training.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import model.Admin;
import model.user;

@Controller
public class HomeController {
	Userlogin login =new Userlogin();
	
	Adminlogin login1 = new Adminlogin();
	
	@GetMapping("/")
	public String indexPage(Model model) {
 		return "index";
	}
	@GetMapping("/home")
	public String UserindexPage(Model model) {
 		return "index";
	}
	@GetMapping("/adminlogin")
	public String AdminLoginPage(Model model) {
		return "admin-login";
	}
	
	@GetMapping("/User-Login/{user_id}")
	public String Userlogindb(@PathVariable("user_id")int user_id, Model model) {
		model.addAttribute("userlogin", user_id);
		return "User-Login";
	}
	
	@PostMapping("/User-Login")
	public String Userlogindata(@ModelAttribute("user") user user) {
		String value = login.getPassword(user.getUser_id());
		return value.equals(user.getPassword()) != true ? "index" : "redirect:/course-list";
	}
	
	@GetMapping("/Admin-Login/{admin_id}")
	public String Adminlogindb(@PathVariable("admin_id")int admin_id, Model model) {
		model.addAttribute("adminlogin", admin_id);
		return "Admin-Login";
	}
	
	@PostMapping("/Admin-Login")
	public String Adminlogindata(@ModelAttribute("admin") Admin admin) {
		String value = login1.getAdminPassword(admin.getAdmin_id());
		return value.equals(admin.getPassword()) != true ? "admin-login" : "redirect:/addCourse";
	}
}
