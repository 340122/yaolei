package cn.massz.core.service;


import cn.massz.core.po.Course;

import java.util.List;

public interface CourseService {
    List<Course> selectCourseList(Course course);
}
