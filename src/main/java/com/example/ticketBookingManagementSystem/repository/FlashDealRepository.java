package com.example.ticketBookingManagementSystem.repository;



import com.example.ticketBookingManagementSystem.entity.FlashDeal;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FlashDealRepository extends JpaRepository<FlashDeal, Long> {
    // You can add custom queries here if needed
}
