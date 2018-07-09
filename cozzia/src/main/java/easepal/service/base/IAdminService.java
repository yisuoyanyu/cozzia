package easepal.service.base;

import easepal.model.base.AdminInfo;
import easepal.service.IBaseService;

/**
 * @author: 郭清泉
 * @date: 2015/3/26
 * @version: v1.0.
 * @description:
 */
public interface IAdminService extends IBaseService<AdminInfo> {


    AdminInfo login(String loginName, String password);


}
