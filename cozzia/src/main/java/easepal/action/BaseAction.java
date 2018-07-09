package easepal.action;

import java.io.IOException;
import java.util.Arrays;

import com.alibaba.fastjson.serializer.SerializerFeature;
import com.opensymphony.xwork2.ActionSupport;
import easepal.model.ui.Grid;
import easepal.service.IBaseService;
import easepal.util.FastJsonFilter;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;

import com.alibaba.fastjson.JSON;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@ParentPackage("basePackage")
@Namespace("/")
public class BaseAction<T> extends ActionSupport {

    private static final Logger logger = Logger.getLogger(BaseAction.class);



    protected Grid grid ;
    protected int numPerPage = 10;
    protected int pageNum = 1;
    protected String keywords;

    public Grid getGrid() {
        return grid;
    }

    public void setGrid(Grid grid) {
        this.grid = grid;
    }

    public int getNumPerPage() {
        return numPerPage;
    }

    public void setNumPerPage(int numPerPage) {
        this.numPerPage = numPerPage;
    }

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }





    protected IBaseService<T> service;// 业务逻辑

    public void setService(IBaseService<T> service) {
        this.service = service;
    }

    /**
     * 将对象转换成JSON字符串，并响应回前台
     *
     * @param object
     * @throws IOException
     */
    public void writeJson(Object object) {
        writeJsonByFilter(object, null, null);
    }


    /**
     * 将对象转换成JSON字符串，并响应回前台
     *
     * @param object
     * @param includesProperties  需要转换的属性
     * @param excludesProperties  不需要转换的属性
     */
    public void writeJsonByFilter(Object object, String[] includesProperties, String[] excludesProperties) {
        try {
            FastJsonFilter filter = new FastJsonFilter();// excludes优先于includes
            if (excludesProperties != null && excludesProperties.length > 0) {
                filter.getExcludes().addAll(Arrays.<String> asList(excludesProperties));
            }
            if (includesProperties != null && includesProperties.length > 0) {
                filter.getIncludes().addAll(Arrays.<String> asList(includesProperties));
            }
            logger.info("对象转JSON：要排除的属性[" + excludesProperties + "]要包含的属性[" + includesProperties + "]");
            String json;
            String User_Agent = getRequest().getHeader("User-Agent");
            if (StringUtils.indexOfIgnoreCase(User_Agent, "MSIE 6") > -1) {
                // 使用SerializerFeature.BrowserCompatible特性会把所有的中文都会序列化为\\uXXXX这种格式，字节数会多一些，但是能兼容IE6
                json = JSON.toJSONString(object, filter, SerializerFeature.WriteDateUseDateFormat, SerializerFeature.DisableCircularReferenceDetect, SerializerFeature.BrowserCompatible);
            } else {
                // 使用SerializerFeature.WriteDateUseDateFormat特性来序列化日期格式的类型为yyyy-MM-dd hh24:mi:ss
                // 使用SerializerFeature.DisableCircularReferenceDetect特性关闭引用检测和生成
                json = JSON.toJSONString(object, filter, SerializerFeature.WriteDateUseDateFormat, SerializerFeature.DisableCircularReferenceDetect);
            }
            logger.info("转换后的JSON字符串：" + json);
            getResponse().setContentType("text/html;charset=utf-8");
            getResponse().getWriter().write(json);
            getResponse().getWriter().flush();
            getResponse().getWriter().close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    /**
     * 获得request
     *
     * @return
     */
    public HttpServletRequest getRequest() {
        return ServletActionContext.getRequest();
    }

    /**
     * 获得response
     *
     * @return
     */
    public HttpServletResponse getResponse() {
        return ServletActionContext.getResponse();
    }
    /**
     * 获得session
     *
     * @return
     */
    public HttpSession getSession() {
        return ServletActionContext.getRequest().getSession();
    }

}
