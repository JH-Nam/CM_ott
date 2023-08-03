package com.cm.ott;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
// import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
// import org.springframework.context.annotation.Configuration;
// import org.springframework.context.annotation.ImportResource;
// import org.springframework.web.servlet.view.InternalResourceViewResolver;

@SpringBootApplication
@ComponentScan
// @Configuration
// @ImportResource(value= { "classpath:/wabapp/web.xml",
// 	"classpath:/wabapp/WEB-INF/root-context.xml",
// 	"classpath:/wabapp/WEB-INF/appServlet/servlet-context.xml"})
public class OttApplication {

	public static void main(String[] args) {
		SpringApplication.run(OttApplication.class, args);
	}
}
