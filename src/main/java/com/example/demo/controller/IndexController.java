package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author tanqing
 * @title
 * @create 2021-11-18 23:03
 * @since
 */
@RestController
@RequestMapping("demo")
public class IndexController {

    @RequestMapping("index")
    public String index(){
        return "index demo";
    }
}
