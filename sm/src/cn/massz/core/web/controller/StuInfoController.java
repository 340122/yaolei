package cn.massz.core.web.controller;

import cn.massz.common.utils.Page;
import cn.massz.core.po.Login;
import cn.massz.core.po.StuInfo;
import cn.massz.core.service.StuInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.Date;

/**
 * 学籍控制器类
 */
@Controller
public class StuInfoController {
    @Autowired
    private StuInfoService stuInfoService;

    @RequestMapping(value = "/stuInfo/list.action")
    public String list(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer rows, String sno, String sname, String idcard, Model model){
        Page<StuInfo> stuInfos = stuInfoService.findStuInfoList(page, rows, sno, sname, idcard);
        model.addAttribute("page", stuInfos);
        model.addAttribute("sno", sno);
        model.addAttribute("sname", sname);
        model.addAttribute("idcard", idcard);
        return "stuInfo";
    }
    /**
     * 创建学生学籍信息
     */
    @RequestMapping("/stuInfo/create.action")
    @ResponseBody
    public String createStudent(StuInfo stuInfo, HttpSession session) {
        Login user = (Login) session.getAttribute("USER_SESSION");
        //将当前用户id存储在客户对象中
        stuInfo.setId(user.getId());
        //创建date对象
        Date date = new Date();
        //得到一个Timestamp格式的时间，存入MySQL中的时间格式“yyyy/MM/dd HH:mm:ss”
        Timestamp timestamp = new Timestamp(date.getTime());
        stuInfo.setIntotime(timestamp);
        int rows = stuInfoService.createStuInfo(stuInfo);
        if (rows > 0) {
            return "OK";
        } else {
            return "FALSE";
        }
    }
    /**
     * 通过id 修改学生学籍信息
     */
    @RequestMapping("/stuInfo/getStudentById.action")
    @ResponseBody
    public StuInfo getStudentById(Integer id){
        StuInfo stuInfo = stuInfoService.getStuInfoById(id);
        return stuInfo;
    }
    /**
     * 更新学生学籍信息
     */
    @RequestMapping("/stuInfo/update.action")
    @ResponseBody
    public String stuInfoUpdate(StuInfo stuInfo){
        int rows = stuInfoService.updateStuInfo(stuInfo);
        if (rows > 0){
            return "OK";
        }else {
            return "FALSE";
        }
    }
    /**
     * 删除学生学籍信息
     */
    @RequestMapping("/stuInfo/delete.action")
    @ResponseBody
    public String stuInfoDelete(Integer id){
        int rows = stuInfoService.deleteStuInfo(id);
        if (rows >0){
            return "OK";
        }else {
            return "False";
        }
    }
}
