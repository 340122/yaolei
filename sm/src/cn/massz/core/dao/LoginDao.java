package cn.massz.core.dao;

import cn.massz.core.po.Login;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LoginDao {
    //通过账号和密码查询
    Login findInfo(@Param("username") String username, @Param("password") String password);
    //1.注册登录账号之前查询是否重名
    List<Login> findName(@Param("username") String username);
    void addInfo(@Param("username") String username, @Param("password") String password);
    //修改账号密码
    Integer up(Login login);
}
