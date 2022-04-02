package in.cdac.project;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class Baby_CareApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(Baby_CareApplication.class, args);
		
		System.out.println("Setup is ready....!!!");
	}

}
