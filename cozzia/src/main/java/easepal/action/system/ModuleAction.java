package easepal.action.system;

import easepal.action.BaseAction;
import easepal.model.base.AdminInfo;
import easepal.model.base.Modules;
import easepal.model.ui.Grid;
import easepal.model.ui.OperResult;
import easepal.service.base.IModuleService;
import easepal.service.base.impl.ModuleServiceImpl;
import easepal.util.ColumnType;
import easepal.util.HqlFilter;
import easepal.util.LangUtil;
import easepal.util.SqlOperator;
import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.components.Checkbox;
import org.apache.struts2.convention.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Objects;

/**
 * Created by Administrator on 2015/4/2.
 */

@Namespace("/")
@ParentPackage(value = "basePackage")
@Results({
        @Result(name = "list", location = "module/list.jsp"),
        @Result(name = "show_add", location = "module/add.jsp"),
        @Result(name = "show_update", location = "module/update.jsp"),
})
@Action("module")
public class ModuleAction extends BaseAction<Modules>{
    private HttpServletRequest request;
    private ModuleServiceImpl moduleService;

    private Integer id;
    private String name ;
    private Integer sort ;
    private String status;
    private String remark ;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Autowired
    public void setService(IModuleService service) {
        this.service = service;
    }

    public String list(){
        HqlFilter hqlFilter = new HqlFilter();
        if (!StringUtils.isBlank(keywords)) {
            hqlFilter.addFilter("moduleName", keywords, ColumnType.String, SqlOperator.like);
        }
        List<Modules> list = service.findByFilter(hqlFilter, pageNum, 2);
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
        return "show_add";
    }

    public String show_update(){
        HqlFilter hqlFilter = new HqlFilter();
        if (!id.equals(null)) {
            hqlFilter.addFilter("moduleId", id.toString() ,ColumnType.Integer, SqlOperator.like);
        }
        List<Modules> list = service.findByFilter(hqlFilter);
        Modules modules = list.get(0);

        request = ServletActionContext.getRequest();
        request.setAttribute("list", modules);
        return "show_update";
    }

    public void add(){
        int total = service.count().intValue();  //暂定moduleid，sort是自动增加一的
        service.save(new Modules(total+1,name,remark,total,Integer.valueOf(status)));
        OperResult result = new OperResult();
        result.setStatusCode(200);
        result.setMessage(LangUtil.get("add_success"));
        result.setNavTabId("modulelist");
        result.setRel("");
        result.setCallbackType("closeCurrent");
        result.setForwardUrl("cozzia/jsp/index/index.jsp#modulelist");
        result.setConfirmMsg("");
        super.writeJson(result);
    }
    public void update(){

        HqlFilter hqlFilter = new HqlFilter();
        if (!sort.equals(null)) {
            hqlFilter.addFilter("orders", sort.toString() ,ColumnType.Integer, SqlOperator.like);
        }
        List<Modules> list = service.findByFilter(hqlFilter);
        Modules modules = list.get(0);

        modules.setOrders(sort);
        modules.setStatus(Integer.valueOf(status));
        if (!StringUtils.isBlank(name)) {
            modules.setModuleName(name);
        }

        if (!StringUtils.isBlank(remark)){
            modules.setRemark(remark);
        }
        service.update(modules);
        OperResult result = new OperResult();
        result.setStatusCode(200);
        result.setMessage(LangUtil.get("update_success"));
        result.setNavTabId("modulelist");
        result.setRel("");
        result.setCallbackType("closeCurrent");
        result.setForwardUrl("cozzia/jsp/index/index.jsp#modulelist");
        result.setConfirmMsg("");
        super.writeJson(result);

    }
    public void delete(){
        HqlFilter hqlFilter = new HqlFilter();
        if (!id.equals(null)) {
            hqlFilter.addFilter("moduleId", id.toString() ,ColumnType.Integer, SqlOperator.like);
        }
        List<Modules> list = service.findByFilter(hqlFilter);
        Modules modules = list.get(0);
        service.delete(modules);

        OperResult result = new OperResult();
        result.setStatusCode(200);
        result.setMessage(LangUtil.get("delete_success"));
        result.setNavTabId("modulelist");
        result.setRel("");
        result.setCallbackType("");
        result.setForwardUrl("cozzia/jsp/index/index.jsp#modulelist");
        result.setConfirmMsg("");
        super.writeJson(result);
    }

    public  List<Modules> getList(){
        return  service.find();
    }
}
