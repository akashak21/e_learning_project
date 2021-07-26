package com.amdocs.training.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import model.user;

@Controller
public class HomeController {
	Userlogin login =new Userlogin();

	@GetMapping("/")
	public String indexPage(Model model) {
		model.addAttribute("message","Welcome");
 		return "index";
	}
	
	@GetMapping("/checking")
	public String check(Model model) {
		
		return  "checks";
	}
	
	/*@PostMapping("/UserLogin/{user_id}")
	public String login(@PathVariable("user_id")int user_id) {
		boolean value = login.getPassword(user_id);
		
		return value == true ? "user_list" : "index";
	}*/
	@GetMapping("/User-Login/{user_id}")
	public String Userlogindb(@PathVariable("user_id")int user_id, Model model) {
		model.addAttribute("userlogin", user_id);
		return "User-Login";
	}
	
	@PostMapping("/User-Login")
	public String Userlogindata(@ModelAttribute("user") user user) {
		String value = login.getPassword(user.getUser_id());
		return value.equals(user.getPassword()) != true ? "index" : "redirect:/user-list";
	}
}
