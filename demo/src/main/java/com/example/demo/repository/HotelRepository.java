package com.example.demo.repository;

import com.example.demo.model.HotelModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HotelRepository extends JpaRepository<HotelModel, Long> {

}
