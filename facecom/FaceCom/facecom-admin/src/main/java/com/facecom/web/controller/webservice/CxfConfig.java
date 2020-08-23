package com.facecom.web.controller.webservice;

import javax.xml.ws.Endpoint;

import org.apache.cxf.Bus;
import org.apache.cxf.bus.spring.SpringBus;
import org.apache.cxf.jaxws.EndpointImpl;
import org.apache.cxf.transport.servlet.CXFServlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import com.facecom.system.service.IFaceComService;

@Configuration
public class CxfConfig {
	@Autowired
	private IFaceComService faceComService;

	@Autowired
	private Bus bus;

	@Bean(name = "cxfServlet")
	public ServletRegistrationBean dispatcherServlet() {
		// return new ServletRegistrationBean(new CXFServlet(),"/soap/*");
		return new ServletRegistrationBean(new CXFServlet(), "/ws/*");
	}

	/**
	 * 提供Restful api接口
	 * 
	 * @return
	 */
	@Bean
	public ServletRegistrationBean dispatcherRestServlet() {
		AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();
		// 替换成自己想调用的controller包路径
		context.scan("com.facecom.web.controller.webservice.*");
		DispatcherServlet disp = new DispatcherServlet(context);
		ServletRegistrationBean registrationBean = new ServletRegistrationBean(disp);
		registrationBean.setLoadOnStartup(1);
		// 映射路径自定义,必须设置一个不重复的名称
		registrationBean.addUrlMappings("/rest/*");
		registrationBean.setName("rest");
		return registrationBean;
	}

	@Bean(name = Bus.DEFAULT_BUS_ID)
	public SpringBus springBus() {
		return new SpringBus();
	}

	/**
	 * 注册faceComService接口到webservice服务
	 * 
	 * @return 浏览器访问地址 http://localhost:9090/webservicedemo?wsdl 得到客户端访问地址
	 *         http://localhost:9090/webservicedemo/webservicedemo?wsdl
	 *
	 */

	@Bean
	public Endpoint endpointHelloService() {
		EndpointImpl endpoint = new EndpointImpl(bus, faceComService);
		endpoint.publish("/webservicedemo");
		return endpoint;
	}
	
	@Bean
	public Endpoint endpointfaceComService() {
		EndpointImpl endpoint = new EndpointImpl(bus, faceComService);
		endpoint.publish("/face");
		return endpoint;
	}
}