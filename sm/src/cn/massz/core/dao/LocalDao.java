package cn.massz.core.dao;

import cn.massz.core.po.Local;

import java.util.List;

public interface LocalDao {
    List<Local> selectLocalByTypeCode(Integer typeid);
}
