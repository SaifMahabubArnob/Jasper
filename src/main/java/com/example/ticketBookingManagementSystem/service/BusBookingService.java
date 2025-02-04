//package com.example.ticketBookingManagementSystem.service;
//
//
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//import com.example.ticketBookingManagementSystem.entity.BusBooking;
//import com.example.ticketBookingManagementSystem.repository.BusBookingRepository;
//
//@Service
//public class BusBookingService {
//
//    @Autowired
//    private BusBookingRepository busBookingRepository;
//
//    @Transactional
//    public BusBooking saveBooking(BusBooking busBooking) {
//        return busBookingRepository.save(busBooking);  // Save the booking to the database
//    }
//}




























package com.example.ticketBookingManagementSystem.service;

import com.example.ticketBookingManagementSystem.entity.BusBooking;
import com.example.ticketBookingManagementSystem.repository.BusBookingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BusBookingService {

    @Autowired
    private BusBookingRepository busBookingRepository;

    // Save a booking
    public BusBooking saveBooking(BusBooking busBooking) {
        return busBookingRepository.save(busBooking);
    }

    // Get all bookings
    public List<BusBooking> getAllBookings() {
        return busBookingRepository.findAll();
    }

    // Get booking by ID
    public BusBooking getBookingById(Long id) {
        return busBookingRepository.findById(id).orElse(null);
    }

    // Update a booking
    public BusBooking updateBooking(Long id, BusBooking busBooking) {
        if (busBookingRepository.existsById(id)) {
            busBooking.setId(id);
            return busBookingRepository.save(busBooking);
        }
        return null;
    }

    // Delete a booking
    public boolean deleteBooking(Long id) {
        if (busBookingRepository.existsById(id)) {
            busBookingRepository.deleteById(id);
            return true;
        }
        return false;
    }
}

