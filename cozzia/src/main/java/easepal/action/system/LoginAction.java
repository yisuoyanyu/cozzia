package easepal.action.system;

import easepal.action.BaseAction;
import easepal.model.base.AdminInfo;
import easepal.model.base.SessionInfo;
import easepal.model.ui.Json;
import easepal.service.IBaseService;
import easepal.service.base.IAdminService;
import easepal.util.ConfigUtil;
import easepal.util.HqlFilter;
import easepal.util.Md5Util;
import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import java.util.List;

/**
 * 登录，退出登录
 * @author: 郭清泉
 * @date: 2015/3/26
 * @version: v1.0.
 * @description: 登录，退出登录
 */

@Namespace("/")
@Action(value = "login")
public class LoginAction extends BaseAction<AdminInfo> {


    private static final Logger logger = Logger.getLogger(LoginAction.class);

    private String loginName;
    private String password;

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


  //  private IAdminService adminService;

  //  public IAdminService getAdminService() {
   //     return adminService;
  //  }
    //  @Autowired
  /*  public void setAdminService(IAdminService adminService) {
        this.adminService = adminService;
    }*/

    @Autowired
    public void setService(IAdminService service) {
       this.service = service;
    }


    /**
     * 注销系统
     */
    public void logout() {
        if (getSession() != null) {
            getSession().invalidate();
        }
        Json j = new Json();
        j.setSuccess(true);
        writeJson(j);
    }

    public void list(){
        List<AdminInfo> list = service.find();
        super.writeJson(list);
    }

    public void login() {
        HqlFilter hqlFilter = new HqlFilter();
        hqlFilter.addFilter("loginName",loginName);
        hqlFilter.addFilter("password",Md5Util.md5(password));
        AdminInfo admin  = service.getByFilter(hqlFilter);


      //  AdminInfo admin = adminService.login(loginName, Md5Util.md5(password));
        Json j = new Json();
        if (admin != null) {
            j.setSuccess(true);
            SessionInfo sessionInfo = new SessionInfo();
            sessionInfo.setAdmin(admin);
            getSession().setAttribute(ConfigUtil.getSessionInfoName(), sessionInfo);
            j.setMsgLang("login_success");
        } else {
            j.setMsg("ERROR");
        }
        super.writeJson(j);
    }
}
