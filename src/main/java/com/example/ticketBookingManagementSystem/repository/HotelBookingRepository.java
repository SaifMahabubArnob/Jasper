package com.example.ticketBookingManagementSystem.repository;



import com.example.ticketBookingManagementSystem.entity.HotelBooking;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HotelBookingRepository extends JpaRepository<HotelBooking, Long> {
}
