package com.example.ticketBookingManagementSystem.repository;

import com.example.ticketBookingManagementSystem.entity.Transport;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TransportRepository extends JpaRepository<Transport, Long> {
    List<Transport> findBySourceAndDestination(String source, String destination);
}
