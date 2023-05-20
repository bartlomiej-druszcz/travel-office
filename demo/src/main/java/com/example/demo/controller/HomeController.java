package com.example.demo.controller;

import com.example.demo.model.HotelModel;
import com.example.demo.model.TripModel;
import com.example.demo.service.HotelService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping(value = "/")
@RequiredArgsConstructor
public class HomeController {

    private final HotelService hotelService;

    @GetMapping
    public String getHome(Model model) {
        List<HotelModel> list = hotelService.getHotelsList();
        model.addAttribute("hotelModel", list);
        return "index";
    }

    @GetMapping("/about")
    public String about() {
        return "about";
    }
}
