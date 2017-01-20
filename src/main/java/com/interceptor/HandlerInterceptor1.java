package com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 * @author Xiao
 *<title:testInterceptor>
 *<description:测试拦截器>
 */
public class HandlerInterceptor1 implements HandlerInterceptor{

	//进入Handler方法之前执行
	//用于身份认证、身份授权
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		//return false拦截，true相反
		return true;
	}
	//进入Handler方法之后，返回modelandview之前执行
	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

	}
	//执行handler完成执行
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
					throws Exception {

	}

}
