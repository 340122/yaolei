package cn.massz.core.dao;

import cn.massz.core.po.StuInfo;

import java.util.List;

public interface StuInfoDao {
    //学生学籍列表
    List<StuInfo> selectStuInfoList(StuInfo stuInfo);
    //学生学籍数
    Integer selectStuInfoListCount(StuInfo stuInfo);
    //创建学生学籍
    Integer createStuInfo(StuInfo stuInfo);
    //获取学生学籍id
    StuInfo getStuInfoById(Integer id);
    //修改学生学籍信息
    Integer updateStuInfo(StuInfo stuInfo);
    //根据id删除学生学籍
    Integer deleteStuInfo(Integer id);
}
