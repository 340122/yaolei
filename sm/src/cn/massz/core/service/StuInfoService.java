package cn.massz.core.service;

import cn.massz.common.utils.Page;
import cn.massz.core.po.StuInfo;

/**
 * 学籍service接口
 */
public interface StuInfoService {
    Page<StuInfo> findStuInfoList(Integer page, Integer rows, String sno, String sname, String idcard);

    //增加学生
    Integer createStuInfo(StuInfo stuInfo);

    //获取学生id
    StuInfo getStuInfoById(Integer id);
    //修改学生信息
    Integer updateStuInfo(StuInfo stuInfo);
    //删除id学生信息
    Integer deleteStuInfo(Integer id);
}
