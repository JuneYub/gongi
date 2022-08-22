package com.example.gonggi.entity;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

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

    private Double latitude;

    private Double longitude;




}
