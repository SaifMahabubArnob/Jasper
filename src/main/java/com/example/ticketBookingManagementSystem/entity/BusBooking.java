package com.example.ticketBookingManagementSystem.entity;



import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

@Getter
@Setter
@Entity
public class BusBooking {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String fromLocation;
    private String toLocation;

    @DateTimeFormat(pattern = "yyyy-MM-dd") // Add this annotation to format the date
    private Date journeyDate;

    private String journeyTime;
    private int seats;
    private String busClass;
    private String passengerName;
    private String phone;
    private String email;
    private String ageGroup;
    private String discountCode;
    private double fare;

    // Getters and Setters
    // ...
}
