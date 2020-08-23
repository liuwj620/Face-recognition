package com.facecom.system.service.impl;


import javax.jws.WebService;

import org.springframework.stereotype.Service;

import com.facecom.system.service.IFaceComService;

@Service
@WebService(serviceName="IFaceComService",targetNamespace = "http://service.system.facecom.com",endpointInterface = "com.facecom.system.service.IFaceComService")
public class FaceComServiceImpl implements IFaceComService {

	@Override
	public Object sayHello(String content) {
		content = "FaceCom接口调用成功！";
		return content;
	}

}
