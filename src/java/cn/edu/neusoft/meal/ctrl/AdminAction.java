package cn.edu.neusoft.meal.ctrl;


import cn.edu.neusoft.meal.domain.*;
import cn.edu.neusoft.meal.service.FruitsService;
import cn.edu.neusoft.meal.service.OrdersService;
import cn.edu.neusoft.meal.service.SellerService;
import cn.edu.neusoft.meal.service.UserService;
import cn.edu.neusoft.meal.util.UploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class AdminAction {

    @Autowired
    UploadUtil uploadUtil;
    @Autowired
    UserService userService;
    @Autowired
    FruitsService fruitsService;
    @Autowired
    SellerService sellerSerbice;
    @Autowired
    OrdersService ordersService;
    @Autowired
    HttpServletRequest request;


    @RequestMapping("/fruit/adminLogin")
    public ModelAndView AdminLogin() {

        ModelAndView mv = new ModelAndView("/fruit/adminLogin");
        return mv;
    }

    @RequestMapping("/fruit/AdminIndex")
    public ModelAndView IndexView(Admin admin) {

        Admin admin1 = userService.findAdmin(admin);
        HttpSession session = request.getSession();

        try {
            if (admin1.getName() != null) {
                session.setAttribute("adminName", admin1.getName());
                ModelAndView mv = new ModelAndView("redirect:/fruit/admin/IndexView.html");
                return mv;
            } else {
                ModelAndView mv = new ModelAndView("/fruit/adminLogin");
                return mv;
            }
        } catch (NullPointerException e) {
            ModelAndView mv = new ModelAndView("/fruit/adminLogin");
            return mv;
        }
    }

    @RequestMapping("fruit/admin/IndexView")
    public ModelAndView IndexView() {
        ModelAndView mv = new ModelAndView("/fruit/admin/index");
        return mv;
    }


    @RequestMapping("/fruit/admin/userAdmin")
    public ModelAndView UserAdmin(String userSearch, String pageno) {
        int page_no;
        if (userSearch == null) {
            userSearch = "%%";
        } else {
            userSearch = "%" + userSearch + "%";
        }
        if (pageno != null) {
            page_no = Integer.parseInt(pageno);
            page_no = page_no * 5;
        } else {
            page_no = 0;
        }
        long pages = userService.getPages(userSearch);

        List<User> users = userService.findUser(page_no, userSearch);

        ModelAndView mv = new ModelAndView("/fruit/admin/userAdmin");
        mv.addObject("uss", users);
        mv.addObject("pages", pages);
        return mv;
    }

    @RequestMapping("fruit/admin/UpdeteUserView")
    public ModelAndView UpdeteUserView(String id) {
        User users = userService.findUpdeteUser(id);

        ModelAndView mv = new ModelAndView("fruit/admin/edit_user");
        mv.addObject("users", users);
        return mv;
    }

    @RequestMapping("fruit/admin/editUser")
    public ModelAndView EditUser(User user) {
        String msg = "";
        String href = "";

        try {
            Boolean result = userService.updateUser(user);
            msg = "修改成功";
            href = request.getContextPath() + "/fruit/admin/userAdmin.html";

        } catch (Exception e) {
            msg = "修改失败";
            href = request.getContextPath() + "/fruit/admin/UpdeteUserView.html?id=" + user.getId();
        }

        ModelAndView mv = new ModelAndView("fruit/result");
        mv.addObject("msg", msg);
        mv.addObject("href", href);
        return mv;


    }

    @RequestMapping("fruit/admin/deleteUser")
    public ModelAndView DeleteUser(String id) {
        String msg = "";
        String href = "";

        try {
            userService.deleteUser(id);
            msg = "删除成功";

        } catch (Exception e) {
            msg = "删除失败";

        }
        href = request.getContextPath() + "/fruit/admin/userAdmin.html";
        ModelAndView mv = new ModelAndView("fruit/result");
        mv.addObject("msg", msg);
        mv.addObject("href", href);
        return mv;
    }

    @RequestMapping("fruit/admin/fruitAdmin")
    public ModelAndView FruitsAdminView(String fruitSearch, String pageno) {
        int page_no;
        if (fruitSearch == null) {
            fruitSearch = "%%";
        } else {
            fruitSearch = "%" + fruitSearch + "%";
        }
        if (pageno != null) {
            page_no = Integer.parseInt(pageno);
            page_no = page_no * 5;
        } else {
            page_no = 0;
        }
        long pages = fruitsService.getPages(fruitSearch);
        List<Fruits> fruitses = fruitsService.findFruitses(page_no, fruitSearch);
        ModelAndView mv = new ModelAndView("fruit/admin/fruitAdmin");
        mv.addObject("fruit", fruitses);
        mv.addObject("pages", pages);
        return mv;
    }

    @RequestMapping("fruit/admin/UpdeteFruitView")
    public ModelAndView UpdeteFruitView(String id) {
        Fruits fruits = fruitsService.fruitsShop(id);
        ModelAndView mv = new ModelAndView("fruit/admin/edit_fruit");
        mv.addObject("fru", fruits);
        return mv;
    }

    @RequestMapping(value = "fruit/admin/editFruit", method = RequestMethod.POST)
    public ModelAndView UpdeteFruit(Fruits fruits, MultipartFile img, HttpServletRequest request) {
        String msg = "";
        String href = "";
        try {

            String image = uploadUtil.updateFruits(img);
            fruits.setImage(image);
            fruitsService.updateFruit(fruits);

        } catch (Exception e) {
            e.printStackTrace();
        }
        msg = "修改成功";
        href = request.getContextPath() + "/fruit/admin/fruitAdmin.html";
        ModelAndView mv = new ModelAndView("fruit/result");
        mv.addObject("msg", msg);
        mv.addObject("href", href);
        return mv;
    }

    @RequestMapping("fruit/admin/deleteFruit")
    public ModelAndView DeleteFruit(String id) {
        String msg = "";
        String href = "";

        try {
            fruitsService.deleteFruit(id);
            msg = "删除成功";

        } catch (Exception e) {
            msg = "删除失败";

        }
        href = request.getContextPath() + "/fruit/admin/fruitAdmin.html";
        ModelAndView mv = new ModelAndView("fruit/result");
        mv.addObject("msg", msg);
        mv.addObject("href", href);
        return mv;
    }

    @RequestMapping("fruit/admin/sellerAdmin")
    public ModelAndView SellerAdmin(String sellerSearch, String pageno) {
        int page_no;
        if (sellerSearch == null) {
            sellerSearch = "%%";
        } else {
            sellerSearch = "%" + sellerSearch + "%";
        }
        if (pageno != null) {
            page_no = Integer.parseInt(pageno);
            page_no = page_no * 5;
        } else {
            page_no = 0;
        }
        long pages = sellerSerbice.getPages(sellerSearch);
        List<Seller> seller = sellerSerbice.findSeller(page_no, sellerSearch);
        ModelAndView mv = new ModelAndView("fruit/admin/sellerAdmin");
        mv.addObject("seller", seller);
        mv.addObject("pages", pages);
        return mv;
    }

    @RequestMapping("fruit/admin/ordersAdmin")
    public ModelAndView findOrders() {
        List<Orders> orderses = ordersService.findOrders();
        ModelAndView mv = new ModelAndView("fruit/admin/ordersAdmin");
        mv.addObject("order", orderses);
        return mv;
    }

}
