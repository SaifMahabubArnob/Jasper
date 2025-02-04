package com.example.ticketBookingManagementSystem.service;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.ticketBookingManagementSystem.entity.FlightSearch;
import com.example.ticketBookingManagementSystem.repository.FlightSearchRepository;

@Service
public class FlightSearchService {
    @Autowired
    private FlightSearchRepository flightSearchRepository;

    public FlightSearch saveSearch(String from, String to, String journeyDate) {
        FlightSearch search = new FlightSearch();
        search.setFromLocation(from);
        search.setToLocation(to);
        search.setJourneyDate(LocalDate.parse(journeyDate));
        return flightSearchRepository.save(search);
    }
}
