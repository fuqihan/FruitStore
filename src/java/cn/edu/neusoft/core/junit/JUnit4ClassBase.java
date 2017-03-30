package cn.edu.neusoft.core.junit;

import org.junit.Before;
import org.junit.runner.RunWith;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/** 
 * JUnit测试action时使用的基类 
 */  
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml", "classpath:jeeweixin-servlet.xml"})
public class JUnit4ClassBase{  
	
	public MockHttpServletRequest request;
	public MockHttpServletResponse response;
  
    /** 
     * 读取配置文件 
     */  
    @Before
    public void before(){  
        request = new MockHttpServletRequest();
        response = new MockHttpServletResponse();
        request.setCharacterEncoding("UTF-8");  
    }  
}  

