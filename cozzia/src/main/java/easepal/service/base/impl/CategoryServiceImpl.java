package easepal.service.base.impl;

import easepal.dao.IBaseDao;
import easepal.model.base.Category;
import easepal.service.base.ICategoryService;
import easepal.service.impl.BaseServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2015/4/2.
 */
@Service("categoryService")
public class CategoryServiceImpl extends BaseServiceImpl<Category> implements ICategoryService {
    private IBaseDao<Category> categoryIBaseDao;

    public IBaseDao<Category> getCategoryIBaseDao() {
        return categoryIBaseDao;
    }

    @Autowired
    public void setCategoryIBaseDao(IBaseDao<Category> categoryIBaseDao) {
        this.categoryIBaseDao = categoryIBaseDao;
    }
}
