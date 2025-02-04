package com.example.ticketBookingManagementSystem.service;

import com.example.ticketBookingManagementSystem.entity.Transport;
import com.example.ticketBookingManagementSystem.repository.TransportRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TransportService {
    @Autowired
    private TransportRepository transportRepository;

    public List<Transport> searchTransport(String source, String destination) {
        return transportRepository.findBySourceAndDestination(source, destination);
    }
    
    
    public Transport findTransportById(Long id) {
        return transportRepository.findById(id).orElse(null);
    }

    public void updateTransport(Transport transport) {
        transportRepository.save(transport);
    }

    
}
