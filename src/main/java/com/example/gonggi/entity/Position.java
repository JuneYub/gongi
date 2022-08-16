package com.example.gonggi.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "position")
@Getter @Setter
public class Position {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String date;

    private Integer member;

    private Integer price;

    private String place;

    private String address;

    private Double latitude;

    private Double longitude;

    private String maincity;

    private String subcity;
}
