package com.example.demo.service;

import com.example.demo.model.HotelModel;
import com.example.demo.repository.HotelRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class HotelService {

    private final HotelRepository hotelRepository;

    public List<HotelModel> getHotelsList() {
        return hotelRepository.findAll();
    }
}
