package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ComponentScan;

import com.example.model.User;
import com.example.service.UserService;

@SpringBootApplication
@ComponentScan(basePackages = {"com.example"})
public class PracticeApplication {

	public static void main(String[] args) {
		 SpringApplication.run(PracticeApplication.class, args);
		
		
		
	}

}
