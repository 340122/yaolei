package cn.massz.core.service;

import cn.massz.common.utils.Page;
import cn.massz.core.po.Student;


/**
 * 学生成绩service接口
 */
public interface StudentService {
    //List<Student> selectStudentList();
    Page<Student> findStudentList(Integer page,Integer rows,String stu_sno,String stu_name,String classs);

    //增加学生
    Integer createStudent(Student student);

    //获取学生id
    Student getStudentById(Integer id);
    //修改学生信息
    Integer updateStudent(Student student);
    //删除id学生信息
    Integer deleteStudent(Integer id);
}
