package com.spring.todoproject.controller.todo;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Slf4j
@RequiredArgsConstructor
public class TodoController {

    @GetMapping("/todo/todoListPage")
    public String todoListPage() {
        log.info(" todoListPage ");
        return "/todo/todoListPage";
    }
}
