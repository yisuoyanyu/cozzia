package easepal.service.base.impl;

import easepal.dao.IBaseDao;
import easepal.model.base.Modules;
import easepal.service.base.IModuleService;
import easepal.service.impl.BaseServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2015/4/2.
 */
@Service("moduleService")
public class ModuleServiceImpl extends BaseServiceImpl<Modules> implements IModuleService{
    private IBaseDao<Modules> modulesDao;

    public IBaseDao<Modules> getModulesDao() {
        return modulesDao;
    }

    @Autowired
    public void setModulesDao(IBaseDao<Modules> modulesDao) {
        this.modulesDao = modulesDao;
    }
}
