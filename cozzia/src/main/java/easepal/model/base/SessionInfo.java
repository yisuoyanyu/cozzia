package easepal.model.base;

import java.io.Serializable;

/**
 * session模型，
 *
 * @author: 郭清泉
 * @date: 2015/3/24
 * @version: v1.0.
 * @description:  登录成功后设置到session里面，便于系统使用
 */
public class SessionInfo implements Serializable {
    private AdminInfo admin;


    public AdminInfo getAdmin() {
        return admin;
    }

    public void setAdmin(AdminInfo admin) {
        this.admin = admin;
    }

    @Override
    public String toString() {
        return admin.getLoginName();
    }
}
