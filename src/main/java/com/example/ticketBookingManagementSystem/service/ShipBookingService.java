package com.example.ticketBookingManagementSystem.service;



import com.example.ticketBookingManagementSystem.entity.ShipBooking;
import com.example.ticketBookingManagementSystem.repository.ShipBookingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ShipBookingService {

    @Autowired
    private ShipBookingRepository shipBookingRepository;

    // Create a new ship booking
    public ShipBooking createShipBooking(ShipBooking shipBooking) {
        return shipBookingRepository.save(shipBooking);
    }

    // Get all ship bookings
    public List<ShipBooking> getAllShipBookings() {
        return shipBookingRepository.findAll();
    }

    // Get a specific ship booking by ID
    public Optional<ShipBooking> getShipBookingById(Long id) {
        return shipBookingRepository.findById(id);
    }

    // Update an existing ship booking
    public ShipBooking updateShipBooking(Long id, ShipBooking shipBooking) {
        shipBooking.setId(id);
        return shipBookingRepository.save(shipBooking);
    }

    // Delete a ship booking
    public void deleteShipBooking(Long id) {
        shipBookingRepository.deleteById(id);
    }
}
