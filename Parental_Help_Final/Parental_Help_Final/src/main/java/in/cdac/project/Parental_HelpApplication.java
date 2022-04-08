package in.cdac.project;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class Parental_HelpApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(Parental_HelpApplication.class, args);
		
		System.out.println("Setup is ready....!!!");
	}

}
