package cn.massz.core.service.impl;

import cn.massz.common.utils.Page;
import cn.massz.core.dao.StudentDao;
import cn.massz.core.po.Student;
import cn.massz.core.service.StudentService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 学生成绩接口实现类
 */
@Service("studentService")
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentDao studentDao;
    @Override
    public Page<Student> findStudentList(Integer page, Integer rows, String stu_sno, String stu_name, String classs) {
        //创建学生对象
        Student student = new Student();
        //判断学生学号
        if (StringUtils.isNoneBlank(stu_sno)){
            student.setStu_sno(stu_sno);
        }
        //判断学生姓名
        if(StringUtils.isNoneBlank(stu_name)){
            student.setStu_name(stu_name);
        }
        //判断学生班级
        if(StringUtils.isNoneBlank(classs)){
            student.setClasss(classs);
        }
        //当前页
        student.setStart((page-1) * rows);
        //每页数
        student.setRows(rows);
        //查询学生列表
        List<Student> customers = studentDao.selectStudentList(student);
        //查询学生列表总记录数
        Integer count = studentDao.selectStudentListCount(student);
        //创建page返回对象
        Page<Student> result = new Page<>();
        result.setPage(page);
        result.setRows(customers);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }
    //创建学生
    @Override
    public Integer createStudent(Student student) {
        return studentDao.createStudent(student);
    }
    //获取学生id
    @Override
    public Student getStudentById(Integer id) {
        return studentDao.getStudentById(id);
    }
    //修改学生信息
    @Override
    public Integer updateStudent(Student student) {
        return studentDao.updateStudent(student);
    }
    //删除学生信息
    @Override
    public Integer deleteStudent(Integer id) {
        return studentDao.deleteStudent(id);
    }
}
