package com.amdocs.training.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import dao.FeedbackDAO;
import dao.impl.FeedbackDAOImpl;
import model.Feedback;

@Controller
public class FeedbackController {
	
	FeedbackDAO feedbackdao=new FeedbackDAOImpl();
	
	@GetMapping("/feedback-list")
	public String FeedbackPage(Model model) {
		
		List<Feedback> feedbackList = feedbackdao.findAll();
		model.addAttribute("list1", feedbackList);
		return "feedbacks";
	}
	
	@GetMapping("/addFeedback")
	public String addUserForm(Model model) {
		model.addAttribute("feedback", new Feedback());
		return "add-feedback";
	}
	
	@PostMapping("/registerfeedback")
	public String addFeedback(@ModelAttribute("feedback") Feedback u) {
		feedbackdao.addFeedback(u);
		return "redirect:/feedback-list";
	}
	
	@GetMapping("/delete-feedback/{f_id}")
	public String deleteUser(@PathVariable("f_id") int f_id) {
		feedbackdao.deleteFeedback(f_id);
		return "redirect:/feedback-list";
	}
	
	
	@GetMapping("/update-feedback/{f_id}")
	public String updateUserForm(@PathVariable("f_id")int f_id, Model model) {
		Feedback feedback = feedbackdao.getFeedbackById(f_id);
		model.addAttribute("feedback", feedback);
		return "update-feedback";
	}
	
	@PostMapping("/update-feedback")
	public String updateUser(@ModelAttribute("feedback") Feedback feedback) {
		feedbackdao.updateFeedback(feedback);
		return "redirect:/feedback-list";
	}


}
