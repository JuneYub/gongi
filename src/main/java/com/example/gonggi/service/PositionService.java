package com.example.gonggi.service;


import com.example.gonggi.entity.Position;
import com.example.gonggi.repository.PositionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PositionService {

    @Autowired
    private PositionRepository positionRepository;

    public List<Position> allPosition() {
        return positionRepository.findAll();
    }


    /*
    public List<Position> readPosition(String main, String sub) {
        return positionRepository.findByMaincityAndSubcity(main, sub);

    }
     */
}
