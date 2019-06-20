package cn.massz.core.dao;

import cn.massz.core.po.Course;

import java.util.List;

public interface CourseDao {
    List<Course> selectCourseList(Course course);
}
