package com.spring.todoproject.controller.todo;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@Slf4j
@RequiredArgsConstructor
public class TodoController {

    @GetMapping("/todo/todoListPage")
    public String todoListPage() {
        log.info(" todoListPage ");
        return "/todo/todoListPage";
    }

    @PostMapping("/todo/saveData")
    @ResponseBody
    public String saveData(@RequestBody List<Map<String, Object>> map) {
        log.info(" map : {} ", map);
        return "success";
    }
}
