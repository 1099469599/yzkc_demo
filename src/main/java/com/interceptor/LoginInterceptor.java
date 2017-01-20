package com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 * @author Xiao
 *<title:testInterceptor>
 *<description:登陆认证拦截器>
 */
public class LoginInterceptor implements HandlerInterceptor{

	//进入Handler方法之前执行
	//用于身份认证、身份授权
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		//获取请求URL
		String url=request.getRequestURI();
		//判断URL是否是公开地址
		//这里是登陆提交地址
		if(url.indexOf("loginuser.action")>=0){
			//登陆提交，放行
			return true;
		}
		//判断session
		HttpSession session = request.getSession();
		//从session 取出身份
		String luser=(String) session.getAttribute("luser");
		if(luser!=null){
			return true;
		}
		//执行这里表示需要身份认证，跳转用
		request.getRequestDispatcher("/login.jsp").forward(request, response);
		//return false拦截，true相反
		return false;
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
