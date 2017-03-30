package cn.edu.neusoft.meal.ctrl;

import cn.edu.neusoft.meal.util.UeditorUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
public class UeditorAction {
    @Autowired
    HttpServletRequest request;
    @Autowired
    UeditorUtil ueditorUtil;
    @RequestMapping("ueditor/storePut")
    public ModelAndView shiyan1(String editor) {
        ModelAndView mv = new ModelAndView("ueditor/view");
        HttpSession session=request.getSession();
        String ss= (String) session.getAttribute("seeName");
        ueditorUtil.UeditorPut(editor,ss);
        mv.addObject("aa", ss);
        return mv;

    }
    @RequestMapping("fruit/StorePutView")
    public ModelAndView UeditorView(){
        HttpSession session=request.getSession();
        String ss= (String) session.getAttribute("seeName");
        String shop=ueditorUtil.UeditorShop(ss);
        session.setAttribute("shop",shop);
        ModelAndView mv=new ModelAndView("redirect:/ueditor/index.jsp");
        mv.addObject("asw",shop);

        return mv;

    }
    @RequestMapping("fruit/shopView")
    public ModelAndView ShopView(String name){

        ModelAndView mv = new ModelAndView("ueditor/view");
        mv.addObject("aa", name);
        return mv;
    }

}
