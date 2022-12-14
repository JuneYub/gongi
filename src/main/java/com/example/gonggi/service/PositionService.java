package com.example.gonggi.service;


import com.example.gonggi.dto.VisitDto;
import com.example.gonggi.entity.Position;
import com.example.gonggi.entity.SubcityPosition;
import com.example.gonggi.repository.PositionRepository;
import com.example.gonggi.repository.SubcityPositionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class PositionService {


    @Autowired
    private PositionRepository positionRepository;

    @Autowired
    private SubcityPositionRepository subcityPositionRepository;

    // list2
    public List<Position> readPosition(String main, String sub) {
        return positionRepository.findByMaincityAndSubcity(main, sub);

    }

    public List<VisitDto> visitCount(String sub){
        return positionRepository.viewVisitCount(sub);
    }

    // list1
    public List<SubcityPosition> readSubcityInfo(String main, String sub) {
        return subcityPositionRepository.findSubcityInfo(main, sub);
    }

    public List<VisitDto> rangeVisitCnt(int admcode) {
        return positionRepository.rangeVisitCount(admcode);
    }

    public List<Position> readPlaceDetail(String detailSubcity, String detailPlace) {
        return positionRepository.findDetailBySubcityAndPlace(detailSubcity, detailPlace);
    }

}
