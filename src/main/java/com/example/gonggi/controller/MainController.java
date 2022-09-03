package com.example.gonggi.controller;


import com.example.gonggi.service.PositionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller // 항상 최상단에 위치해야함
@SpringBootApplication
@ComponentScan(basePackages = {"com.example.gonggi"})
public class MainController {

    @Autowired
    private PositionService positionService;

    @GetMapping("/main")
    public String mainPage() {
        return "home.html";
    }

    @GetMapping("/about")
    public String aboutPage() {
        return "info.html";
    }

    //@ResponseBody << 이거 쓰면 리턴값이 고대로 감
    @RequestMapping(path = "/dataSend", method = RequestMethod.GET)
    public ModelAndView mainReq(String main_city, String sub_city, Model model) throws Exception {

        System.out.println("메인도시 " + main_city + " 서브도시 " + sub_city);
        //System.out.println("리턴 값 " + positionService.readPosition(main_city, sub_city));
        //System.out.println("리턴 값2 " + positionService.readSubcityInfo(main_city, sub_city));
        //System.out.println("리턴 값2 " + positionService.visitCount());

        ModelAndView modelAndView = new ModelAndView();

        modelAndView.setViewName("home"); // 출력하고 싶은 view

        modelAndView.addObject("list2", positionService.readPosition(main_city, sub_city)); // 선택된 지역에 대한 음식점 데이터

        modelAndView.addObject("list1", positionService.readSubcityInfo(main_city, sub_city)); // 선택된 지역에 대한 이름과 구청 위치 데이터

        modelAndView.addObject("list3", positionService.visitCount(sub_city));
        // return "home :: #resultPosition"; (ajax 비동기 방식일 때 활용)

        return modelAndView;
    }

    @PostMapping("/viewCntDes")
    public String viewCntDescending(int admcode, Model model) {
        model.addAttribute("list3", positionService.rangeVisitCnt(admcode));

        return "/home :: #mainTable";
    }




}