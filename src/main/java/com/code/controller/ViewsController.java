package com.code.controller;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class ViewsController extends WebMvcConfigurerAdapter {
	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		   //login
		    registry.addViewController("/login").setViewName("login");
		
	        registry.addViewController("/").setViewName("main_page");
	        registry.addViewController("/post").setViewName("post_control_001_view");
	        registry.addViewController("/preview").setViewName("preview_page");
	        registry.addViewController("/admin").setViewName("admin");
	        registry.addViewController("/feedback_control_001_view").setViewName("feedback_control_001_view");
	        registry.addViewController("/user_control_001_view").setViewName("user_control_001_view");
	        registry.addViewController("/menu_control_001_view").setViewName("menu_control_001_view");
	        registry.addViewController("/message_control_001_view").setViewName("message_control_001_view");
	        registry.addViewController("/product_control_001_view").setViewName("product_control_001_view");
	        registry.addViewController("/location_control_001_view").setViewName("location_control_001_view");
	        registry.addViewController("/auto_vehicle").setViewName("auto_vehicle");
	}
}
