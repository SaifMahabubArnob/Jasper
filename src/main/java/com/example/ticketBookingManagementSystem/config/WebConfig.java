package com.example.ticketBookingManagementSystem.config;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {
    
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")  // সমস্ত API এর জন্য
                .allowedOrigins("http://localhost:4200")  // Angular অ্যাপের URL
                .allowedMethods("GET", "POST", "PUT", "DELETE")  // অনুমোদিত HTTP মেথড
                .allowedHeaders("*");  // সমস্ত হেডার অনুমোদিত
    }
}
