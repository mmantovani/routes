package com.example.routes.service;

import com.example.routes.model.Segment;
import com.example.routes.repository.SegmentRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class SegmentService {

    private final SegmentRepository segmentRepository;

    public SegmentService(SegmentRepository segmentRepository) {
        this.segmentRepository = segmentRepository;
    }

    public List<Segment> getAll() {
        return segmentRepository.findAll();
    }

    public Segment update(Segment segment, int duration) {
        segment.setDuration(duration);
        return segmentRepository.save(segment);
    }

    public Optional<Segment> getById(long id) {
        return segmentRepository.findById(id);
    }
}
