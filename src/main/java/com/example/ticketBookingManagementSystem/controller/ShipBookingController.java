package com.example.ticketBookingManagementSystem.controller;


import com.example.ticketBookingManagementSystem.entity.ShipBooking;
import com.example.ticketBookingManagementSystem.service.ShipBookingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/shipBookings")
public class ShipBookingController {

    @Autowired
    private ShipBookingService shipBookingService;

    // Create a new ship booking
    @PostMapping
    public ResponseEntity<ShipBooking> createShipBooking(@RequestBody ShipBooking shipBooking) {
        ShipBooking createdShipBooking = shipBookingService.createShipBooking(shipBooking);
        return new ResponseEntity<>(createdShipBooking, HttpStatus.CREATED);
    }

    // Get all ship bookings
    @GetMapping
    public ResponseEntity<List<ShipBooking>> getAllShipBookings() {
        List<ShipBooking> shipBookings = shipBookingService.getAllShipBookings();
        return new ResponseEntity<>(shipBookings, HttpStatus.OK);
    }

    // Get ship booking by ID
    @GetMapping("/{id}")
    public ResponseEntity<ShipBooking> getShipBookingById(@PathVariable Long id) {
        Optional<ShipBooking> shipBooking = shipBookingService.getShipBookingById(id);
        if (shipBooking.isPresent()) {
            return new ResponseEntity<>(shipBooking.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    // Update an existing ship booking
    @PutMapping("/{id}")
    public ResponseEntity<ShipBooking> updateShipBooking(@PathVariable Long id, @RequestBody ShipBooking shipBooking) {
        ShipBooking updatedShipBooking = shipBookingService.updateShipBooking(id, shipBooking);
        return new ResponseEntity<>(updatedShipBooking, HttpStatus.OK);
    }

    // Delete a ship booking
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteShipBooking(@PathVariable Long id) {
        shipBookingService.deleteShipBooking(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}
