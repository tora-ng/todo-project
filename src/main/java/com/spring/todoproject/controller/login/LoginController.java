package com.spring.todoproject.controller.login;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Slf4j
@RequiredArgsConstructor
public class LoginController {

    @GetMapping("/login/loginForm")
    public String openLoginForm() {
        log.info(" test ");
        return "/login/loginForm";
    }
}
