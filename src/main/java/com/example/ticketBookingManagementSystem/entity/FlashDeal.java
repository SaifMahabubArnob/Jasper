package com.example.ticketBookingManagementSystem.entity;



import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class FlashDeal {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String dealName; // Flash deal name (e.g., "50% Off on Flights")
    private String dealDescription; // Flash deal description
    private String dealStartTime; // Flash deal start time
    private String dealEndTime; // Flash deal end time
    private double dealPrice; // Price after the discount
    private double discountPercentage; // Discount percentage on the deal
    private String dealStatus; // Status of the deal (e.g., ACTIVE, EXPIRED)
    private String createdBy; // Creator of the deal (Admin, System, etc.)
    private String applicableTo; // Type of service this deal applies to (e.g., "Flights", "Hotels")
}
