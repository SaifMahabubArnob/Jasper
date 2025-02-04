package com.example.ticketBookingManagementSystem.entity;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class HotelBooking {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long userId;  // User ID for the person who is booking the hotel
    private Long hotelId; // ID of the hotel being booked
    private String checkInDate; // Check-in date
    private String checkOutDate; // Check-out date
    private int numberOfGuests; // Number of guests for the booking
    private String specialRequests; // Special requests from the guest (optional)
    private int totalAmount; // Total amount for the booking
    private String bookingStatus; // Booking status (e.g., PENDING, CONFIRMED, CANCELLED)
    private String paymentMethod; // Payment method for the booking
}
