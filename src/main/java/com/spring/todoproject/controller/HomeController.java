package com.spring.todoproject.controller;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Slf4j
@RequiredArgsConstructor
public class HomeController {

    @GetMapping("/main")
    public String main() {
        return "/main";
    }

    @GetMapping("/")
    public String home() {
        return "/todo/todoListPage";
    }
}
