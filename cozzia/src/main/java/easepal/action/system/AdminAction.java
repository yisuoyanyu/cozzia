package easepal.action.system;

import easepal.action.BaseAction;
import easepal.model.base.AdminInfo;
import easepal.model.base.Modules;
import easepal.model.ui.Grid;
import easepal.model.ui.OperResult;
import easepal.service.base.IAdminService;
import easepal.service.base.impl.AdminServiceImpl;
import easepal.util.ColumnType;
import easepal.util.HqlFilter;
import easepal.util.LangUtil;
import easepal.util.SqlOperator;
import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.convention.annotation.*;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

/**
 * @author: 丁志奇
 * @date: 2015/3/26
 * @version: v1.0.
 * @description:
 */
@Namespace("/")
@ParentPackage(value = "basePackage")
@Results({
        @Result(name = "list", location = "manager/list.jsp"),
        @Result(name = "show_add", location = "manager/add.jsp"),
        @Result(name = "show_update", location = "manager/update.jsp"),
})
@Action("admin")
public class AdminAction extends BaseAction<AdminInfo> {

    private HttpServletRequest request;
    private AdminServiceImpl adminService;

    private String sn;
    private String passone;
    private String name;
    private String email;
    private String realname;
    private Date date;
    private java.sql.Date d1;

    public String getSn() {
        return sn;
    }

    public void setSn(String sn) {
        this.sn = sn;
    }

    public String getPassone() {
        return passone;
    }

    public void setPassone(String passone) {
        this.passone = passone;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    @Autowired
    public void setService(IAdminService service) {
        this.service = service;
    }

    public String list() {
        HqlFilter hqlFilter = new HqlFilter();
        if (!StringUtils.isBlank(keywords)) {
            hqlFilter.addFilter("email", keywords, ColumnType.String, SqlOperator.like);
        }
        List<AdminInfo> list = service.findByFilter(hqlFilter, pageNum, 2);
        grid = new Grid();
        grid.setTotal(service.count());
        grid.setRows(list);
        grid.setNumPerPage(2);
        grid.setPageNum(pageNum);
        request = ServletActionContext.getRequest();
        request.setAttribute("list", grid);
        return "list";
    }

    public String show_add() {
        return "show_add";
    }

    public void add() {
        date = new Date();
        d1 = new java.sql.Date(date.getTime());
        service.save(new AdminInfo(UUID.randomUUID().toString(), name, passone, realname, email, d1));
        OperResult result = new OperResult();
        result.setStatusCode(200);
        result.setMessage(LangUtil.get("add_success"));
        result.setNavTabId("managerlist");
        result.setRel("");
        result.setCallbackType("closeCurrent");
        result.setForwardUrl("cozzia/jsp/index/index.jsp#managerlist");
        result.setConfirmMsg("");
        super.writeJson(result);
    }

    public void delete() {
        HqlFilter hqlFilter = new HqlFilter();
        if (!StringUtils.isBlank(sn)) {
            hqlFilter.addFilter("id", sn, ColumnType.String, SqlOperator.like);
        }
        List<AdminInfo> list = service.findByFilter(hqlFilter);
        AdminInfo adminInfo = list.get(0);
        service.delete(adminInfo);

        OperResult result = new OperResult();
        result.setStatusCode(200);
        result.setMessage(LangUtil.get("delete_success"));
        result.setNavTabId("managerlist");
        result.setRel("");
        result.setCallbackType("");
        result.setForwardUrl("cozzia/jsp/index/index.jsp#managerlist");
        result.setConfirmMsg("");
        super.writeJson(result);
    }

    public String show_update() {
        HqlFilter hqlFilter = new HqlFilter();
        if (!StringUtils.isBlank(sn)) {
            hqlFilter.addFilter("id", sn, ColumnType.String, SqlOperator.like);
        }
        List<AdminInfo> list = service.findByFilter(hqlFilter);
        AdminInfo adminInfo = list.get(0);

        request = ServletActionContext.getRequest();
        request.setAttribute("list", adminInfo);

        return "show_update";
    }

    public void update() {
        HqlFilter hqlFilter = new HqlFilter();
        if (!StringUtils.isBlank(sn)) {
            hqlFilter.addFilter("id", sn, ColumnType.String, SqlOperator.like);
        }
        List<AdminInfo> list = service.findByFilter(hqlFilter);
        AdminInfo adminInfo = list.get(0);

        if (!StringUtils.isBlank(passone)) {
            adminInfo.setPassword(passone);
        }
        if (!StringUtils.isBlank(name)) {
            adminInfo.setLoginName(name);
        }
        if (!StringUtils.isBlank(realname)) {
            adminInfo.setFullName(realname);
        }
        service.update(adminInfo);
        OperResult result = new OperResult();
        result.setStatusCode(200);
        result.setMessage(LangUtil.get("update_success"));
        result.setNavTabId("managerlist");
        result.setRel("");
        result.setCallbackType("closeCurrent");
        result.setForwardUrl("cozzia/jsp/index/index.jsp#managerlist");
        result.setConfirmMsg("");
        super.writeJson(result);
    }

}
