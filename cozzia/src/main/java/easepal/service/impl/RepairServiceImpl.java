package easepal.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import easepal.dao.IBaseDao;
import easepal.model.base.AdminInfo;
import easepal.model.business.MassageModel;
import easepal.model.business.Users;
import easepal.service.IRepairService;
import easepal.util.Md5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("repairService")
public class RepairServiceImpl  implements IRepairService {



	private IBaseDao<MassageModel> massageModelDao;
	private IBaseDao<AdminInfo> adminDao;

    public IBaseDao<MassageModel> getMassageModelDao() {
        return massageModelDao;
    }

    @Autowired
    public void setMassageModelDao(IBaseDao<MassageModel> massageModelDao) {
        this.massageModelDao = massageModelDao;
    }

    public IBaseDao<AdminInfo> getAdminDao() {
        return adminDao;
    }

    @Autowired
    public void setAdminDao(IBaseDao<AdminInfo> adminDao) {
        this.adminDao = adminDao;
    }


    private IBaseDao<Users> userDao;

    public IBaseDao<Users> getUserDao() {
        return userDao;
    }

    @Autowired
    public void setUserDao(IBaseDao<Users> userDao) {
        this.userDao = userDao;
    }

    @Override
	synchronized public void repair() {
		initAdmin();
        initUser();
        initMassageMode();
	}

	private void initAdmin() {
/*		Map<String, Object> m = new HashMap<String, Object>();
		m.put("loginName", "admin");
		AdminInfo t  = adminDao.get("from AdminInfo t where t.loginName = :loginName and t.id != '0'", m);
		if (t != null) {
            t.setLoginName(UUID.randomUUID().toString());
		}*/
        AdminInfo admin = new AdminInfo();
		admin.setId("1");
		admin.setLoginName("admin");
        admin.setPassword(Md5Util.md5("admin"));
		admin.setCreateTime(new Date());
		admin.setLastLoginTime(new Date());
		adminDao.saveOrUpdate(admin);
	}


    private void initMassageMode(){

        Long count = massageModelDao.count("select count(*) from MassageModel");
        if(count<10){
            MassageModel model = new MassageModel();
            model.setCateId(5);
            model.setIsDefault(false);
            model.setKnowledge("knowledge"+count);
            model.setModelKey(4);
            model.setModelId(UUID.randomUUID().toString());
            model.setStatus(1);
            model.setModelName("模式名称"+count);
            massageModelDao.saveOrUpdate(model);
        }
    }


    private void initUser(){
        Users user = new Users();
        user.setUserId(UUID.randomUUID().toString());
        user.setEmail("user@easepal.com.cn");
        user.setPassword("123456");
        user.setAddress("厦门思明区前埔路168号");
        user.setFirstName("Dominic");
        user.setLastName("Toretto");
        user.setStatus(1);
        userDao.saveOrUpdate(user);


    }

}
