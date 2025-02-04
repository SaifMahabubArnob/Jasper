package com.example.ticketBookingManagementSystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.ticketBookingManagementSystem.entity.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Long> {
}
