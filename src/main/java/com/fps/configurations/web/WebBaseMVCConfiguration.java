package com.fps.configurations.web;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebBaseMVCConfiguration implements WebMvcConfigurer {
	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
		return bCryptPasswordEncoder;
	}
	/*@Bean
	CharacterEncodingFilter characterEncodingFilter() {
	    CharacterEncodingFilter filter = new CharacterEncodingFilter();
	    filter.setEncoding("UTF-8");
	    filter.setForceEncoding(true);
	    return filter;
	}*/

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry
        .addResourceHandler("/static/**")
        .addResourceLocations("classpath:/static/themes/");
	}
}
