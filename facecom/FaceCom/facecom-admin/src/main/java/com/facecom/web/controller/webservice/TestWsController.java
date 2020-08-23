package com.facecom.web.controller.webservice;

import java.util.HashMap;
import java.util.Map;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@EnableAutoConfiguration
@RequestMapping("/")
public class TestWsController {
	
	 @RequestMapping(value="/test",method=RequestMethod.GET)
	 Map<String,Object> list() {
		 Map<String,Object> map = new HashMap<String,Object>();
		 map.put("func", "test");
		 map.put("name", "king");
		 return map;
	 }

}