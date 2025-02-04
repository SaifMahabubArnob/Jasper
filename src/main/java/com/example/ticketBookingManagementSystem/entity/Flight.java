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
public class Flight {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String tripType;
    private String fromLocation;
    private String toLocation;
    private String journeyDate;
    private String returnDate;
    private String arrivalTime;
    private String passengerType;
    private int passengerCount;
    private String mealPreference;
    private String classType;
    private String insurance;
    private String couponCode;
    private String airline;
    private int ticketPrice;
    private String paymentMethod;
}
