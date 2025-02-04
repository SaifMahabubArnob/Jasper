package com.example.ticketBookingManagementSystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DashboardController {

	
	  @GetMapping("/dashboard")
	    public String showDashboard() {
	        // Dashboard JSP বা থাইমল টেমপ্লেটের নাম রিটার্ন করতে হবে
	        return "dashboard";  // dashboard.jsp অথবা dashboard.html ফাইলটির নাম
	    }
	
	
}
