package com.docker.testing;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

    @GetMapping("/getname")
    public String getName(){
        return "Docker image has been build and tested successfully!.";
    }

}
