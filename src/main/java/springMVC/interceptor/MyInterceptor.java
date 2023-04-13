package springMVC.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


@SuppressWarnings("deprecation")
public class MyInterceptor extends HandlerInterceptorAdapter {

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("this is pre handler");
		String userName=request.getParameter("userName");
		if (userName.startsWith("s")) {
			response.setContentType("text/html");
			response.getWriter().println("<h1>Since your name is starts with s so you cant go </h1>");
			return false;
			
		}
		return true;
	}

}
