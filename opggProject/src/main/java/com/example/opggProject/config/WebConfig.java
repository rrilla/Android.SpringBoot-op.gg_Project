package com.example.opggProject.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// 외부 경로 이미지 불러오기
		registry.addResourceHandler("/summernoteShowImage/**").addResourceLocations("file:///C:/Users/admin/Desktop/이미지테스트/");
	}
}
