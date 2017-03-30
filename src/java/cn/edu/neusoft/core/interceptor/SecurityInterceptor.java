package cn.edu.neusoft.core.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class SecurityInterceptor implements HandlerInterceptor {
    public SecurityInterceptor() {  }  
    
    private List<String> unhandlers;
    private String loginUrl;
    
    
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
	return true;
		/*
		if(unhandlers != null && unhandlers.size() > 0){
			String url = request.getRequestURL().toString();
			if(validUrl(url)){
				return true;
			}else{
				if(SessionUtil.isLogin(request)){
					return true;
				}else{
					request.getRequestDispatcher(loginUrl).forward(request, response);
					return false;
				}
			}
    	}else{
    		if(jwxHandle(request,response)){
    			return true;
    		}else{
    			request.getRequestDispatcher("/400.html").forward(request, response);
    			return false;
    		}
    	}
	}
	
	public boolean jwxHandle(HttpServletRequest request, HttpServletResponse response){
		String url = request.getRequestURL().toString();
		HttpSession session = request.getSession();
		if("true".equals(session.getAttribute("jeeweixin"))){
			return true;
		}else{
			if(url.contains("jeeweixin")){
				session.setAttribute("jeeweixin", "true");
				return true;
			}
		}
		return false;*/
	}
	
    //在业务处理器处理请求执行完成后,生成视图之前执行的动作   
    @Override  
    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
    }  
  
    @Override  
    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response, Object handler, Exception ex)
            throws Exception {  
    }

    
    private boolean validUrl(String reqUrl){
		for(String s : unhandlers){
			if(reqUrl.contains(s)){
				return true;
			}
		}
		return false;
	}
    
    
	public List<String> getUnhandlers() {
		return unhandlers;
	}

	public void setUnhandlers(List<String> unhandlers) {
		this.unhandlers = unhandlers;
	}

	public String getLoginUrl() {
		return loginUrl;
	}

	public void setLoginUrl(String loginUrl) {
		this.loginUrl = loginUrl;
	}  
    
	
}
