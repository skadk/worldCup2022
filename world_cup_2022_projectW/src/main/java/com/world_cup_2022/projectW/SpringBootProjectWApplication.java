package com.world_cup_2022.projectW;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages= {"com.world_cup_2022.projectW"})
@MapperScan(basePackages= {"com.world_cup_2022.projectW"})
public class SpringBootProjectWApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootProjectWApplication.class, args);
	}

}
