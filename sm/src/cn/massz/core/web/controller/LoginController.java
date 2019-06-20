package cn.massz.core.web.controller;

import cn.massz.core.po.Login;
import cn.massz.core.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 用户登陆控制器
 */
@Controller
public class LoginController {
    @Autowired
    private LoginService loginService;

    @RequestMapping(value = "/login.action")
    public String login(String username, String password, Model model , HttpSession session){
        //通过账号和密码查询学生
        Login user = loginService.findInfo(username, password);
        if (user!=null){
            //将用户对象添加到Session中
            session.setAttribute("USER_SESSION",user);
            //跳转到主页面
            return "redirect:student/list.action";
        }
        model.addAttribute("msg","账号或密码错误，请重新输入");
        //返回登录页面
        return "login";
    }
    @RequestMapping(value = "addPage.action")
    public String addPage(){
        return "addAdmin";
    }
    //注册登录账号
    @RequestMapping(value = "/add.action")
    public String add(String username,String password,Model model){
        List<Login> name = loginService.findName(username);
        System.out.print(name);
        if (name.size()>0){
            model.addAttribute("msg2","账号已注册");
            return "addAdmin";
        }else{
            loginService.addInfo(username, password);
            model.addAttribute("msg2","注册成功，请重新登录");
            return "login";
        }
    }
    /**
     * 退出登录
     */
    @RequestMapping(value = "/logout.action")
    public String logout(HttpSession session){
        //清除Session
        session.invalidate();
        //重定向到登录页面的跳转方法
        return "redirect:login.action";
    }
    /**
     * 向用户登录页面跳转
     */
    @RequestMapping(value = "/login.action",method = RequestMethod.GET)
    public String toLogin(){
        return "login";
    }
    /**
     * 修改账号信息
     * 1.跳转页面2.进行修改
     */
    @RequestMapping(value = "/upp.action")
    public String upp(){
        return "updateAdmin";
    }
    @RequestMapping(value = "/up.action")
    public String up(HttpSession session,Model model,Login login){
        //获取Session中的当前用户信息
        /*Login user = (Login) session.getAttribute("USER_SESSION");
        String username1 = user.getUsername();
        model.addAttribute("username",username1);*/
        Integer up = loginService.up(login);
        if (up>0){
            model.addAttribute("msg2","账号信息修改成功，请重新登录");
            return "login";
        }else {
            model.addAttribute("msg2","账号信息修改失败");
            return "updateAdmin";
        }
    }
}
