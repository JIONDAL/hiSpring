package com.care.boot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication(exclude = SecurityAutoConfiguration.class)
public class BootApplication extends SpringBootServletInitializer{
	
	@Override
	protected SpringApplicationBuilder createSpringApplicationBuilder() {
		// TODO Auto-generated method stub
		return super.createSpringApplicationBuilder();
	}
	public static void main(String[] args) {
		SpringApplication.run(BootApplication.class, args);
	}
}
