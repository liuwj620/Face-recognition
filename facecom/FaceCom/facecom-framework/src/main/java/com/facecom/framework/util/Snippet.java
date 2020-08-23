package com.facecom.framework.util;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import java.util.Map;


public class Snippet {
	/**
	     * 设置注解中的字段值
	     *
	     * @param annotation 要修改的注解实例
	     * @param fieldName  要修改的注解字段名
	     * @param value      要设置的值
	     */
	    public static void setAnnotationValue(Annotation annotation, String fieldName, Object value) throws NoSuchFieldException, IllegalAccessException {
	        InvocationHandler handler = Proxy.getInvocationHandler(annotation);
	        Field hField = handler.getClass().getDeclaredField("memberValues");
	        hField.setAccessible(true);
	        Map memberValues = (Map) hField.get(handler);
	        memberValues.put(fieldName, value);
	    }
}

