package easepal.service;

import easepal.util.HqlFilter;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * @author: 郭清泉
 * @date: 2015/3/26
 * @version: v1.0.
 * @description:
 */
public interface IBaseService<T> {

    /**
     * 保存一个对象
     *
     * @param o
     *            对象
     * @return 对象的ID
     */
    public Serializable save(T o);

    /**
     * 删除一个对象
     *
     * @param o
     *            对象
     */
    public void delete(T o);

    /**
     * 更新一个对象
     *
     * @param o
     *            对象
     */
    public void update(T o);

    /**
     * 保存或更新一个对象
     *
     * @param o
     *            对象
     */
    public void saveOrUpdate(T o);

    /**
     * 通过主键获得对象
     *
     * @param id  主键
     * @return 对象
     */
    public T getById(Serializable id);

    /**
     * 通过HQL语句获取一个对象
     *
     * @param hql
     *            HQL语句
     * @return 对象
     */
    public T getByHql(String hql);

    /**
     * 通过HQL语句获取一个对象
     *
     * @param hql
     *            HQL语句
     * @param params
     *            参数
     * @return 对象
     */
    public T getByHql(String hql, Map<String, Object> params);

    /**
     * 通过HqlFilter获取一个对象
     *
     * @param hqlFilter
     * @return
     */
    public T getByFilter(HqlFilter hqlFilter);

    /**
     * 获得对象列表
     *
     * @return
     */
    public List<T> find();

    /**
     * 获得对象列表
     *
     * @param hql
     *            HQL语句
     * @return List
     */
    public List<T> find(String hql);

    /**
     * 获得对象列表
     *
     * @param hql
     *            HQL语句
     * @param params
     *            参数
     * @return List
     */
    public List<T> find(String hql, Map<String, Object> params);

    /**
     * 获得对象列表
     *
     * @param hqlFilter
     * @return
     */
    public List<T> findByFilter(HqlFilter hqlFilter);

    /**
     * 获得分页后的对象列表
     *
     * @param hql
     *            HQL语句
     * @param page
     *            要显示第几页
     * @param rows
     *            每页显示多少条
     * @return List
     */
    public List<T> find(String hql, int page, int rows);

    /**
     * 获得分页后的对象列表
     *
     * @param hql
     *            HQL语句
     * @param params
     *            参数
     * @param page
     *            要显示第几页
     * @param rows
     *            每页显示多少条
     * @return List
     */
    public List<T> find(String hql, Map<String, Object> params, int page, int rows);

    /**
     * 获得分页后的对象列表
     *
     * @param page
     * @param rows
     * @return
     */
    public List<T> find(int page, int rows);

    /**
     * 获得分页后的对象列表
     *
     * @param hqlFilter
     * @param page
     * @param rows
     * @return
     */
    public List<T> findByFilter(HqlFilter hqlFilter, int page, int rows);

    /**
     * 统计数目
     *
     * @param hql
     *            HQL语句(select count(*) from T)
     * @return long
     */
    public Long count(String hql);

    /**
     * 统计数目
     *
     * @param hql
     *            HQL语句(select count(*) from T where xx = :xx)
     * @param params
     *            参数
     * @return long
     */
    public Long count(String hql, Map<String, Object> params);

    /**
     * 统计数目
     *
     * @param hqlFilter
     * @return
     */
    public Long countByFilter(HqlFilter hqlFilter);

    /**
     * 统计数目
     *
     * @return long
     */
    public Long count();

    /**
     * 执行一条HQL语句
     *
     * @param hql  HQL语句
     * @return 响应结果数目
     */
    public int executeHql(String hql);

    /**
     * 执行一条HQL语句
     *
     * @param hql
     *            HQL语句
     * @param params
     *            参数
     * @return 响应结果数目
     */
    public int executeHql(String hql, Map<String, Object> params);
}
