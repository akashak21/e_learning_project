package com.amdocs.training.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dao.UserDAO;
import dao.impl.UserDAOImpl;
import model.user;

@Controller
public class UserController {
	
	UserDAO userdao=new UserDAOImpl();
	
	@GetMapping("/user-list")
	public String usersPage(Model model) {
		
		List<user> userList = userdao.findAll();
		model.addAttribute("list", userList);
		return "users";
	}
	
	@GetMapping("/addUser")
	public String addUserForm(Model model) {
		model.addAttribute("user", new user());
		return "add-user";
	}
	
	@PostMapping("/register")
	public String addUser(@ModelAttribute("user") user u) {
		userdao.addUser(u);
		return "index";
	}
	
	@GetMapping("/delete-user/{user_id}")
	public String deleteUser(@PathVariable("user_id") int user_id) {
		userdao.deleteUser(user_id);
		return "redirect:/user-list";
	}
	
	
	@GetMapping("/update-user/{user_id}")
	public String updateUserForm(@PathVariable("user_id")int user_id, Model model) {
		user user = userdao.getUserById(user_id);
		model.addAttribute("user", user);
		return "update-user";
	}
	
	@PostMapping("/update-user")
	public String updateUser(@ModelAttribute("user") user user) {
		userdao.updateUser(user);
		return "redirect:/user-list";
	}


}
