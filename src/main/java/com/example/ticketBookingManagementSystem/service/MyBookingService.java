package com.example.ticketBookingManagementSystem.service;
import com.example.ticketBookingManagementSystem.entity.MyBooking;
import com.example.ticketBookingManagementSystem.exception.ResourceNotFoundException;
import com.example.ticketBookingManagementSystem.repository.MyBookingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MyBookingService {

    @Autowired
    private MyBookingRepository myBookingRepository;

    // Create a new booking
    public MyBooking createBooking(MyBooking myBooking) {
        return myBookingRepository.save(myBooking);
    }

    // Get all bookings
    public List<MyBooking> getAllBookings() {
        return myBookingRepository.findAll();
    }

    // Get booking by ID
    public MyBooking getBookingById(Long id) {
        return myBookingRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Booking not found with ID: " + id));
    }

    // Update booking
    public MyBooking updateBooking(Long id, MyBooking updatedBooking) {
        MyBooking existingBooking = myBookingRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Booking not found with ID: " + id));

        existingBooking.setUserId(updatedBooking.getUserId());
        existingBooking.setServiceId(updatedBooking.getServiceId());
        existingBooking.setBookingDate(updatedBooking.getBookingDate());
        existingBooking.setDepartureDate(updatedBooking.getDepartureDate());
        existingBooking.setReturnDate(updatedBooking.getReturnDate());
        existingBooking.setStatus(updatedBooking.getStatus());
        existingBooking.setTotalAmount(updatedBooking.getTotalAmount());
        existingBooking.setPaymentMethod(updatedBooking.getPaymentMethod());
        existingBooking.setPaymentStatus(updatedBooking.getPaymentStatus());
        existingBooking.setPassengerName(updatedBooking.getPassengerName());
        existingBooking.setPassengerEmail(updatedBooking.getPassengerEmail());
        existingBooking.setPassengerPhone(updatedBooking.getPassengerPhone());
        existingBooking.setSpecialRequests(updatedBooking.getSpecialRequests());
        existingBooking.setSourceLocation(updatedBooking.getSourceLocation());
        existingBooking.setDestinationLocation(updatedBooking.getDestinationLocation());
        existingBooking.setBookingReference(updatedBooking.getBookingReference());
        existingBooking.setCancellationPolicy(updatedBooking.getCancellationPolicy());

        return myBookingRepository.save(existingBooking);
    }

    // Delete booking
    public void deleteBooking(Long id) {
        MyBooking existingBooking = myBookingRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Booking not found with ID: " + id));
        myBookingRepository.delete(existingBooking);
    }
}
