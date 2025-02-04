package com.example.ticketBookingManagementSystem.controller;

import com.example.ticketBookingManagementSystem.entity.Transport;
import com.example.ticketBookingManagementSystem.service.TransportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/transports")
public class TransportController {
    @Autowired
    private TransportService transportService;

    @GetMapping("/search")
    public List<Transport> searchTransport(@RequestParam String source, @RequestParam String destination) {
        return transportService.searchTransport(source, destination);
    }
}
