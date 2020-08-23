package com.facecom.common.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import com.facecom.common.enums.BusinessType;
import com.facecom.common.enums.OperatorType;

/**
 * 自定义人脸接口调用记录注解
 * 
 * @author facecom
 */
@Target({ ElementType.PARAMETER, ElementType.METHOD })
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface InvokerLog {
	/**
	 * 接口名称
	 */
	public String invoker() default "";

	/**
	 * 系统名称
	 */
	public String systemName() default "";

	/**
	 * 系统编号
	 */
	public String systemCode() default "";

}
