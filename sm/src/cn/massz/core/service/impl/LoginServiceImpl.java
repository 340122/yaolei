package cn.massz.core.service.impl;

import cn.massz.core.dao.LoginDao;
import cn.massz.core.po.Login;
import cn.massz.core.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 登录接口实现类
 */
@Service("loginService")
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginDao loginDao;
    @Override
    public Login findInfo(String username, String password) {
        Login info = loginDao.findInfo(username, password);
        return info;
    }

    @Override
    public List<Login> findName(String username) {
        return loginDao.findName(username);
    }

    //注册登录账号
    @Override
    public void addInfo(String username, String password) {
        loginDao.addInfo(username, password);
    }
    //修改账号信息
    @Override
    public Integer up(Login login ) {
        return loginDao.up(login);
    }
}
