//package com.example.ticketBookingManagementSystem.service;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.example.ticketBookingManagementSystem.entity.Flight;
//import com.example.ticketBookingManagementSystem.repository.FlightRepository;
//
//import java.util.List;
//
//@Service
//public class FlightService {
//
//    @Autowired
//    private FlightRepository flightRepository;
//
//    // Save flight to database
//    public void saveFlight(Flight flight) {
//        flightRepository.save(flight);
//    }
//
//    // Retrieve all flights
//    public List<Flight> getAllFlights() {
//        return flightRepository.findAll();
//    }
//}
























package com.example.ticketBookingManagementSystem.service;

import com.example.ticketBookingManagementSystem.entity.Flight;
import com.example.ticketBookingManagementSystem.repository.FlightRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FlightService {

    @Autowired
    private FlightRepository flightRepository;

    // Save a flight
    public Flight saveFlight(Flight flight) {
        return flightRepository.save(flight);
    }

    // Get all flights
    public List<Flight> getAllFlights() {
        return flightRepository.findAll();
    }

    // Get a flight by ID
    public Flight getFlightById(Long id) {
        return flightRepository.findById(id).orElse(null);
    }

    // Update a flight
    public Flight updateFlight(Long id, Flight flight) {
        if (flightRepository.existsById(id)) {
            flight.setId(id); // Set the existing ID to ensure update
            return flightRepository.save(flight);
        }
        return null;
    }

    // Delete a flight
    public boolean deleteFlight(Long id) {
        if (flightRepository.existsById(id)) {
            flightRepository.deleteById(id);
            return true;
        }
        return false;
    }
}

