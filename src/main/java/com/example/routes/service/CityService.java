package com.example.routes.service;

import com.example.routes.model.City;
import com.example.routes.repository.CityRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CityService {

    private final CityRepository cityRepository;

    public CityService(CityRepository cityRepository) {
        this.cityRepository = cityRepository;
    }

    public List<City> getAll() {
        return cityRepository.findAll();
    }

    public Optional<City> getById(long id) {
        return cityRepository.findById(id);
    }
}
