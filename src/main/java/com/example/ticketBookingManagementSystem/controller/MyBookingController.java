package com.example.ticketBookingManagementSystem.controller;


import com.example.ticketBookingManagementSystem.entity.MyBooking;
import com.example.ticketBookingManagementSystem.service.MyBookingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/mybookings")
public class MyBookingController {

    @Autowired
    private MyBookingService myBookingService;

    // Create a new booking
    @PostMapping
    public ResponseEntity<MyBooking> createBooking(@RequestBody MyBooking myBooking) {
        MyBooking createdBooking = myBookingService.createBooking(myBooking);
        return new ResponseEntity<>(createdBooking, HttpStatus.CREATED);
    }

    // Get all bookings
    @GetMapping
    public ResponseEntity<List<MyBooking>> getAllBookings() {
        List<MyBooking> bookings = myBookingService.getAllBookings();
        return new ResponseEntity<>(bookings, HttpStatus.OK);
    }

    // Get booking by ID
    @GetMapping("/{id}")
    public ResponseEntity<MyBooking> getBookingById(@PathVariable Long id) {
        MyBooking booking = myBookingService.getBookingById(id);
        return new ResponseEntity<>(booking, HttpStatus.OK);
    }

    // Update booking
    @PutMapping("/{id}")
    public ResponseEntity<MyBooking> updateBooking(@PathVariable Long id, @RequestBody MyBooking updatedBooking) {
        MyBooking booking = myBookingService.updateBooking(id, updatedBooking);
        return new ResponseEntity<>(booking, HttpStatus.OK);
    }

    // Delete booking
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteBooking(@PathVariable Long id) {
        myBookingService.deleteBooking(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}
