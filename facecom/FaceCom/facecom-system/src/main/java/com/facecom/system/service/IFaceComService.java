package com.facecom.system.service;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

import org.springframework.stereotype.Service;

@WebService
public interface IFaceComService {

	 @WebMethod
	 public  Object sayHello(@WebParam(name="content") String content);
}
