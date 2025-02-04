package com.example.ticketBookingManagementSystem.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Transport {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String type; // Example: Bus, Train, Flight
    private String name; // Example: Transport name
    private Integer totalSeats; // Total seats available
    private Double pricePerSeat; // Price per seat
    private String source; // Source location
    private String destination; // Destination location

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    // Getter for totalSeats
    public Integer getTotalSeats() {
        return totalSeats;
    }

    // Setter for totalSeats
    public void setTotalSeats(Integer totalSeats) {
        this.totalSeats = totalSeats;
    }

    public Double getPricePerSeat() {
        return pricePerSeat;
    }

    public void setPricePerSeat(Double pricePerSeat) {
        this.pricePerSeat = pricePerSeat;
    }

    // Getter and Setter for source
    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    // Getter and Setter for destination
    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }
}
