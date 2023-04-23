package com.example.demo.service;

import com.example.demo.model.TripModel;
import com.example.demo.repository.TripRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class TripService {

    private final TripRepository tripRepository;

    public List<TripModel> getTripsList() {
        return tripRepository.findAll();
    }

    public void addTrip(TripModel tripModel) {
        tripRepository.save(tripModel);
    }

    public void removeTrip(Long id) {
        tripRepository.deleteById(id);
    }

    public TripModel getTripById(Long id) {
        return tripRepository.findById(id).orElse(null);
    }

    public void saveEditTrip(TripModel trip) {
        tripRepository.save(trip);
    }

}
