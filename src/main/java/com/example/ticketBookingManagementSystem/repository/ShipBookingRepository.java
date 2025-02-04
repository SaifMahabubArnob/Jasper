package com.example.ticketBookingManagementSystem.repository;



import com.example.ticketBookingManagementSystem.entity.ShipBooking;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ShipBookingRepository extends JpaRepository<ShipBooking, Long> {
	
}
