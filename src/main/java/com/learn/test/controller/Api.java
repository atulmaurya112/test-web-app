package com.learn.test.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class Api {
	
	@Value("${app.value}")
	String value;
	
	@GetMapping("test")
	public String getMethodName() {
		System.out.println("Received request at /test endpoint");
		return "Hey, I am running from test-web-app using (" + value + ")";
	}	
	
}
