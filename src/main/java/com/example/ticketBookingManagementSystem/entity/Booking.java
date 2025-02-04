package com.example.ticketBookingManagementSystem.entity;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
@Entity
public class Booking {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    private User user;

    @ManyToOne
    private Transport transport;

    private Integer seatCount;
    private Double totalPrice;
    private LocalDateTime bookingDate;
    private String status; // CONFIRMED or CANCELED

    @Version
    private int version; // Added for Optimistic Locking
}
