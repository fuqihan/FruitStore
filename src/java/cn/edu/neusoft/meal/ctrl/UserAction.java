package cn.edu.neusoft.meal.ctrl;

import cn.edu.neusoft.meal.domain.User;
import cn.edu.neusoft.meal.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserAction
{
    @Autowired
    private UserService userService;
    @Autowired
    HttpServletRequest request;
    @Autowired
    HttpServletResponse response;


    @RequestMapping("fruit/Login")
    public ModelAndView Login()
    {

        ModelAndView mv = new ModelAndView("fruit/login");
        Cookie cookies[] = request.getCookies();
        //判断是否存在LoginSession这个Cookie，有就自动帮他填上账号密码
        for (int i = 0; cookies != null && i < cookies.length; i++)
        {
            if (cookies[i].getName().equals("LoginSession"))
            {
                User user1 = userService.findNamePsd(cookies[i].getValue());
                mv.addObject("uss", user1);

            }
        }
        return mv;
    }

    @RequestMapping("fruit/LoginSession")
    public ModelAndView LoginSession(User user)
    {

        User users = userService.getUserByNameAndPassword(user);
        HttpSession session = request.getSession();

        String msg = "";
        String href = null;
        try
        {
            //判断是否有这个用户
            if (users.getuserName() != null)
            {
                //购物车中的个数
                int shopCarNumber = userService.shopNumber(users.getId());
                //登录以后的名字
                session.setAttribute("name", users.getname());
                session.setAttribute("userName", users.getuserName());
                session.setAttribute("ShopNumber", shopCarNumber);
                msg = "登录成功";
                href = request.getContextPath() + "/fruit/MainPage.html";

                //每次登录成功都给用户一个Cookie
                Cookie cookie = new Cookie("LoginSession", users.getuserName());
                cookie.setMaxAge(30 * 24 * 3600);
                cookie.setPath("/fruit");
                response.addCookie(cookie);

            }

        } catch (NullPointerException e)
        {
            msg = "该用户不存在，请输入正确的用户名！";
            href = request.getContextPath() + "/fruit/Login.html";
        }

        ModelAndView mv = new ModelAndView("fruit/result");
        mv.addObject("msg", msg);
        mv.addObject("href", href);
        return mv;
    }

    @RequestMapping("fruit/register")
    public ModelAndView registerView()
    {
        ModelAndView mv = new ModelAndView("fruit/register");
        return mv;
    }

    @RequestMapping("fruit/addUser")
    public ModelAndView addUser(User user)
    {
        String msg = "";
        String href = null;

        try
        {
            Boolean result = userService.addUser(user);

            if (result)
            {
                msg = "添加成功";
                href = request.getContextPath() + "/fruit/Login.html";
            } else
            {
                msg = "添加失败";
            }
        } catch (Exception e)
        {
            msg = "用户名已存在";
            href = request.getContextPath() + "/fruit/register.html";
        }

        ModelAndView mv = new ModelAndView("fruit/result");
        mv.addObject("msg", msg);
        mv.addObject("href", href);
        return mv;
    }

    @RequestMapping("fruit/removeUser")
    public ModelAndView removeUser()
    {
        HttpSession session = request.getSession();
        session.removeAttribute("name");
        session.removeAttribute("userName");
        session.removeAttribute("ShopNumber");
        ModelAndView mv = new ModelAndView("redirect:/fruit/MainPage.html");
        return mv;
    }


    @RequestMapping("fruit/registerName")
    @ResponseBody
    public String RegisterName(String userName){
        List<User> users = userService.RegisterName(userName);
        String res = "";
        if(users.size() != 0){
            res="用户名已存在";
        }
        return res;
    }
    @RequestMapping("shiyan")
    @ResponseBody
    public String shiyan(){
        String aa="aaaa";
        return aa;
    }

}



