//package com.example.ticketBookingManagementSystem.service;
//
//import com.example.ticketBookingManagementSystem.entity.Booking;
//import com.example.ticketBookingManagementSystem.entity.User;
//import com.example.ticketBookingManagementSystem.repository.BookingRepository;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import java.util.List;
//import java.util.Optional;
//
//@Service
//public class BookingService {
//    @Autowired
//    private BookingRepository bookingRepository;
//
//    public Booking saveBooking(Booking booking) {
//        return bookingRepository.save(booking);
//    }
//
//    public List<Booking> findBookingsByUser(User user) {
//        return bookingRepository.findByUser(user);
//    }
//
//    public Booking findBookingById(Long bookingId) {
//        Optional<Booking> booking = bookingRepository.findById(bookingId);
//        return booking.orElse(null);
//}}





package com.example.ticketBookingManagementSystem.service;

import com.example.ticketBookingManagementSystem.entity.Booking;
import com.example.ticketBookingManagementSystem.repository.BookingRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ObjectOptimisticLockingFailureException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BookingService {

    @Autowired
    private BookingRepository bookingRepository;

    // Get all bookings
    public List<Booking> getAllBookings() {
        return bookingRepository.findAll();
    }

    // Get booking by ID
    public Booking getBookingById(int id) {
        Optional<Booking> booking = bookingRepository.findById(id);
        return booking.orElse(null);
    }

    // Create a new booking
    @Transactional
    public Booking createBooking(Booking booking) {
        return bookingRepository.save(booking);
    }

    // Update an existing booking
    @Transactional
    public Booking updateBooking(int id, Booking booking) {
        try {
            if (bookingRepository.existsById(id)) {
                booking.setId(id);
                return bookingRepository.save(booking);
            }
            return null;
        } catch (ObjectOptimisticLockingFailureException e) {
            // Handle Optimistic Locking Failure
            throw new RuntimeException("Optimistic locking failed. Please try again.");
        }
    }

    // Delete a booking
    public boolean deleteBooking(int id) {
        if (bookingRepository.existsById(id)) {
            bookingRepository.deleteById(id);
            return true;
        }
        return false;
    }
}
