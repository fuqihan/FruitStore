package cn.edu.neusoft.meal.ctrl;

import cn.edu.neusoft.meal.domain.Fruits;
import cn.edu.neusoft.meal.service.FruitsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
public class FruitsAction {
    @Autowired
    private FruitsService fruitsService;
    @Autowired
    HttpServletRequest request;
    @RequestMapping("fruit/goods")
    public ModelAndView FruitsShop(String id){

        Fruits fruits=fruitsService.fruitsShop(id);
        ModelAndView mv=new ModelAndView("fruit/goods");
        mv.addObject("fru",fruits);
        return mv;
    }


    @RequestMapping("fruit/searchFruits")
    public ModelAndView searchFruits(String keywords,String conditions){

        if(keywords==null){
            keywords="%%";
        }
        else {
            keywords="%"+keywords+"%";
        }

        List<Fruits> fruitses=fruitsService.searchFruits(keywords,conditions);
        ModelAndView mv=new ModelAndView("fruit/searchFruits");
        mv.addObject("fru",fruitses);
        return mv;
    }


}
