package cn.edu.neusoft.core.junit;

import org.junit.BeforeClass;
import org.springframework.mock.web.MockServletContext;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.XmlWebApplicationContext;
import org.springframework.web.servlet.HandlerAdapter;
import org.springframework.web.servlet.HandlerExecutionChain;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.annotation.AnnotationMethodHandlerAdapter;
import org.springframework.web.servlet.mvc.annotation.DefaultAnnotationHandlerMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 测试用例基类
 * @author brian
 *
 */
public class JUnit4HttpBase {
	
	private static HandlerMapping handlerMapping;
	private static HandlerAdapter handlerAdapter;

	/**
	 * 读取spring3 MVC配置文件
	 */
	@BeforeClass
	public static void setUp() {
		if (handlerMapping == null) {
			try{
				String[] configs = { "file:resource/applicationContext.xml" };
				XmlWebApplicationContext context = new XmlWebApplicationContext();
				context.setConfigLocations(configs);
				MockServletContext msc = new MockServletContext();
				context.setServletContext(msc);
				context.refresh();
				msc.setAttribute(WebApplicationContext.ROOT_WEB_APPLICATION_CONTEXT_ATTRIBUTE,context);
				handlerMapping = (HandlerMapping) context.getBean(DefaultAnnotationHandlerMapping.class);
				handlerAdapter = (HandlerAdapter) context.getBean(context.getBeanNamesForType(AnnotationMethodHandlerAdapter.class)[0]);
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}

	/**
	 * 执行request对象请求的action
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ModelAndView excuteAction(HttpServletRequest request, HttpServletResponse response){
		try {
			HandlerExecutionChain chain = handlerMapping.getHandler(request);
			final ModelAndView model = handlerAdapter.handle(request, response, chain.getHandler());
			return model;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
