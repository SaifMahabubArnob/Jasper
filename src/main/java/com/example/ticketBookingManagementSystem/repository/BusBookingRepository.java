package com.example.ticketBookingManagementSystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.ticketBookingManagementSystem.entity.BusBooking;

public interface BusBookingRepository extends JpaRepository<BusBooking, Long> {
}
