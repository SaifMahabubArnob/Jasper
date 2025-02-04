package com.example.ticketBookingManagementSystem.exception;



import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND) // Will return 404 Not Found status
public class ResourceNotFoundException extends RuntimeException {

    // Constructor to pass the error message
    public ResourceNotFoundException(String message) {
        super(message);  // Calls the parent (RuntimeException) constructor with the error message
    }
}
