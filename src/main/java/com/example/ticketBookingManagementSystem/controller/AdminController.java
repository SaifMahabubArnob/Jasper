//package com.example.ticketBookingManagementSystem.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.*;
//
//import com.example.ticketBookingManagementSystem.entity.Ticket;
//import com.example.ticketBookingManagementSystem.service.TicketService;
//@Controller
//@RequestMapping("/admin")
//public class AdminController {
//
//    @Autowired
//    private TicketService ticketService;
//
//    // Display all tickets
//    @GetMapping("/tickets")
//    public String viewTickets(Model model) {
//        model.addAttribute("tickets", ticketService.getAllTickets());
//        return "ticket-list"; // JSP file for listing tickets
//    }
//
//    // Show form to create a new ticket
//    @GetMapping("/tickets/new")  // Correct the mapping here
//    public String createTicketForm(Model model) {
//        model.addAttribute("ticket", new Ticket());
//        return "ticket-form"; // JSP form for creating new ticket
//    }
//
//    // Save a new ticket
//    @PostMapping("/tickets")
//    public String saveTicket(@ModelAttribute Ticket ticket) {
//        ticketService.createTicket(ticket);
//        return "redirect:/admin/tickets";
//    }
//
//    // Edit ticket form
//    @GetMapping("/tickets/edit/{id}")
//    public String editTicketForm(@PathVariable Long id, Model model) {
//        Ticket ticket = ticketService.getTicket(id).orElseThrow(() -> new RuntimeException("Ticket not found"));
//        model.addAttribute("ticket", ticket);
//        return "ticket-form"; // JSP form for editing ticket
//    }
//
//    // Update ticket
//    @PostMapping("/tickets/{id}")
//    public String updateTicket(@PathVariable Long id, @ModelAttribute Ticket ticketDetails) {
//        ticketService.updateTicket(id, ticketDetails);
//        return "redirect:/admin/tickets";
//    }
//
//    // Delete ticket
//    @GetMapping("/tickets/delete/{id}")
//    public String deleteTicket(@PathVariable Long id) {
//        ticketService.deleteTicket(id);
//        return "redirect:/admin/tickets";
//    }
//}



















package com.example.ticketBookingManagementSystem.controller;

import com.example.ticketBookingManagementSystem.entity.Admin;
import com.example.ticketBookingManagementSystem.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/admin")  // Change the URL to reflect AdminController
public class AdminController {

    @Autowired
    private AdminService adminService;  // Service should be adminService, not ticketService

    @GetMapping
    public List<Admin> getAllAdmins() {
        return adminService.getAllAdmins();  // Updated service method
    }

    @GetMapping("/{id}")
    public ResponseEntity<Admin> getAdminById(@PathVariable Long id) {
        Admin admin = adminService.getAdminById(id);  // Updated service method
        if (admin != null) {
            return ResponseEntity.ok(admin);
        }
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
    }

    @PostMapping
    public ResponseEntity<Admin> createAdmin(@RequestBody Admin admin) {
        Admin savedAdmin = adminService.createAdmin(admin);  // Updated service method
        return ResponseEntity.status(HttpStatus.CREATED).body(savedAdmin);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Admin> updateAdmin(@PathVariable Long id, @RequestBody Admin admin) {
        Admin updatedAdmin = adminService.updateAdmin(id, admin);  // Updated service method
        if (updatedAdmin != null) {
            return ResponseEntity.ok(updatedAdmin);
        }
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteAdmin(@PathVariable Long id) {
        boolean isDeleted = adminService.deleteAdmin(id);  // Updated service method
        if (isDeleted) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }
        return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
    }
}
