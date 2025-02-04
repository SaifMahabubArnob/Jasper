//package com.example.ticketBookingManagementSystem.controller;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.validation.BindingResult;
//import org.springframework.validation.annotation.Validated;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PostMapping;
//
//import com.example.ticketBookingManagementSystem.entity.BusBooking;
//import com.example.ticketBookingManagementSystem.service.BusBookingService;
//
//@Controller
//public class BusBookingController {
//
//    @Autowired
//    private BusBookingService busBookingService;
//
//    @PostMapping("/busSearch")
//    public String searchBus(@ModelAttribute @Validated BusBooking busBooking, BindingResult bindingResult, Model model) {
//        if (bindingResult.hasErrors()) {
//            return "bookingForm";  // If validation fails
//        }
//
//        // Save the booking if validation passes
//        BusBooking savedBooking = busBookingService.saveBooking(busBooking);
//        
//        // Add the saved booking to the model and return the view name
//        model.addAttribute("booking", savedBooking);
//        return "bookingDetails";  // Or the confirmation page
//    }
//}





























package com.example.ticketBookingManagementSystem.controller;

import com.example.ticketBookingManagementSystem.entity.BusBooking;
import com.example.ticketBookingManagementSystem.service.BusBookingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/busBookings") // Base URL for BusBooking API
public class BusBookingController {

    @Autowired
    private BusBookingService busBookingService;

    // Create a new booking
    @PostMapping
    public ResponseEntity<BusBooking> createBooking(@RequestBody BusBooking busBooking) {
        BusBooking savedBooking = busBookingService.saveBooking(busBooking);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedBooking);
    }

    // Get all bookings
    @GetMapping
    public ResponseEntity<List<BusBooking>> getAllBookings() {
        List<BusBooking> bookings = busBookingService.getAllBookings();
        return ResponseEntity.ok(bookings);
    }

    // Get booking by ID
    @GetMapping("/{id}")
    public ResponseEntity<?> getBookingById(@PathVariable Long id) {
        BusBooking booking = busBookingService.getBookingById(id);
        if (booking != null) {
            return ResponseEntity.ok(booking);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Booking not found with ID: " + id);
        }
    }

    // Update an existing booking
    @PutMapping("/{id}")
    public ResponseEntity<?> updateBooking(@PathVariable Long id, @RequestBody BusBooking busBooking) {
        BusBooking updatedBooking = busBookingService.updateBooking(id, busBooking);
        if (updatedBooking != null) {
            return ResponseEntity.ok(updatedBooking);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Booking not found for update with ID: " + id);
        }
    }

    // Delete a booking by ID
    @DeleteMapping("/{id}")
    public ResponseEntity<?> deleteBooking(@PathVariable Long id) {
        boolean isDeleted = busBookingService.deleteBooking(id);
        if (isDeleted) {
            return ResponseEntity.ok("Booking deleted successfully with ID: " + id);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Booking not found for deletion with ID: " + id);
        }
    }
}













