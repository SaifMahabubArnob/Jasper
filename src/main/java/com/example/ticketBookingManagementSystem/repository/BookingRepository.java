//package com.example.ticketBookingManagementSystem.repository;
//
//import com.example.ticketBookingManagementSystem.entity.Booking;
//import com.example.ticketBookingManagementSystem.entity.User;
//import org.springframework.data.jpa.repository.JpaRepository;
//
//import java.util.List;
//
//public interface BookingRepository extends JpaRepository<Booking, Long> {
//    List<Booking> findByUser(User user);
//}

package com.example.ticketBookingManagementSystem.repository;

import com.example.ticketBookingManagementSystem.entity.Booking;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookingRepository extends JpaRepository<Booking, Integer> {
}
