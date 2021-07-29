package com.amdocs.training.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import dao.AdminDAO;
import dao.impl.AdminDAOImpl;
import model.Admin;
import model.courses;

@Controller
public class AdminController {
AdminDAO admindao = new AdminDAOImpl();
	
	@GetMapping("/admin-view-list")
	public String adminlist(Model model) {
		
		List<Admin> adminList = admindao.findAll();
		model.addAttribute("list", adminList);
		return "admins";
	}
	
	@GetMapping("/delete-admin/{admin_id}")
	public String deleteAdmin(@PathVariable("admin_id") int admin_id) {
		admindao.deleteAdmin(admin_id);
		return "redirect:/admin-view-list";
	}
	
	@GetMapping("/addAdmin")
	public String addAdminForm(Model model) {
		model.addAttribute("admin", new Admin());
		return "add-admin";
	}
	
	@PostMapping("/registeradmin")
	public String addAdmin(@ModelAttribute("admin") Admin u) {
		admindao.addAdmin(u);
		return "redirect:/admin-view-list";
	}
	
	@GetMapping("/update-admin/{admin_id}")
	public String updateAdminForm(@PathVariable("admin_id")int admin_id, Model model) {
		Admin admin = admindao.getAdminById(admin_id);
		model.addAttribute("admin", admin);
		return "update-admin";
	}
	
	@PostMapping("/update-admin")
	public String updateAdmin(@ModelAttribute("admin")Admin admin) {
		admindao.updateAdmin(admin);
		return "redirect:/admin-view-list";
	}

}
