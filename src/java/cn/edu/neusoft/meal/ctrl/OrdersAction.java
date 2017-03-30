package cn.edu.neusoft.meal.ctrl;

import cn.edu.neusoft.meal.domain.Orders;
import cn.edu.neusoft.meal.service.OrdersService;
import cn.edu.neusoft.meal.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class OrdersAction
{
    @Autowired
    UserService userService;
    @Autowired
    OrdersService ordersService;
    @Autowired
    HttpServletRequest request;

    @RequestMapping("fruit/deleteAll")
    public ModelAndView deleteAllOrder()
    {
        String[] orderId = request.getParameterValues("choose");
        for (int i = 0; i < orderId.length; i++)
        {
            ordersService.deleteOrder(orderId[i]);
            HttpSession session = request.getSession();
            int a = (int) session.getAttribute("ShopNumber");
            session.setAttribute("ShopNumber", a - 1);
        }
        String msg = "删除成功！！";
        String href = request.getContextPath() + "/fruit/ShopCartView.html";
        ModelAndView mv = new ModelAndView("fruit/result");
        mv.addObject("msg", msg);
        mv.addObject("href", href);
        return mv;
    }

    @RequestMapping("fruit/updateOrders")
    public ModelAndView updateOrders()
    {
        String[] numbers = request.getParameterValues("number");
        String[] orderId = request.getParameterValues("choose");
        for (int i = 0; i < numbers.length; i++)
        {

            ordersService.updateOrders(numbers[i], orderId[i]);
            HttpSession session = request.getSession();
            int a = (int) session.getAttribute("ShopNumber");
            session.setAttribute("ShopNumber", a - 1);
        }
        String msg = "支付成功，请前往个人中心查看！！";
        String href = request.getContextPath() + "/fruit/manageOrder.html";
        ModelAndView mv = new ModelAndView("fruit/result");
        mv.addObject("msg", msg);
        mv.addObject("href", href);
        return mv;
    }

    @RequestMapping("/fruit/deleteOrders")
    public ModelAndView deleteOrders(String id)
    {
        ordersService.deleteOrder(id);
        String msg = "删除成功！！";
        HttpSession session = request.getSession();
        int i = (int) session.getAttribute("ShopNumber");
        session.setAttribute("ShopNumber", i - 1);

        String href = request.getContextPath() + "/fruit/ShopCartView.html";
        ModelAndView mv = new ModelAndView("fruit/result");
        mv.addObject("msg", msg);
        mv.addObject("href", href);
        return mv;
    }

    @RequestMapping("fruit/addShopOrder")
    public ModelAndView addShopOrder(String id)
    {
        HttpSession session = request.getSession();
        try
        {
            if (session.getAttribute("name") != null)
            {
                int userId = userService.findUserId(session.getAttribute("userName"));
                ordersService.addShopOrder(userId, id);
                int ShopNumber = (int) session.getAttribute("ShopNumber");
                session.setAttribute("ShopNumber", ShopNumber + 1);
                ModelAndView mv = new ModelAndView("redirect:/fruit/MainPage.html");
                return mv;
            } else
            {
                String msg = "未登录，请前往登录页登录！";
                String href = request.getContextPath() + "/fruit/Login.html";
                ModelAndView mv = new ModelAndView("fruit/result");
                mv.addObject("msg", msg);
                mv.addObject("href", href);
                return mv;
            }

        } catch (NullPointerException e)
        {

        }
        return null;
    }

    @RequestMapping("fruit/manageOrder")
    public ModelAndView manageOrderVew()
    {

        ModelAndView mv = null;
        HttpSession session = request.getSession();

        try
        {
            if (session.getAttribute("name") != null)
            {
                String name = (String) session.getAttribute("userName");
                List<Orders> ordersId = ordersService.findMyOrders(name);
                mv = new ModelAndView("fruit/manageOrder");
                mv.addObject("ordersId", ordersId);
                return mv;
            } else
            {
                String msg = "未登录，请前往登录页登录！";
                String href = request.getContextPath() + "/fruit/Login.html";
                mv = new ModelAndView("fruit/result");
                mv.addObject("msg", msg);
                mv.addObject("href", href);
                return mv;
            }
        } catch (NullPointerException e)
        {
        }
        return mv;
    }

    @RequestMapping("fruit/ShopCartView")
    public ModelAndView ShopCartView()
    {

        ModelAndView mv = null;
        HttpSession session = request.getSession();
        try
        {
            if (session.getAttribute("name") != null)
            {
                String name = (String) session.getAttribute("userName");
                List<Orders> orderses = ordersService.findOrdersShop(name);
                mv = new ModelAndView("fruit/shopCart");
                mv.addObject("order", orderses);
                return mv;
            } else
            {
                String msg = "未登录，请登录！！";
                String href = request.getContextPath() + "/fruit/Login.html";
                mv = new ModelAndView("fruit/result");
                mv.addObject("msg", msg);
                mv.addObject("href", href);
                return mv;
            }

        } catch (NullPointerException e)
        {

        }
        return mv;
    }
}
