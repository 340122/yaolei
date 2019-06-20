package cn.massz.core.web.controller;

import cn.massz.common.utils.Page;
import cn.massz.core.po.Local;
import cn.massz.core.po.Login;
import cn.massz.core.po.Student;
import cn.massz.core.service.LocalService;
import cn.massz.core.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

/**
 * 学生控制器类
 */
@Controller
@Transactional
public class StudentController {
    @Autowired
    private StudentService studentService;
    @Autowired
    private LocalService localService;

    //班级来源
    @Value("${student.typeid.type}")
    private Integer FROM_TYPE;

    @RequestMapping(value = "/student/list.action")
    public String list(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer rows, String stu_sno, String stu_name, String classs, Model model){
        //条件查询所有学生
        Page<Student> students = studentService.findStudentList(page, rows, stu_sno, stu_name, classs);
        model.addAttribute("page", students);

        List<Local> fromType = localService.findLocalByTypeCode(FROM_TYPE);
        model.addAttribute("stu_sno", stu_sno);
        model.addAttribute("stu_name", stu_name);
        model.addAttribute("classs", classs);
        model.addAttribute("fromType", fromType);
        return "student";
    }

    /**
     * 创建客户
     */
    @RequestMapping("/student/create.action")
    @ResponseBody
    public String createStudent(Student student, HttpSession session) {
        //获取Session中的当前用户信息
        Login user = (Login) session.getAttribute("USER_SESSION");
        //将当前用户id存储在客户对象中
        student.setCreate_id(user.getId());
        //创建date对象
        Date date = new Date();
        //得到一个Timestamp格式的时间，存入MySQL中的时间格式“yyyy/MM/dd HH:mm:ss”
        Timestamp timestamp = new Timestamp(date.getTime());
        student.setCreate_time(timestamp);
        int rows = studentService.createStudent(student);
        System.out.println(rows);
        if (rows > 0) {
            return "OK";
        } else {
            return "FALSE";
        }
    }
    /**
     * 通过id 修改学生信息
     */
    @RequestMapping("/student/getStudentById.action")
    @ResponseBody
    public Student getStudentById(Integer id){
        Student student = studentService.getStudentById(id);
        return student;
    }
    /**
     * 更新学生信息
     */
    @RequestMapping("/student/update.action")
    @ResponseBody
    public String studentUpdate(Student student){
        int rows = studentService.updateStudent(student);
        if (rows > 0){
            return "OK";
        }else {
            return "FALSE";
        }
    }
    /**
     * 删除学生信息
     */
    @RequestMapping("/student/delete.action")
    @ResponseBody
    public String studentDelete(Integer id){
        int rows = studentService.deleteStudent(id);
        if (rows >0){
            return "OK";
        }else {
            return "False";
        }
    }
}
