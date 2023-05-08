package com.example.demo.controller;

import com.example.demo.model.TripModel;
import com.example.demo.service.TripService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class TripController {

    private final TripService tripService;

    @GetMapping("/trips")
    public String getTrips(Model model) {
        List<TripModel> list = tripService.getTripsList();
        model.addAttribute("tripModel", list);
        return "trips";
    }

    @GetMapping("/addTrip")
    public String getAddTrip() {
        return "addNewTrip";
    }

    @PostMapping("/addTrip")
    public RedirectView postAddTrip(TripModel trip) {
        tripService.addTrip(trip);
        return new RedirectView("/trips");
    }

    @GetMapping("/editTrip/{id}")
    public String getEditTrip(@PathVariable("id") Long id, Model model) {
        TripModel trip = tripService.getTripById(id);
        model.addAttribute("tripModel", trip);
        return "editTrip";
    }
    @PostMapping("/editTrip/{id}")
    public RedirectView postEditTrip (@PathVariable("id") Long id, TripModel trip) {
        tripService.saveEditTrip(trip);
        return new RedirectView("/trips");
    }

    @PostMapping("/removeTrip/{id}")
    public RedirectView removeTrip(@PathVariable("id") Long id) {
        tripService.removeTrip(id);
        return new RedirectView("/trips");
    }

}
