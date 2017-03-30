package cn.edu.neusoft.meal.ctrl;

import cn.edu.neusoft.meal.domain.Fruits;
import cn.edu.neusoft.meal.domain.Seller;
import cn.edu.neusoft.meal.service.FruitsService;
import cn.edu.neusoft.meal.service.SellerService;
import cn.edu.neusoft.meal.service.StoreService;
import cn.edu.neusoft.meal.util.UploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class SellerAdmin {
    @Autowired
    SellerService sellerService;
    @Autowired
    HttpServletRequest request;
    @Autowired
    FruitsService fruitsService;
    @Autowired
    UploadUtil uploadUtil;
    @Autowired
    StoreService storeService;

    @RequestMapping("fruit/sellerLigonView")
    public ModelAndView SellerLoginView() {
        ModelAndView mv = new ModelAndView("fruit/sellerLogin");
        return mv;
    }

    @RequestMapping("fruit/sellerLogin")
    public ModelAndView SellerLogin(Seller seller) {
        HttpSession session = request.getSession();
        String msg = "";
        String href = "";

        try {
            Seller seller1 = sellerService.findSellerLogin(seller);
            if (seller1.getName() != null) {
                session.setAttribute("sellerName", seller1.getName());
                session.setAttribute("seeName",seller1.getSellerName());
                session.setAttribute("sId",seller1.getId());
                msg = "商家登录成功!";
                href = request.getContextPath() + "/fruit/sellerIndex.html";
            } else {
                msg = "商家登录失败，请重新登录!";
                href = request.getContextPath() + "/fruit/sellerLoginView.html";
            }
        } catch (Exception e) {
            msg = "用户不存在,请重新登录!";
            href = request.getContextPath() + "/fruit/sellerLoginView.html";
        }

        ModelAndView mv = new ModelAndView("fruit/result");
        mv.addObject("msg", msg);
        mv.addObject("href", href);
        return mv;
    }


    @RequestMapping("fruit/sellerRegisterView")
    public ModelAndView SellerRegisterView(){
        ModelAndView mv=new ModelAndView("fruit/sellerRegister");
        return mv;
    }

    @RequestMapping("fruit/addSeller")
    public ModelAndView AddSeller(Seller seller){
        String msg = "";
        String href = "";
        try {
            sellerService.addSeller(seller);
            msg = "商家注册成功!";
            href = request.getContextPath() + "/fruit/sellerIndex.html";
        }catch (Exception e){
            msg = "商家注册失败!";
            href = request.getContextPath() + "/fruit/sellerRegisterView.html";
        }
        ModelAndView mv = new ModelAndView("fruit/result");
        mv.addObject("msg", msg);
        mv.addObject("href", href);
        return mv;
    }
    @RequestMapping("fruit/sellerIndex")
    public ModelAndView sellerIndex(){
        HttpSession session=request.getSession();

        if(session.getAttribute("sellerName")!=null){

            ModelAndView mv=new ModelAndView("fruit/sellerIndex");
            return mv;
        }else {
            ModelAndView mv=new ModelAndView("fruit/sellerLogin");
            return mv;
        }

    }

    @RequestMapping("fruit/sellerGoodsInfo")
    public ModelAndView SellerGoodsInfo(){
        HttpSession session = request.getSession();
        ModelAndView mv = null;

        if(session.getAttribute("sellerName")!=null)
        {
            String sName = (String) session.getAttribute("sellerName");
            List<Fruits> sFruitsList = fruitsService.findStoreFruits(sName);

            mv = new ModelAndView("fruit/sellerGoodsInfo");
            mv.addObject("myFruitsList", sFruitsList);
        }
            return mv;

    }

    @RequestMapping("fruit/deleteFruits")
    public ModelAndView DeleteFruits(String id) {
        String msg = "";
        String href = "";

        try {
            fruitsService.deleteFruit(id);
            msg = "删除成功";

        } catch (Exception e) {
            msg = "删除失败";

        }
        href = request.getContextPath() + "/fruit/sellerGoodsInfo.html";
        ModelAndView mv = new ModelAndView("fruit/result");
        mv.addObject("msg", msg);
        mv.addObject("href", href);
        return mv;
    }

    @RequestMapping("fruit/addFruits")
    public ModelAndView AddFruits()
    {
        ModelAndView mv = new ModelAndView("fruit/addFruits");
        return mv;
    }

    @RequestMapping(value = "fruit/addGoods", method = RequestMethod.POST)
    public ModelAndView AddGoods(Fruits fruits,MultipartFile img,HttpSession session)
    {
        Object sel_id = session.getAttribute("sId");
        String image = uploadUtil.updateFruits(img);
        fruits.setImage(image);
        fruitsService.addFruits(fruits);
        String fru_id = fruitsService.maxId();
        System.out.println(fru_id);
        fruitsService.addStore(fru_id,sel_id);
     //   storeService.addNewCard(sel_id,fru_id);配置错误

        ModelAndView mv = new ModelAndView("redirect:/fruit/sellerGoodsInfo.html");
        return mv;
    }

    @RequestMapping("fruit/shopAll")
    public ModelAndView ShopAll(){
        List<Seller> sellers=sellerService.findSellerName();
        ModelAndView mv=new ModelAndView("fruit/shopAll");
        mv.addObject("see",sellers);
        return mv;

    }

}
