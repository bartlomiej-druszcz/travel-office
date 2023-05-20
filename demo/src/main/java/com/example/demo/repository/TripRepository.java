package com.example.demo.repository;

import com.example.demo.model.TripModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface TripRepository extends JpaRepository<TripModel, Long> {
    List<TripModel> findTripModelByDepartureDayBefore(Date departureDay);

    @Query("SELECT tm FROM TripModel tm " +
            "LEFT JOIN HotelModel hm " +
            "ON tm.hotelModel.id = hm.id " +
            "WHERE hm.country = :country")
    List<TripModel> findBy(@Param("country") String country);

    @Query("SELECT tm FROM TripModel tm " +
            "LEFT JOIN HotelModel hm " +
            "ON tm.hotelModel.id = hm.id " +
            "WHERE hm.city = :destination")
    List<TripModel> search(String destination);

}
