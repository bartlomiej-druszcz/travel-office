package com.example.demo.service;

import com.example.demo.model.TripModel;
import com.example.demo.repository.TripRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;

@Service
@RequiredArgsConstructor
public class TripService {

    private final TripRepository tripRepository;

    public List<TripModel> getTripsList() {
        return tripRepository.findAll();
    }

    public void addNewTrip(TripModel tripModel) {

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

    public List<TripModel> getLastMinuteTrip(Long daysToStartTrip) {
        return tripRepository.findTripModelByDepartureDayBefore(Date.from((LocalDate.now().plusDays(daysToStartTrip + 1))
                .atStartOfDay()
                .atZone(ZoneId.systemDefault())
                .toInstant()));
    }

    public List<TripModel> getPopularCountryTrip(String country) {
        return tripRepository.findBy(country);
    }

    public List<TripModel> getFilterResultTrip(String destination) {
        if (destination != null) {
            return tripRepository.search(destination);
        }
        return tripRepository.findAll();
    }

}
