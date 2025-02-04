//package com.example.ticketBookingManagementSystem.controller;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.*;
//
//import com.example.ticketBookingManagementSystem.entity.Flight;
//import com.example.ticketBookingManagementSystem.service.FlightService;
//
//import java.util.List;
//
//@Controller
//public class FlightController {
//
//    @Autowired
//    private FlightService flightService;
//
//    // Save data to database
//    @PostMapping("/airSearch")
//    public String saveFlight(@ModelAttribute Flight flight, Model model) {
//        flightService.saveFlight(flight);
//        List<Flight> flights = flightService.getAllFlights();
//        model.addAttribute("flights", flights);
//        return "flights"; // Redirects to flights.jsp
//    }
//
//    // Show all flights
//    @GetMapping("/flights")
//    public String getAllFlights(Model model) {
//        List<Flight> flights = flightService.getAllFlights();
//        model.addAttribute("flights", flights);
//        return "flights";
//    }
//}















package com.example.ticketBookingManagementSystem.controller;

import com.example.ticketBookingManagementSystem.entity.Flight;
import com.example.ticketBookingManagementSystem.service.FlightService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/flights") // Base URL for Flight API
public class FlightController {

    @Autowired
    private FlightService flightService;

    // Create a new flight
    @PostMapping
    public ResponseEntity<Flight> createFlight(@RequestBody Flight flight) {
        Flight savedFlight = flightService.saveFlight(flight);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedFlight);
    }

    // Get all flights
    @GetMapping
    public ResponseEntity<List<Flight>> getAllFlights() {
        List<Flight> flights = flightService.getAllFlights();
        return ResponseEntity.ok(flights);
    }

    // Get a flight by ID
    @GetMapping("/{id}")
    public ResponseEntity<?> getFlightById(@PathVariable Long id) {
        Flight flight = flightService.getFlightById(id);
        if (flight != null) {
            return ResponseEntity.ok(flight);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Flight not found with ID: " + id);
        }
    }

    // Update an existing flight
    @PutMapping("/{id}")
    public ResponseEntity<?> updateFlight(@PathVariable Long id, @RequestBody Flight flight) {
        Flight updatedFlight = flightService.updateFlight(id, flight);
        if (updatedFlight != null) {
            return ResponseEntity.ok(updatedFlight);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Flight not found for update with ID: " + id);
        }
    }

    // Delete a flight by ID
    @DeleteMapping("/{id}")
    public ResponseEntity<?> deleteFlight(@PathVariable Long id) {
        boolean isDeleted = flightService.deleteFlight(id);
        if (isDeleted) {
            return ResponseEntity.ok("Flight deleted successfully with ID: " + id);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Flight not found for deletion with ID: " + id);
        }
    }
}



