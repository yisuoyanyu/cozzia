package easepal.action.api;

import easepal.action.BaseAction;
import org.apache.log4j.Logger;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;

import java.lang.annotation.Documented;

/**
 * @author: 郭清泉
 * @date: 2015/3/28
 * @version: v1.0.
 * @description:
 */

@ParentPackage("basePackage")
@Namespace("")
public class BaseApiAction<T> extends BaseAction<T>  {

    private static final Logger logger = Logger.getLogger(BaseApiAction.class);

    private String signature;
    private Integer timestamp;
    private String token;

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public Integer getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Integer timestamp) {
        this.timestamp = timestamp;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }




}
