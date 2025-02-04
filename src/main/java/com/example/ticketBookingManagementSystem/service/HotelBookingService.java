package com.example.ticketBookingManagementSystem.service;


import com.example.ticketBookingManagementSystem.entity.HotelBooking;
import com.example.ticketBookingManagementSystem.repository.HotelBookingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class HotelBookingService {

    @Autowired
    private HotelBookingRepository hotelBookingRepository;

    // Create a new booking
    public HotelBooking createHotelBooking(HotelBooking hotelBooking) {
        return hotelBookingRepository.save(hotelBooking);
    }

    // Get all hotel bookings
    public List<HotelBooking> getAllHotelBookings() {
        return hotelBookingRepository.findAll();
    }

    // Get a specific hotel booking by ID
    public Optional<HotelBooking> getHotelBookingById(Long id) {
        return hotelBookingRepository.findById(id);
    }

    // Update a hotel booking
    public HotelBooking updateHotelBooking(Long id, HotelBooking hotelBooking) {
        hotelBooking.setId(id);
        return hotelBookingRepository.save(hotelBooking);
    }

    // Delete a hotel booking
    public void deleteHotelBooking(Long id) {
        hotelBookingRepository.deleteById(id);
    }
}
