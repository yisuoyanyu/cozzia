package easepal.action.system;

import easepal.action.BaseAction;
import easepal.model.base.Category;
import easepal.model.base.Modules;
import easepal.model.ui.Grid;
import easepal.service.base.ICategoryService;
import easepal.service.base.IModuleService;
import easepal.service.base.impl.CategoryServiceImpl;
import easepal.util.ColumnType;
import easepal.util.HqlFilter;
import easepal.util.SqlOperator;
import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2015/4/2.
 */
@Namespace("/")
@ParentPackage(value = "basePackage")
@Results({
        @Result(name = "list", location = "modetype/list.jsp"),
        @Result(name = "show_add", location = "modetype/add.jsp"),
        @Result(name = "show_update", location = "modetype/update.jsp"),
})
@Action("category")
public class CategoryAction extends BaseAction<Category> {
    private HttpServletRequest request;
    private CategoryServiceImpl categoryService;
    private IModuleService imservice;

    @Autowired
    public void setService(ICategoryService service1){
        this.service = service1;
    }

    public String list(){
        HqlFilter hqlFilter = new HqlFilter();
        if (!StringUtils.isBlank(keywords)) {
            hqlFilter.addFilter("cateId", keywords, ColumnType.Integer, SqlOperator.like);
        }
        List<Category> list = service.findByFilter(hqlFilter, pageNum, 2);
        grid = new Grid();
        grid.setTotal(service.count());
        grid.setRows(list);
        grid.setNumPerPage(2);
        grid.setPageNum(pageNum);
        request = ServletActionContext.getRequest();
        request.setAttribute("list", grid);
        return "list";
    }

    public String show_add(){
//        ModuleAction moduleAction = new ModuleAction();
//        moduleAction.setService(imservice);
//         List<Modules> m_list = moduleAction.getList();
        List<Category> c_list = service.find();
        request = ServletActionContext.getRequest();
      //  request.setAttribute("m_list", m_list);
        request.setAttribute("c_list", c_list);
        return "show_add";
    }
}
