package com.example.ticketBookingManagementSystem.repository;


import com.example.ticketBookingManagementSystem.entity.MyBooking;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MyBookingRepository extends JpaRepository<MyBooking, Long> {
    // You can define custom query methods here if needed
}
