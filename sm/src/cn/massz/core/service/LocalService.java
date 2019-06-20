package cn.massz.core.service;

import cn.massz.core.po.Local;

import java.util.List;

/**
 * 数据字典Service接口
 */
public interface LocalService {
    //根据类别代码查询数据字典
    List<Local> findLocalByTypeCode(Integer typeid);
}
