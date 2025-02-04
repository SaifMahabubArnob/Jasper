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
public class ShipBooking {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long userId;  // User ID for the person who is booking the ship
    private Long shipId; // Ship ID
    private String departurePort; // Departure port name
    private String destinationPort; // Destination port name
    private String departureDate; // Date of departure
    private String arrivalDate; // Date of arrival
    private int numberOfPassengers; // Number of passengers
    private String cabinType; // Cabin type (e.g., Economy, First Class)
    private int totalAmount; // Total cost for the booking
    private String bookingStatus; // Booking status (e.g., PENDING, CONFIRMED, CANCELLED)
    private String paymentMethod; // Payment method (e.g., Credit Card, PayPal)
    
    
    
    
    
    
}
