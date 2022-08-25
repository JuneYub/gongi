package com.example.gonggi.repository;

import com.example.gonggi.entity.SubcityPosition;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Qualifier("subcityPositionRepository")
public interface SubcityPositionRepository extends JpaRepository<SubcityPosition, Integer> {

    @Query("SELECT s FROM SubcityPosition s WHERE s.maincity = :main AND s.subcity = :sub")
    List<SubcityPosition> findSubcityInfo(@Param("main") String main, @Param("sub") String sub);

}
