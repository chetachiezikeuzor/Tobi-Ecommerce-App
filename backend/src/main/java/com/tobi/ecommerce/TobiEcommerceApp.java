package com.tobi.ecommerce;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

@SpringBootApplication
// enables the cache management capability
@EnableCaching
public class TobiEcommerceApp  {

	public static void main(String[] args) {
		SpringApplication.run(TobiEcommerceApp.class, args);
	}

}
