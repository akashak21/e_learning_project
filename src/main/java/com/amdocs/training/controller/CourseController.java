package com.amdocs.training.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import dao.AdminDAO;
import dao.CoursesDAO;
import dao.impl.AdminDAOImpl;
import dao.impl.CoursesDAOImpl;
import model.Admin;
import model.courses;



@Controller
public class CourseController {

	CoursesDAO coursedao=new CoursesDAOImpl();
	
	@GetMapping("/course-list")
	public String usersPage(Model model) {
		
		List<courses> courseList = coursedao.findAll();
		model.addAttribute("list", courseList);
		return "courses";
	}
	@GetMapping("/course-list-admin")
	public String AdminCourseView(Model model) {
		
		List<courses> courseList = coursedao.findAll();
		model.addAttribute("list", courseList);
		return "admincoursesview";
	}
	@GetMapping("/addCourse")
	public String addUserForm(Model model) {
		model.addAttribute("course", new courses());
		return "add-course";
	}
	
	@PostMapping("/registercourse")
	public String addUser(@ModelAttribute("course") courses u) {
		coursedao.addCourses(u);
		return "redirect:/course-list-admin";
	}
	
	@GetMapping("/delete-course/{course_id}")
	public String deleteUser(@PathVariable("course_id") int course_id) {
		coursedao.deleteCourse(course_id);
		return "redirect:/course-list-admin";
	}
	

	@GetMapping("/update-course/{course_id}")
	public String updateUserForm(@PathVariable("course_id")int course_id, Model model) {
		courses course = coursedao.getCoursesById(course_id);
		model.addAttribute("course", course);
		return "update-course";
	}
	
	@PostMapping("/update-course")
	public String updateUser(@ModelAttribute("course")courses course) {
		coursedao.updateCourses(course);
		return "redirect:/course-list-admin";
	}
	
	

}
