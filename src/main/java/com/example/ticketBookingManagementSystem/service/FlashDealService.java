package com.example.ticketBookingManagementSystem.service;



import com.example.ticketBookingManagementSystem.entity.FlashDeal;
import com.example.ticketBookingManagementSystem.exception.ResourceNotFoundException;
import com.example.ticketBookingManagementSystem.repository.FlashDealRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FlashDealService {

    @Autowired
    private FlashDealRepository flashDealRepository;

    // Create a new Flash Deal
    public FlashDeal createFlashDeal(FlashDeal flashDeal) {
        return flashDealRepository.save(flashDeal);
    }

    // Get all Flash Deals
    public List<FlashDeal> getAllFlashDeals() {
        return flashDealRepository.findAll();
    }

    // Get Flash Deal by ID
    public FlashDeal getFlashDealById(Long id) {
        return flashDealRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Flash Deal not found"));
    }

    // Update Flash Deal
    public FlashDeal updateFlashDeal(Long id, FlashDeal updatedFlashDeal) {
        FlashDeal existingDeal = flashDealRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Flash Deal not found"));

        existingDeal.setDealName(updatedFlashDeal.getDealName());
        existingDeal.setDealDescription(updatedFlashDeal.getDealDescription());
        existingDeal.setDealStartTime(updatedFlashDeal.getDealStartTime());
        existingDeal.setDealEndTime(updatedFlashDeal.getDealEndTime());
        existingDeal.setDealPrice(updatedFlashDeal.getDealPrice());
        existingDeal.setDiscountPercentage(updatedFlashDeal.getDiscountPercentage());
        existingDeal.setDealStatus(updatedFlashDeal.getDealStatus());
        existingDeal.setCreatedBy(updatedFlashDeal.getCreatedBy());
        existingDeal.setApplicableTo(updatedFlashDeal.getApplicableTo());

        return flashDealRepository.save(existingDeal);
    }

    // Delete Flash Deal
    public void deleteFlashDeal(Long id) {
        FlashDeal existingDeal = flashDealRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Flash Deal not found"));
        flashDealRepository.delete(existingDeal);
    }
}
