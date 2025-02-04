package com.example.ticketBookingManagementSystem.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.ticketBookingManagementSystem.entity.FlightSearch;



@Repository
public interface FlightSearchRepository extends JpaRepository<FlightSearch, Long> {
}