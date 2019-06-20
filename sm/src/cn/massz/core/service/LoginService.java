package cn.massz.core.service;

import cn.massz.core.po.Login;
import sun.rmi.runtime.Log;

import java.util.List;

/**
 * 登录service接口
 */
public interface LoginService {

    Login findInfo(String username, String password);

    List<Login> findName(String username);

    void addInfo(String username, String password);

    Integer up(Login login);
}
