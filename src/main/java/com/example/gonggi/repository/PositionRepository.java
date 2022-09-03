package com.example.gonggi.repository;

import com.example.gonggi.dto.VisitDto;
import com.example.gonggi.entity.Position;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.util.List;


@Repository
@Qualifier("positionRepository")
public interface PositionRepository extends JpaRepository<Position, Integer> {
    //ist<Position> findAllBySubcity(String sub);

    EntityManager em =null;

    @Query("SELECT p FROM Position p join fetch p.subcityPosition s where s.maincity = :main and s.subcity = :sub")
    List<Position> findByMaincityAndSubcity(@Param("main") String main, @Param("sub") String sub); // list

    @Query("SELECT new com.example.gonggi.dto.VisitDto(p.place, count (p.place)) FROM Position p join p.subcityPosition s where s.subcity = :sub GROUP BY p.place")
    public List<VisitDto> viewVisitCount(@Param("sub") String sub);

    @Query("SELECT new com.example.gonggi.dto.VisitDto(p.place, count (p.place) ) FROM Position p WHERE p.adm_code = :admcode GROUP BY p.place ORDER BY count (p.place) DESC")
    public List<VisitDto> rangeVisitCount(@Param("admcode") int admcode);


}
