package com.facecom.web.controller.webservice;

import org.apache.cxf.jaxws.endpoint.dynamic.JaxWsDynamicClientFactory;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.stereotype.Component;

@Component
@EnableScheduling 
public class WsClient {
	  
	  public static void main(String[] args) throws Exception{
		  try{
			  JaxWsDynamicClientFactory dcf =JaxWsDynamicClientFactory.newInstance();
			  org.apache.cxf.endpoint.Client c =dcf.createClient("http://127.0.0.1/ws/face?wsdl");
			  Object[] objects=c.invoke("sayHi","wawa哇");
	          System.out.println("result="  + objects[0].toString());
	      }catch(Exception e){
			  e.printStackTrace();
		  }
	  }
}