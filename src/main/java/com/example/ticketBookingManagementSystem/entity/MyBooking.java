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
public class MyBooking {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;  // Booking ID

    private Long userId;  // User ID who made the booking
    private Long serviceId; // Service ID (e.g., Flight ID, Event ID, Hotel ID)
    private String bookingDate; // Date when the booking was made
    private String departureDate; // Departure date
    private String returnDate; // Return date (if applicable)
    private String status; // Booking status (e.g., CONFIRMED, PENDING, CANCELLED)
    private int totalAmount; // Total amount for the booking
    private String paymentMethod; // Payment method (e.g., Credit Card, PayPal)
    private String paymentStatus; // Payment status (e.g., PAID, PENDING)
    private String passengerName; // Passenger name(s) for the booking
    private String passengerEmail; // Passenger email
    private String passengerPhone; // Passenger phone number
    private String specialRequests; // Any special requests (e.g., meal preferences, seating preferences)
    private String sourceLocation; // Departure location (e.g., airport or city)
    private String destinationLocation; // Destination location (e.g., airport or city)
    private String bookingReference; // Unique booking reference number
    private String cancellationPolicy; // Cancellation policy for the booking
}
