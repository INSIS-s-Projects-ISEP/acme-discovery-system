package com.isep.discoverysystem;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@EnableEurekaServer
@SpringBootApplication
public class DiscoverySystemApplication {

	public static void main(String[] args) {
		SpringApplication.run(DiscoverySystemApplication.class, args);
	}

}
