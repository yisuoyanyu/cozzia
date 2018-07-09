package easepal.action.api;

import com.opensymphony.xwork2.ModelDriven;
import easepal.model.business.Users;
import easepal.model.ui.Json;
import easepal.service.business.IUserService;
import easepal.util.*;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;

/**
 * @author: 郭清泉
 * @date: 2015/3/28
 * @version: v1.0.
 * @description:
 */
@Namespace("/api/user")
@Action
public class UserAction extends BaseApiAction<Users> implements ModelDriven<Users> {

    private static final Logger logger = Logger.getLogger(UserAction.class);

    private Users user = new Users();

    @Autowired
    public void setService(IUserService service) {
        this.service = service;
    }

    /**
     * 用户登录
     */
    @Action(value = "login")
    public void login() {
        Json j = new Json();
        if (StringUtils.isBlank(user.getEmail()) || StringUtils.isBlank(user.getPassword())) {
            j.setMsg(LangUtil.get("empty_username_password"));
        } else {
            HqlFilter hqlFilter = new HqlFilter();
            hqlFilter.addFilter("email", user.getEmail());
            hqlFilter.addFilter("password", user.getPassword());
            Users user = service.getByFilter(hqlFilter);
            if (user != null) {
                j.setSuccess(true);
                j.setData(user);
                j.setMsgLang("login_success");
            } else {
                j.setMsgLang("err_username_password");
            }
        }
        super.writeJson(j);
    }


    /**
     * 用户注册
     */
    @Action("reg")
    public void reg() {
        Json json = new Json();
        String msg = checkInput();
        if (!msg.equals("ok")) {
            json.setMsg(msg);
        } else {
            HqlFilter hqlFilter = new HqlFilter();
            hqlFilter.addFilter("email", user.getEmail());
            Users checkUser = service.getByFilter(hqlFilter);
            if (checkUser != null) {
                json.setMsgLang("email_is_exist");
            } else {
                Serializable id = service.save(user);
                logger.info(id);
                json.setSuccess(true);
            }
        }
        super.writeJson(json);
    }


    /**
     * 更新
     */
    @Action("update")
    public void update(){
        Json json = new Json();
        json.setMsgLang("update_fail");
        if (user != null && !StringUtils.isBlank(user.getUserId())) {
            Users t = service.getById(user.getUserId());
            if(t==null) {
                json.setMsgLang("user_not_exist");
            }else{
                BeanUtils.copyNotNullProperties(user, t, new String[]{"createTime","email"});
                service.update(t);
                json.setSuccess(true);
                json.setMsgLang("update_success");
            }
        }
        writeJson(json);
    }




    private String checkInput() {
        if (StringUtils.isBlank(user.getFirstName())) {
            return LangUtil.get("first_name_is_required");
        }
        if (StringUtils.isBlank(user.getLastName())) {
            return LangUtil.get("last_name_is_required");
        }
        if (StringUtils.isBlank(user.getEmail())) {
            return LangUtil.get("email_is_required");
        }
        if (StringUtils.isBlank(user.getPassword())) {
            return LangUtil.get("password_is_required");
        }
        if (StringUtils.isBlank(user.getPhone())) {
            return LangUtil.get("phone_is_required");
        }
        if (StringUtils.isBlank(user.getPhone())) {
            return LangUtil.get("address_is_required");
        }
        return "ok";
    }


    @Override
    public Users getModel() {
        return user;
    }
}
