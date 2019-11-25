package com.im;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.DispatcherServlet;

/**
 * @author gong
 * @category 启动类
 */
@SpringBootApplication
public class Run {

	public static void main(String[] args) {
		SpringApplication.run(Run.class, args);
	}

	/**
	 * 1设置匹配.action后缀的请求
	 * @param dispatcherServlet
	 * @return
	 */
	@Bean
	public ServletRegistrationBean servletRegistrationBean(DispatcherServlet dispatcherServlet) {
		ServletRegistrationBean bean = new ServletRegistrationBean(dispatcherServlet);
		bean.addUrlMappings("*.action");
		bean.addUrlMappings("/");//这样设置就可以直接使用项目名称进入到项目首页中
		return bean;
	}
}
