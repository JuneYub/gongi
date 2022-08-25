package com.example.gonggi.entity;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "subcityposition")
@Getter
@Setter
public class SubcityPosition {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer admcode;

    private String maincity;

    private String subcity;

    private Double sub_lat;

    private Double sub_lng;


    @OneToMany(mappedBy = "subcityPosition", fetch = FetchType.LAZY)
    private List<Position> positions = new ArrayList<>();



}


