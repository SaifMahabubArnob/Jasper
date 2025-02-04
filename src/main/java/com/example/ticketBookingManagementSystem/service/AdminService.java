//package com.example.ticketBookingManagementSystem.service;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.example.ticketBookingManagementSystem.entity.Ticket;
//import com.example.ticketBookingManagementSystem.repository.TicketRepository;
//
//import java.util.List;
//import java.util.Optional;
//
//@Service
//public class TicketService {
//
//    @Autowired
//    private TicketRepository ticketRepository;
//
//    // Get All Tickets
//    public List<Ticket> getAllTickets() {
//        return ticketRepository.findAll();
//    }
//
//    // Get Ticket by ID
//    public Optional<Ticket> getTicket(Long id) {
//        return ticketRepository.findById(id);
//    }
//
//    // Save new Ticket
//    public Ticket createTicket(Ticket ticket) {
//        return ticketRepository.save(ticket);
//    }
//
//    // Update Ticket
//    public Ticket updateTicket(Long id, Ticket ticketDetails) {
//        Ticket ticket = ticketRepository.findById(id)
//                .orElseThrow(() -> new RuntimeException("Ticket not found"));
//        ticket.setUserName(ticketDetails.getUserName());
//        ticket.setEventName(ticketDetails.getEventName());
//        ticket.setBookingDate(ticketDetails.getBookingDate());
//        return ticketRepository.save(ticket);
//    }
//
//    // Delete Ticket
//    public void deleteTicket(Long id) {
//        ticketRepository.deleteById(id);
//    }
//}










package com.example.ticketBookingManagementSystem.service;

import com.example.ticketBookingManagementSystem.entity.Admin;
import com.example.ticketBookingManagementSystem.repository.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AdminService {

    @Autowired
    private AdminRepository adminRepository;

    public List<Admin> getAllAdmins() {
        return adminRepository.findAll();
    }

    public Admin getAdminById(Long id) {
        Optional<Admin> admin = adminRepository.findById(id);
        return admin.orElse(null);
    }

    public Admin createAdmin(Admin admin) {
        return adminRepository.save(admin);
    }

    public Admin updateAdmin(Long id, Admin admin) {
        if (adminRepository.existsById(id)) {
            admin.setId(id);
            return adminRepository.save(admin);
        }
        return null;
    }

    public boolean deleteAdmin(Long id) {
        if (adminRepository.existsById(id)) {
            adminRepository.deleteById(id);
            return true;
        }
        return false;
    }
}
