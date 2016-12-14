package com.shun.blog.controller.common.aspect;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

@Aspect
@Component
public class BoardAspectJ {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardAspectJ.class);

	@Pointcut("execution (** com.shun.blog.controller.BoardController.*(..))")
	public void getPrincipal() {

	}
	
	@Before("getPrincipal()")
	public void injectLogger() throws Throwable {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		logger.info("TEST : @Before = "+request.getRequestURL());
	}
	
	@AfterThrowing("getPrincipal()")
	public void ExceptionLogger() throws Throwable {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		logger.info("ERROR : @AfterThrowing = "+request.getRequestURL());
		logger.info("ERROR : @AfterThrowing = "+request.getMethod());
	}
}
