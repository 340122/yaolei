package cn.massz.core.dao;

import cn.massz.core.po.Student;

import java.util.List;

public interface StudentDao {

    //学生列表
    List<Student> selectStudentList(Student student);
    //学生数
    Integer selectStudentListCount(Student student);
    //创建学生
    Integer createStudent(Student student);
    //获取学生id
    Student getStudentById(Integer id);
    //修改学生信息
    Integer updateStudent(Student student);
    //根据id删除学生
    Integer deleteStudent(Integer id);

}
