package com.example.ticketBookingManagementSystem.controller;



import com.example.ticketBookingManagementSystem.entity.FlashDeal;
import com.example.ticketBookingManagementSystem.service.FlashDealService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/flashdeals")
public class FlashDealController {

    @Autowired
    private FlashDealService flashDealService;

    // Create a new Flash Deal
    @PostMapping
    public ResponseEntity<FlashDeal> createFlashDeal(@RequestBody FlashDeal flashDeal) {
        FlashDeal createdDeal = flashDealService.createFlashDeal(flashDeal);
        return new ResponseEntity<>(createdDeal, HttpStatus.CREATED);
    }

    // Get all Flash Deals
    @GetMapping
    public ResponseEntity<List<FlashDeal>> getAllFlashDeals() {
        List<FlashDeal> flashDeals = flashDealService.getAllFlashDeals();
        return new ResponseEntity<>(flashDeals, HttpStatus.OK);
    }

    // Get Flash Deal by ID
    @GetMapping("/{id}")
    public ResponseEntity<FlashDeal> getFlashDealById(@PathVariable Long id) {
        FlashDeal flashDeal = flashDealService.getFlashDealById(id);
        return new ResponseEntity<>(flashDeal, HttpStatus.OK);
    }

    // Update Flash Deal
    @PutMapping("/{id}")
    public ResponseEntity<FlashDeal> updateFlashDeal(@PathVariable Long id, @RequestBody FlashDeal updatedFlashDeal) {
        FlashDeal updatedDeal = flashDealService.updateFlashDeal(id, updatedFlashDeal);
        return new ResponseEntity<>(updatedDeal, HttpStatus.OK);
    }

    // Delete Flash Deal
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteFlashDeal(@PathVariable Long id) {
        flashDealService.deleteFlashDeal(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}
