package cn.edu.neusoft.meal.ctrl;

import cn.edu.neusoft.meal.domain.Fruits;
import cn.edu.neusoft.meal.service.FruitsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
public class MainPageAction {

    @Autowired
    private FruitsService fruitsService;
    @RequestMapping("/index")
    public ModelAndView index(){

        ModelAndView mv=new ModelAndView("index");
        return mv;
    }
    @RequestMapping("/404")
    public ModelAndView notFound(){

        ModelAndView mv=new ModelAndView("404");
        return mv;
    }
    @RequestMapping("/500")
    public ModelAndView serverError(){

        ModelAndView mv=new ModelAndView("500");
        return mv;
    }
    @RequestMapping("/fruit/MainPage")
    public ModelAndView MainPage(){

        int fruitsHit = 0;
        List<Fruits> fruitses=fruitsService.findHitFruits(fruitsHit);
        //List<Fruits> fruitses1=FruitsService.findHitFruits(a+4);
        ModelAndView mv=new ModelAndView("fruit/homePage");
        mv.addObject("fruit",fruitses);
        return mv;
    }


}
