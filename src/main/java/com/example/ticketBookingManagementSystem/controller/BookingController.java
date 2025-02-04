//package com.example.ticketBookingManagementSystem.controller;
//
//import com.example.ticketBookingManagementSystem.entity.Booking;
//import com.example.ticketBookingManagementSystem.entity.Transport;
//import com.example.ticketBookingManagementSystem.entity.User;
//import com.example.ticketBookingManagementSystem.service.BookingService;
//import com.example.ticketBookingManagementSystem.service.TransportService;
//import com.example.ticketBookingManagementSystem.service.UserService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.*;
//
//
//import java.time.LocalDateTime;
//import java.util.List;
//
//@RestController
//@RequestMapping("/bookings")
//public class BookingController {
//    @Autowired
//    private BookingService bookingService;
//
//    @Autowired
//    private UserService userService;
//
//    @Autowired
//    private TransportService transportService;
//
//    // Create a new booking
//    @PostMapping("/create")
//    public String createBooking(@RequestParam Long userId, 
//                                @RequestParam Long transportId, 
//                                @RequestParam Integer seatCount) {
//        // Find User and Transport by ID
//        User user = userService.findByEmail(userId.toString()); // Update this line with real logic if needed
//        Transport transport = transportService.findTransportById(transportId);
//        if (user == null || transport == null) {
//            return "Invalid user or transport ID!";
//        }
//
//        // Check seat availability
//        if (transport.getTotalSeats() < seatCount) {
//            return "Not enough seats available!";
//        }
//
//        // Calculate total price
//        Double totalPrice = transport.getPricePerSeat() * seatCount;
//
//        // Create and save booking
//        Booking booking = new Booking();
//        booking.setUser(user);
//        booking.setTransport(transport);
//        booking.setSeatCount(seatCount);
//        booking.setTotalPrice(totalPrice);
//        booking.setBookingDate(LocalDateTime.now());
//        booking.setStatus("CONFIRMED");
//
//        bookingService.saveBooking(booking);
//
//        // Update seat availability
//        transport.setTotalSeats(transport.getTotalSeats() - seatCount);
//        transportService.updateTransport(transport);
//
//        return "Booking created successfully!";
//    }
//
//    // Get bookings by user
//    @GetMapping("/user/{userId}")
//    public List<Booking> getBookingsByUser(@PathVariable Long userId) {
//        User user = userService.findByEmail(userId.toString()); // Update this line
//        if (user == null) {
//            throw new RuntimeException("User not found!");
//        }
//        return bookingService.findBookingsByUser(user);
//    }
//
//    // Cancel a booking
//    @PutMapping("/cancel/{bookingId}")
//    public String cancelBooking(@PathVariable Long bookingId) {
//        Booking booking = bookingService.findBookingById(bookingId);
//        if (booking == null || "CANCELED".equalsIgnoreCase(booking.getStatus())) {
//            return "Booking not found or already canceled!";
//        }
//
//        // Update booking status
//        booking.setStatus("CANCELED");
//        bookingService.saveBooking(booking);
//
//        // Update seat availability in transport
//        Transport transport = booking.getTransport();
//        transport.setTotalSeats(transport.getTotalSeats() + booking.getSeatCount());
//        transportService.updateTransport(transport);
//
//        return "Booking canceled successfully!";
//    }
//}


package com.example.ticketBookingManagementSystem.controller;

import com.example.ticketBookingManagementSystem.entity.Booking;
import com.example.ticketBookingManagementSystem.service.BookingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import org.springframework.orm.ObjectOptimisticLockingFailureException;

import java.util.List;

@RestController
@RequestMapping("/api/bookings")  // Endpoint for booking management
public class BookingController {

    @Autowired
    private BookingService bookingService;

    // Get all bookings
    @GetMapping
    public List<Booking> getAllBookings() {
        return bookingService.getAllBookings();
    }

    // Get booking by ID
    @GetMapping("/{id}")
    public ResponseEntity<Booking> getBookingById(@PathVariable int id) {
        Booking booking = bookingService.getBookingById(id);
        if (booking != null) {
            return ResponseEntity.ok(booking);
        }
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
    }

    // Create a new booking
    @PostMapping
    public ResponseEntity<Booking> createBooking(@RequestBody Booking booking) {
        Booking savedBooking = bookingService.createBooking(booking);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedBooking);
    }

    // Update an existing booking
    @PutMapping("/{id}")
    public ResponseEntity<Booking> updateBooking(@PathVariable int id, @RequestBody Booking booking) {
        try {
            Booking updatedBooking = bookingService.updateBooking(id, booking);
            if (updatedBooking != null) {
                return ResponseEntity.ok(updatedBooking);
            }
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
        } catch (ObjectOptimisticLockingFailureException e) {
            return ResponseEntity.status(HttpStatus.CONFLICT)
                    .body(null); // or send a custom message like "Optimistic locking failed. Please try again."
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
        }
    }

    // Delete a booking
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteBooking(@PathVariable int id) {
        boolean isDeleted = bookingService.deleteBooking(id);
        if (isDeleted) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }
        return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
    }
}
