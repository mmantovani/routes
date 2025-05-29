package com.example.routes.service;

import com.example.routes.djikstra.Dijkstra;
import com.example.routes.djikstra.Graph;
import com.example.routes.djikstra.Node;
import com.example.routes.model.City;
import com.example.routes.model.Route;
import com.example.routes.model.Segment;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class DefaultRouteService implements RouteService {

    private final CityService cityService;
    private final SegmentService segmentService;

    public DefaultRouteService(CityService cityService, SegmentService segmentService) {
        this.cityService = cityService;
        this.segmentService = segmentService;
    }

    @Override
    public Route getRoute(City fromCity, City toCity, boolean shortestByDistance) {

        // Load all cities and create corresponding nodes
        Map<Long, Node> nodes = new HashMap<>();
        for (City city : cityService.getAll()) {
            nodes.put(city.getId(), new Node(city.getId().toString()));
        }

        // Load all segments and create graph node connections
        List<Segment> segments = segmentService.getAll();
        for (Segment segment : segments) {
            Node fromNode = nodes.get(segment.getFrom().getId());
            Node toNode = nodes.get(segment.getTo().getId());
            int weight = shortestByDistance ? segment.getDistance() : segment.getDuration();
            fromNode.addDestination(toNode, weight);
        }

        // Create the graph
        Graph graph = new Graph();
        nodes.values().forEach(graph::addNode);
        Node startNode = nodes.get(fromCity.getId());
        Dijkstra.calculateShortestPathFromSource(graph, startNode);

        // Build path to destination
        Node endNode = nodes.get(toCity.getId());
        List<Node> path = new ArrayList<>(endNode.getShortestPath());
        path.add(endNode);

        // Map node path to segments
        List<Segment> routeSegments = new ArrayList<>();
        for (int i = 0; i < path.size() - 1; i++) {
            Segment seg = findSegment(segments, path.get(i), path.get(i + 1));
            routeSegments.add(seg);
        }

        Route route = new Route();
        route.setSegments(routeSegments);
        route.setDuration(routeSegments.stream().mapToInt(Segment::getDuration).sum());
        route.setDistance(routeSegments.stream().mapToInt(Segment::getDistance).sum());

        return route;
    }


    private Segment findSegment(List<Segment> segments, Node from, Node to) {

        long fromId = Long.parseLong(from.getName());
        long toId = Long.parseLong(to.getName());

        return segments.stream()
                .filter(s-> s.getFrom().getId() == fromId && s.getTo().getId() == toId)
                .findFirst()
                .orElseThrow(() -> new RuntimeException("Segment not found"));
    }
}
