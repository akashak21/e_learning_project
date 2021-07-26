package com.amdocs.training.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import dao.ContactDAO;
import dao.impl.ContactDAOImpl;
import model.Contact;



@Controller
public class ContactController {

	ContactDAO contactdao=new ContactDAOImpl();
	
	@GetMapping("/contact-list")
	public String usersPage(Model model) {
		
		List<Contact> contactList = contactdao.findall();
		model.addAttribute("list", contactList);
		return "contact";
	}
	
	@GetMapping("/addContact")
	public String addUserForm(Model model) {
		model.addAttribute("contact", new Contact());
		return "add-contact";
	}
	
	@PostMapping("/registercontact")
	public String addUser(@ModelAttribute("contact") Contact u) {
		contactdao.addContact(u);
		return "redirect:/contact-list";
	}
	
	@GetMapping("/delete-contact/{contact_id}")
	public String deleteUser(@PathVariable("contact_id") int contact_id) {
		contactdao.deleteContact(contact_id);
		return "redirect:/contact-list";
	}
	

	@GetMapping("/update-contact/{contact_id}")
	public String updateUserForm(@PathVariable("contact_id")int contact_id, Model model) {
		Contact contact = contactdao.getContactById(contact_id);
		model.addAttribute("contact", contact);
		return "update-contact";
	}
	
	@PostMapping("/update-contact")
	public String updateUser(@ModelAttribute("contact")Contact contact) {
		contactdao.updateContact(contact);
		return "redirect:/contact-list";
	}

}
