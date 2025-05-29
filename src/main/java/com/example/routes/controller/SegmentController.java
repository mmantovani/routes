package com.example.routes.controller;

import com.example.routes.model.Segment;
import com.example.routes.service.SegmentService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/segments")
public class SegmentController {

    private final SegmentService segmentService;

    public SegmentController(SegmentService segmentService) {
        this.segmentService = segmentService;
    }

    @GetMapping
    public ResponseEntity<List<Segment>> getAll() {
        return new ResponseEntity<>(segmentService.getAll(), HttpStatus.OK);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Segment> update(@PathVariable long id, @RequestParam int duration) {
        Optional<Segment> segment = segmentService.getById(id);
        if (segment.isEmpty()) {
            return ResponseEntity.notFound().build();
        }
        return new ResponseEntity<>(segmentService.update(segment.get(), duration), HttpStatus.OK);
    }
}
