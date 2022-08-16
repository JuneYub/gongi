package com.example.gonggi.repository;

import com.example.gonggi.entity.Position;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface PositionRepository extends JpaRepository<Position, Integer> {
    //ist<Position> findAllBySubcity(String sub);

    /*
    @Query("SELECT a FROM Position a where a.maincity = :main and a.subcity = :sub")
    List<Position> findByMaincityAndSubcity(@Param("main") String main, @Param("sub") String sub);
    */

}
