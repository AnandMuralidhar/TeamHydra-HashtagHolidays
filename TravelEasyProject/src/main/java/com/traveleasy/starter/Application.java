package com.traveleasy.starter;

import javax.annotation.Resource;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import com.traveleasy.service.AmazonClientService;
import org.springframework.boot.autoconfigure.security.oauth2.client.EnableOAuth2Sso;
import org.springframework.web.bind.annotation.RestController;


@SpringBootApplication
@EnableOAuth2Sso
@RestController
@EntityScan("com.traveleasy.model")
@EnableJpaRepositories("com.traveleasy.repository")
@ComponentScan(basePackages = {  "com.traveleasy.controller","com.traveleasy.service", "com.traveleasy.config"})
public class Application extends SpringBootServletInitializer {
	
	@Resource
	AmazonClientService amazonClientService;

	public static void main(String[] args) {
		
		SpringApplication.run(Application.class, args);

	}
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(Application.class);
	}
	
	/*
	 * @GetMapping("/") public String start() { return "login"; }
	 */

}

