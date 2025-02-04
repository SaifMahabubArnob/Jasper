package com.example.ticketBookingManagementSystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HotelController {

    @RequestMapping("/hotelSearch")
    public String showHotelSearch() {
        return "hotelSearch"; // This maps to hotelSearch.jsp in WEB-INF/views
    }
}
