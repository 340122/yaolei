package cn.massz.core.service.impl;

import cn.massz.core.dao.CourseDao;
import cn.massz.core.po.Course;
import cn.massz.core.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("courseService")
public class CourseServiceImpl implements CourseService {
    @Autowired
    private CourseDao courseDao;
    @Override
    public List<Course> selectCourseList(Course course) {
        return courseDao.selectCourseList(course);
    }
}
