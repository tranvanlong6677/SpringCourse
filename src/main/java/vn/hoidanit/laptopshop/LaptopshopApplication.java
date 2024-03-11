package vn.hoidanit.laptopshop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

// @SpringBootApplication
// @SpringBootApplication(exclude =
// org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
@SpringBootApplication(exclude = {
		org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class,
		org.springframework.boot.actuate.autoconfigure.security.servlet.ManagementWebSecurityAutoConfiguration.class })
public class LaptopshopApplication {

	public static void main(String[] args) {
		// SpringApplication.run(LaptopShopApplication.class, args);
		@SuppressWarnings("unused")
		ApplicationContext app = SpringApplication.run(LaptopshopApplication.class, args);
		// for (String s : app.getBeanDefinitionNames()
		// System.out.println(s);
		// }
	}

}
