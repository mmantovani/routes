package com.example.routes.service;

import com.example.routes.model.City;
import com.example.routes.model.Route;

public interface RouteService {

    Route getRoute(City from, City to, boolean shortestByDistance);
}
