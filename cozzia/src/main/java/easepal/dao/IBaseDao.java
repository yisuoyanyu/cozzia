package easepal.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

public interface IBaseDao<T> {

	public Serializable save(T o);

	public void delete(T o);

	public void update(T o);

	public void saveOrUpdate(T o);

	public T get(Class<T> c, Serializable id);

	public T get(String hql);

	public T get(String hql, Map<String, Object> params);

	public List<T> find(String hql);

	public List<T> find(String hql, Map<String, Object> params);

	public List<T> find(String hql, int page, int rows);

	public List<T> find(String hql, Map<String, Object> params, int page, int rows);

	public Long count(String hql);

	public Long count(String hql, Map<String, Object> params);

    /**
     *  执行一条HQL语句
     * @param hql HQL语句
     * @return 响应结果数目
     */
    public int executeHql(String hql);

    /**
     * 执行一条HQL语句
     * @param hql HQL语句
     * @param params 参数
     * @return 响应结果数目
     */
    public int executeHql(String hql, Map<String, Object> params);


    /**
     * 通过主键获得对象
     *
     * @param c  类名.class
     * @param id  主键
     * @return 对象
     */
    public T getById(Class<T> c, Serializable id);

    /**
     * 通过HQL语句获取一个对象
     * @param hql HQL语句
     * @return 对象
     */
    public T getByHql(String hql);

    /**
     * 通过HQL语句获取一个对象
     * @param hql HQL语句
     * @param params 参数
     * @return 对象
     */
    public T getByHql(String hql, Map<String, Object> params);

    /**
     * 新添加分页方法
     * @param hql
     * @param offset
     * @param length
     * @return
     */
    public List<T> queryForPage(final String hql,final int offset,final int length);





}
