package com.example.java;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@SpringBootApplication
@ServletComponentScan
public class Try2Application {

	public static void main(String[] args) {
		SpringApplication.run(Try2Application.class, args);
	}
}	