package cn.edu.neusoft.core.interceptor;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;
import javax.servlet.http.HttpSession;
import java.io.IOException;

//Java 开发的网站中，经常在访问页面的时候，url地址会有 jsessionid 的信息，本代码用来删除这个东西
public class DisableUrlSessionFilter implements Filter {
  
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        if (!(request instanceof HttpServletRequest)) {
            chain.doFilter(request, response);  
            return;  
        }  
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;


//      isRequestedSessionIdFromURL():检查请求的会话ID来作为请求URL的一部分

        if (httpRequest.isRequestedSessionIdFromURL()) {  
            HttpSession session = httpRequest.getSession();
            if (session != null)  
                session.invalidate();  
        }  
        
        // wrap response to remove URL encoding  
        HttpServletResponseWrapper wrappedResponse = new HttpServletResponseWrapper(httpResponse) {
            @Override  
            public String encodeRedirectUrl(String url) {  
                return url;  
            }  
  
            public String encodeRedirectURL(String url) {  
                return url;  
            }  
  
            public String encodeUrl(String url) {  
                return url;  
            }  
  
            public String encodeURL(String url) {  
                return url;  
            }  
        };

        chain.doFilter(request, wrappedResponse);


    }  
  
    public void init(FilterConfig config) throws ServletException {
    }  
  
    public void destroy() {  
    }  
}  