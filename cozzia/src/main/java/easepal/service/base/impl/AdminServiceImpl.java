package easepal.service.base.impl;

import easepal.dao.IBaseDao;
import easepal.model.base.AdminInfo;

import easepal.service.base.IAdminService;
import easepal.service.impl.BaseServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author: 郭清泉
 * @date: 2015/3/26
 * @version: v1.0.
 * @description:
 */
@Service("adminService")
public class AdminServiceImpl extends BaseServiceImpl<AdminInfo> implements IAdminService {

    private IBaseDao<AdminInfo> adminDao;

    public IBaseDao<AdminInfo> getAdminDao() {
        return adminDao;
    }



    @Autowired
    public void setAdminDao(IBaseDao<AdminInfo> adminDao) {
        this.adminDao = adminDao;
    }

    @Override
    public AdminInfo login(String loginName, String password) {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("password", password);
        params.put("loginName", loginName);
        AdminInfo t = adminDao.get("from AdminInfo t where t.loginName = :loginName and t.password = :password", params);
        if (t != null) {
            return t;
        }
        return null;
    }
}
