package com.example.demo.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Set;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class RatingModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "rating")
    private Integer rating;

    @ManyToMany
    @JoinTable(name = "Rating_User",
            joinColumns = {
                    @JoinColumn(name = "rating_id")},
            inverseJoinColumns = {
                    @JoinColumn(name = "user_id")}
    )
    private Set<UserModel> users;

    @ManyToMany
    @JoinTable(name = "Rating_Trip",
            joinColumns = {
                    @JoinColumn(name = "rating_id")},
            inverseJoinColumns = {
                    @JoinColumn(name = "trip_id")}
    )
    private Set<TripModel> trips;

}
