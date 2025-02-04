package com.example.ticketBookingManagementSystem.repository;




import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.ticketBookingManagementSystem.entity.Flight;

@Repository
public interface FlightRepository extends JpaRepository<Flight, Long> {
}
