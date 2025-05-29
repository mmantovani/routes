package com.example.routes.controller;

import com.example.routes.model.City;
import com.example.routes.model.Route;
import com.example.routes.service.CityService;
import com.example.routes.service.RouteService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/routes")
public class RouteController {

    private final CityService cityService;
    private final RouteService routeService;

    public RouteController(CityService cityService, RouteService routeService) {
        this.cityService = cityService;
        this.routeService = routeService;
    }


    @GetMapping
    public ResponseEntity<Route> getRoute(
            @RequestParam long from, @RequestParam long to, @RequestParam String type) {

        City fromCity = cityService.getById(from).orElse(null);
        City toCity = cityService.getById(to).orElse(null);
        if (fromCity == null || toCity == null) {
            return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
        }

        Route route = routeService.getRoute(fromCity, toCity, "distance".equalsIgnoreCase(type));
        return new ResponseEntity<>(route, HttpStatus.OK);
    }
}
