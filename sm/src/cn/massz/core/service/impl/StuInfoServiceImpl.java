package cn.massz.core.service.impl;

import cn.massz.common.utils.Page;
import cn.massz.core.dao.StuInfoDao;
import cn.massz.core.po.StuInfo;
import cn.massz.core.service.StuInfoService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 学籍接口实现类
 */
@Service("stuInfoService")
public class StuInfoServiceImpl implements StuInfoService {
    @Autowired
    private StuInfoDao stuInfoDao;
    @Override
    public Page<StuInfo> findStuInfoList(Integer page, Integer rows, String sno, String sname, String idcard) {
        StuInfo stuInfo = new StuInfo();
        //判断学生学号
        if (StringUtils.isNoneBlank(sno)){
            stuInfo.setSno(sno);
        }
        //判断学生姓名
        if(StringUtils.isNoneBlank(sname)){
            stuInfo.setSname(sname);
        }
        //判断学生身份证
        if(StringUtils.isNoneBlank(idcard)){
            stuInfo.setIdcard(idcard);
        }
        //当前页
        stuInfo.setStart((page-1) * rows);
        //每页数
        stuInfo.setRows(rows);
        //查询学生学籍信息列表
        List<StuInfo> customers = stuInfoDao.selectStuInfoList(stuInfo);
        //查询学生学籍信息列表总记录数
        Integer count = stuInfoDao.selectStuInfoListCount(stuInfo);
        //创建page返回对象
        Page<StuInfo> result = new Page<>();
        result.setPage(page);
        result.setRows(customers);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    /**
     * 创建学生学籍信息
     * @param stuInfo
     * @return
     */
    @Override
    public Integer createStuInfo(StuInfo stuInfo) {
        return stuInfoDao.createStuInfo(stuInfo);
    }

    /**
     * 获取学籍id
     * @param id
     * @return
     */
    @Override
    public StuInfo getStuInfoById(Integer id) {
        return stuInfoDao.getStuInfoById(id);
    }

    /**
     * 修改学生学籍信息
     * @param stuInfo
     * @return
     */
    @Override
    public Integer updateStuInfo(StuInfo stuInfo) {
        return stuInfoDao.updateStuInfo(stuInfo);
    }

    /**
     * 删除学籍信息
     * @param id
     * @return
     */
    @Override
    public Integer deleteStuInfo(Integer id) {
        return stuInfoDao.deleteStuInfo(id);
    }
}
