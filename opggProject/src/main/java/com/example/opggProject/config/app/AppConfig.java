package com.example.opggProject.config.app;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class AppConfig implements WebMvcConfigurer {
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		String proRoot = System.getProperty("user.dir");
		String root = proRoot.substring(0,proRoot.lastIndexOf("\\")-6) + "/images/";
		registry.addResourceHandler("/summernoteShowImage/**").addResourceLocations("file:"+root);
	}
}