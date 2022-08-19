package com.example.gonggi.controller;


import com.example.gonggi.dto.PositionDTO;
import com.example.gonggi.service.PositionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

@ComponentScan(basePackages = {"com.example.gonggi"})
@SpringBootApplication
@Controller
public class MainController {

    @Autowired
    private PositionService positionService;


    @GetMapping("/main")
    public String mainPage(Model model) {
        model.addAttribute("hello", "서버에서 보내준 값입니다.");
        return "home.html";
    }

    /*
    @RequestMapping(value = "/main", method = RequestMethod.POST)
    public String mainReq(@RequestParam("main_city") String mainCity, @RequestParam("sub_city") String subCity, Model model) {
        model.addAttribute("mainCity", "전달 도시" + mainCity);
        model.addAttribute("subCity", "전달 구" + subCity);
        return "home.html";
    }
     */

    //@ResponseBody << 이거 쓰면 리턴값이 고대로 감
    @RequestMapping(value = "/dataSend", method = RequestMethod.GET)
    public ModelAndView mainReq(String mainCity, String subCity, Model model) throws Exception {

        System.out.println("메인도시 " + mainCity + " 서브도시 " + subCity);
        System.out.println("리턴 값 " + positionService.allPosition());

        ModelAndView modelAndView = new ModelAndView();

        modelAndView.setViewName("home"); // 출력하고 싶은 view

        modelAndView.addObject("list2", positionService.allPosition()); // 출력하고 싶은 데이터
        System.out.println("타입 값 " + positionService.allPosition());

        // return "home :: #resultPosition"; (ajax 비동기 방식일 때 활용)
        return modelAndView;
    }


}