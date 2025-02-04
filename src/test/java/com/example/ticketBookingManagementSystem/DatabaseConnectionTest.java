package com.example.ticketBookingManagementSystem;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.junit.jupiter.api.Test;
import com.example.ticketBookingManagementSystem.entity.Transport;
import com.example.ticketBookingManagementSystem.repository.TransportRepository;

@SpringBootTest
public class DatabaseConnectionTest {

    @Autowired
    private TransportRepository transportRepository;

    @Test
    void testDatabaseConnection() {
    
        Transport transport = new Transport();
        transport.setType("Bus");
        transport.setName("Express");
        transport.setTotalSeats(50);
        transport.setPricePerSeat(500.0);
        transportRepository.save(transport);

        System.out.println("Transport saved to DB");
    }
}
