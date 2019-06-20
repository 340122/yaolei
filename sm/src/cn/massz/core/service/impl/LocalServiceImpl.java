package cn.massz.core.service.impl;



import cn.massz.core.dao.LocalDao;

import cn.massz.core.po.Local;

import cn.massz.core.service.LocalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 数据字典Service接口实现类
 */
@Service("localService")
public class LocalServiceImpl implements LocalService {
    @Autowired
    private LocalDao localDao;
    //根据类别代码查询数据字典
    @Override
    public List<Local> findLocalByTypeCode(Integer typeid) {
        return localDao.selectLocalByTypeCode(typeid);
    }
}
