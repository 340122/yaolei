package cn.massz.core.web.controller;

import cn.massz.core.po.Course;
import cn.massz.core.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 *
 */
@Controller
public class CourseController {
    @Autowired
    private CourseService courseService;

    @RequestMapping("/student/list2.action")
    public  String courselist(Course course, Model model){
        List<Course> courses = courseService.selectCourseList(course);
        model.addAttribute("courses",courses);
        return "student";
    }
}
