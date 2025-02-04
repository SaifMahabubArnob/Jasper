package com.example.ticketBookingManagementSystem.controller;


import com.example.ticketBookingManagementSystem.entity.HotelBooking;
import com.example.ticketBookingManagementSystem.service.HotelBookingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/hotelBookings")
public class HotelBookingController {

    @Autowired
    private HotelBookingService hotelBookingService;

    // Create a new hotel booking
    @PostMapping
    public ResponseEntity<HotelBooking> createHotelBooking(@RequestBody HotelBooking hotelBooking) {
        HotelBooking createdHotelBooking = hotelBookingService.createHotelBooking(hotelBooking);
        return new ResponseEntity<>(createdHotelBooking, HttpStatus.CREATED);
    }

    // Get all hotel bookings
    @GetMapping
    public ResponseEntity<List<HotelBooking>> getAllHotelBookings() {
        List<HotelBooking> hotelBookings = hotelBookingService.getAllHotelBookings();
        return new ResponseEntity<>(hotelBookings, HttpStatus.OK);
    }

    // Get hotel booking by ID
    @GetMapping("/{id}")
    public ResponseEntity<HotelBooking> getHotelBookingById(@PathVariable Long id) {
        Optional<HotelBooking> hotelBooking = hotelBookingService.getHotelBookingById(id);
        if (hotelBooking.isPresent()) {
            return new ResponseEntity<>(hotelBooking.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // Update an existing hotel booking
    @PutMapping("/{id}")
    public ResponseEntity<HotelBooking> updateHotelBooking(@PathVariable Long id, @RequestBody HotelBooking hotelBooking) {
        HotelBooking updatedHotelBooking = hotelBookingService.updateHotelBooking(id, hotelBooking);
        return new ResponseEntity<>(updatedHotelBooking, HttpStatus.OK);
    }

    // Delete a hotel booking
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteHotelBooking(@PathVariable Long id) {
        hotelBookingService.deleteHotelBooking(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}
