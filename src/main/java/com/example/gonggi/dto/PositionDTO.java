package com.example.gonggi.dto;


import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;

@Data
@Getter
@Setter
public class PositionDTO {

    private String main_city;
    private String sub_city;
}
