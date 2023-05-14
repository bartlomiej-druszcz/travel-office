package com.example.demo.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.Set;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class TripModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "country_from")
    private String countryFrom;

    @Column(name = "city_from")
    private String cityFrom;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "departure_day")
    private Date departureDay;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Column(name = "return_day")
    private Date returnDay;

    @Column(name = "price_for_adult")
    private Integer priceForAdult;

    @Column(name = "price_for_children")
    private Integer priceForChildren;

    @Column(name = "airport_from")
    private String airportFrom;

    @ManyToMany(mappedBy = "trips")
    private Set<RatingModel> rating;

    @ManyToOne
    @JoinColumn(name = "hotelModel_id")
    private HotelModel hotelModel;

}
