package com.sarvatra;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class JmeterTestingApplication {

	private static final Logger logger = LoggerFactory.getLogger(JmeterTestingApplication.class);

	public static void main(String[] args) {
//		SpringApplication.run(JmeterTestingApplication.class, args);
		logger.info("This is project started successfully");
	}

}
