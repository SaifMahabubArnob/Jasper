package com.example.ticketBookingManagementSystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	
	 @GetMapping("/login")
	    public String showLoginPage() {
	        return "login";  
	    }
	
	
	 
	 @PostMapping("/login")
	    public String processLogin(@RequestParam String username, @RequestParam String password) {
	        // এখানে তুমি ব্যবহারকারীর ইউজারনেম এবং পাসওয়ার্ড যাচাই করতে পারো
	        // যদি সঠিক হয়, তবে লগইন সফল, অন্যথায় ত্রুটি দেখাতে পারো
	        return "redirect:/dashboard";  // লগইন সফল হলে ড্যাশবোর্ডে পাঠিয়ে দেবে
	    }
	 
	 
}
