package cn.edu.neusoft.core.ctrl;

import cn.edu.neusoft.core.junit.JUnit4HttpBase;
import org.junit.Test;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;

public class OrmRunTest extends JUnit4HttpBase { 
	
	@Test
    public void run() throws Exception {
		System.out.println("########### orm run start ");
		
		MockHttpServletRequest request = new MockHttpServletRequest();
        MockHttpServletResponse response = new MockHttpServletResponse();
        
        request.setRequestURI("/core/init");  
        this.excuteAction(request, response);
        
        System.out.println("########### orm run end ");
    }  
	

}

