package easepal.util;

import java.lang.management.OperatingSystemMXBean;
import java.math.BigDecimal;
import java.text.ParseException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateUtils;

/**
 * HQL过滤器，
 * @author: 郭清泉
 * @date: 2015/3/26
 * @version: v1.0.
 * @description:  用于添加where条件和排序，过滤结果集， 添加规则使用addFilter方法
 *
 */
public class HqlFilter {

    private HttpServletRequest request;// 为了获取request里面传过来的动态参数
    private Map<String, Object> params = new HashMap<String, Object>();// 条件参数
    private StringBuffer hql = new StringBuffer();
    private String sort;// 排序字段
    private String order = "asc";// asc/desc

    /**
     * 默认构造
     */
    public HqlFilter() {

    }

    /**
     * 带参构造
     *
     * @param request
     */
    public HqlFilter(HttpServletRequest request) {
        this.request = request;
        addFilter(request);
    }

    /**
     * 添加排序字段
     *
     * @param sort
     */
    public void addSort(String sort) {
        this.sort = sort;
    }

    /**
     * 添加排序方法，默认asc升序
     *
     * @param order
     */
    public void addOrder(String order) {
        this.order = order;
    }

    /**
     * 转换SQL操作符
     *
     * @param operator
     * @return
     */
    private String getSqlOperator(SqlOperator operator) {

        switch (operator){
            case equal:
                return " = ";
            case notEqual:
                return " != ";
            case greaterThen:
                return " > ";
            case greaterEqual:
                return " >= ";
            case lessThen:
                return " < ";
            case lessEqual:
                return " <= ";
            case like:
                return " like ";
        }
        return " = ";
    }

    /**
     * 获得添加过滤字段后的HQL
     *
     * @return
     */
    public String getWhereHql() {
        return hql.toString();
    }

    /**
     * 获得添加过滤字段后加上排序字段的HQL
     *
     * @return
     */
    public String getWhereAndOrderHql() {
        if (!StringUtils.isBlank(sort) && !StringUtils.isBlank(order)) {
            if (sort.indexOf(".") < 1) {
                sort = "t." + sort;
            }
            hql.append(" order by " + sort + " " + order + " ");// 添加排序信息
        } else {
            if (request != null) {
                String s = request.getParameter("sort");
                String o = request.getParameter("order");
                if (!StringUtils.isBlank(s)) {
                    sort = s;
                }
                if (!StringUtils.isBlank(o)) {
                    order = o;
                }
                if (!StringUtils.isBlank(sort) && !StringUtils.isBlank(order)) {
                    if (sort.indexOf(".") < 1) {
                        sort = "t." + sort;
                    }
                    hql.append(" order by " + sort + " " + order + " ");// 添加排序信息
                }
            }
        }
        return hql.toString();
    }

    /**
     * 获得过滤字段参数和值
     *
     * @return
     */
    public Map<String, Object> getParams() {
        return params;
    }

    /**
     * 添加过滤
     *
     * @param request
     */
    public void addFilter(HttpServletRequest request) {
        Enumeration<String> names = request.getParameterNames();
        while (names.hasMoreElements()) {
            String name = names.nextElement();
            String value = request.getParameter(name);
            addFilter(name, value,ColumnType.String,SqlOperator.equal);
        }
    }


    /**
     * 添加字符串相等的过滤
     * @param columnName
     * @param value
     */
    public void addFilter(String columnName, String value) {
           addFilter(columnName,value,ColumnType.String,SqlOperator.equal);
    }

    /**
     * 添加过滤
     *
     * @param columnName
     * @param value
     * @param columnType
     * @param operator
     */
    public void addFilter(String columnName, String value,ColumnType columnType, SqlOperator operator) {
        String placeholder = UUID.randomUUID().toString().replace("-", "");// 生成一个随机的参数名称
        if (hql.toString().indexOf(" where 1=1") < 0) {
            hql.append("  where 1=1 ");
        }

        hql.append(" and " + columnName + " " + getSqlOperator(operator) + " :param" + placeholder + " ");// 拼HQL
        params.put("param" + placeholder, getObjValue(columnType, operator, value));// 添加参数
    }




    /**
     * 将String值转换成Object，用于拼写HQL，替换操作符和值
     * <p/>
     * S:String L:Long I:Integer D:Date ST:Short BD:BigDecimal FT:Float
     *
     * @param columnType
     * @param operator
     * @param value
     * @return
     */
    private Object getObjValue(ColumnType columnType, SqlOperator operator, String value) {
        if(columnType.equals(ColumnType.String)){
            if(operator.equals(SqlOperator.like)){
                value = "%%" + value + "%%";
            }else if(operator.equals(SqlOperator.rightLike)){
                value = value + "%%";
            }else if(operator.equals(SqlOperator.leftLike)){
                value = "%%" + value;
            }
            return value;
        }

        if (columnType.equals(ColumnType.Long)) {
            return Long.parseLong(value);
        }
        if (columnType.equals(ColumnType.Integer)) {
            return Integer.parseInt(value);
        }
        if (columnType.equals(ColumnType.Date)) {
            try {
                return DateUtils.parseDate(value, new String[]{"yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd HH:mm", "yyyy-MM-dd", "yyyy/MM/dd"});
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        if (columnType.equals(ColumnType.Short)) {
            return Short.parseShort(value);
        }
        if (columnType.equals(ColumnType.BigDecimal)) {
            return BigDecimal.valueOf(Long.parseLong(value));
        }
        if (columnType.equals(ColumnType.Float)) {
            return Float.parseFloat(value);
        }
        return null;
    }


}

