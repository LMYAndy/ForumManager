package cn.ce.framework.support;

import java.lang.reflect.Field;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.hibernate.type.CustomType;
import org.hibernate.type.Type;
import org.springframework.util.Assert;

import cn.ce.framework.exception.api.SysException;
import cn.ce.framework.utils.ClassUtility;
import cn.ce.framework.utils.Page;
import cn.ce.framework.utils.StringUtility;

@SuppressWarnings("unchecked")
public class CommonsBaseDAO {
	
	private static final Pattern PATTERN_DISTINCT = Pattern.compile("[\\s]+[(]?[\\s]*DISTINCT[\\s]+", Pattern.CASE_INSENSITIVE);
    private static final Pattern PATTERN_COUNT    = Pattern.compile("[\\s]+COUNT[\\s]*[(]+", Pattern.CASE_INSENSITIVE);
    private static final Pattern PATTERN_ORDER    = Pattern.compile("ORDER\\s+BY[\\s|\\S\\w|\\W]*", 2);

    /**
     * 日志对象.
     * 
     * 在子类中不必单独定义日志对象，直接使用这里生成的即可 如:logger.info("**********");
     */
    protected final Log          logger           = LogFactory.getLog(getClass());

    /**
     * 分页查询时，是否进行总数查询的 “标识”（当totalSql的值为NOT_QUERY_TOTAL时，不进行总数查询，其余情况要查询总数）
     */
    public static final String   NOT_QUERY_TOTAL  = "NOT_QUERY_TOTAL";

    @Resource(name = "commonSessionFactory")
    protected SessionFactory     sessionFactory   = null;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    protected Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    /** *************************************************************************************************** */
    /** *********************************** 公共方法区 begin *********************************************** */
    /** *************************************************************************************************** */

    /**
     * 保存
     */
    @SuppressWarnings("unchecked")
    public <T extends BaseEntity> T genericSave(T hbm) {
        Object o = getSession().save(hbm);
        getSession().flush();
        return (T) findObjectById(o.toString(), hbm.getClass());
    }

    @SuppressWarnings("unchecked")
    public <T extends BaseEntity> void genericSave(List<T> hbms) {
        for (T t : hbms) {
            genericSave(t);
        }
    }

    /**
     * 更新
     * 
     * @param hbm
     */
    public <T extends BaseEntity> void genericUpdate(T hbm) {
        getSession().update(hbm);
        getSession().flush();
    }

    /**
     * 删除
     * 
     * @param hbm
     */
    public <T extends BaseEntity> void genericDelete(T hbm) {
        getSession().delete(hbm);
        getSession().flush();
    }

    /**
     * 根据id删除
     * 
     * @param <T>
     * @param id
     * @param mappingType
     * @return
     */
    @SuppressWarnings("unchecked")
    public <T extends BaseEntity> T genericDelete(String id, Class<T> mappingType) {
        T entity = (T) getSession().get(mappingType, id);
        genericDelete(entity);
        return entity;
    }

    /**
     * 根据hql更新
     * 
     * @param hql
     * @param objects
     */
    public int genericUpdateByHQL(String hql, Object... objects) {
        Query query = getSession().createQuery(hql);
        if (objects != null && objects.length > 0) {
            for (int i = 0; i < objects.length; i++) {
                query.setParameter(i, objects[i]);
            }
        }
        int t = query.executeUpdate();
        getSession().flush();
        getSession().clear();
        return t;
    }

    /**
     * 根据sql更新
     * 
     * @param hql
     * @param objects
     */
    public int genericUpdateBySQL(String sql, Object... objects) {
        SQLQuery query = getSession().createSQLQuery(sql);
        if (objects != null && objects.length > 0) {
            for (int i = 0; i < objects.length; i++) {
                query.setParameter(i, objects[i]);
            }
        }
        int t = query.executeUpdate();
        getSession().flush();
        getSession().clear();
        return t;
    }

    /**
     * 根据id、实体类型 查询 实体对象
     * 
     * @param <T>
     * @param id
     * @param mappingType
     *            实体类型
     * @return
     */
    @SuppressWarnings("unchecked")
    public <T extends BaseEntity> T findObjectById(String id, Class<T> mappingType) {
        return (T) getSession().get(mappingType, id);
    }

    /**
     * 查询全部
     * 
     * @param <T>
     * @param mappingType
     * @return
     */
    @SuppressWarnings("unchecked")
    public <T extends BaseEntity> List<T> findList(Class<T> mappingType) {
        return (List<T>) getSession().createCriteria(mappingType).list();
    }

    /**
     * HQL查询
     * 
     * @param hql
     * @param agrs
     *            查询条件
     * @return
     */
    public List<?> findListByHQL(String hql, Object[] agrs) {
        return findListByHQL(hql, agrs, -1, -1);
    }

    /**
     * HQL查询
     * 
     * @param hql
     * @param agrs
     *            查询条件
     * @return
     */
    public List<?> findListByHQL(String hql, Map<String, Object> agrs) {
        return findListByHQL(hql, agrs, -1, -1);
    }

    protected List<?> findListByHQL(String hql, Object[] agrs, int start, int size) {
        Query query = this.getSession().createQuery(hql);
        query = setQueryParameter(query, agrs);
        if (size != -1) {
            query.setFirstResult(start);
            query.setMaxResults(size);
        }
        return query.list();
    }

    private List<?> findListByHQL(String hql, Map<String, Object> agrs, int start, int size) {
        Query query = getSession().createQuery(hql);
        query = setQueryParameter(query, agrs);
        if (size != -1) {
            query.setFirstResult(start);
            query.setMaxResults(size);
        }
        return query.list();
    }

    /**
     * sql查询 （返回 映射实体类型的 List）
     * 
     * @param <T>
     * @param sql
     * @param mappingType
     *            映射实体类型
     * @param agrs
     *            查询条件
     * @return
     */
    public <T> List<T> findListBySQL(String sql, Class<T> mappingType, Map<String, Object> agrs) {
        return findListBySQL(sql, mappingType, agrs, -1, -1);
    }

    /**
     * sql查询 （返回 映射实体类型的 List）
     * 
     * @param <T>
     * @param sql
     * @param mappingType
     *            映射实体类型
     * @param agrs
     *            查询条件
     * @return
     */
    public <T> List<T> findListBySQL(String sql, Class<T> mappingType, Object[] agrs) {
        return findListBySQL(sql, mappingType, agrs, -1, -1);
    }

    /**
     * sql查询 （映射实体类型）
     * 
     * @param <T>
     * @param sql
     * @param mappingType
     *            映射实体类型
     * @return
     */
    public <T> List<T> findListBySQL(String sql, Class<T> mappingType) {
        return findListBySQL(sql, mappingType, new Object[] {}, -1, -1);
    }

    /**
     * sql查询
     * 
     * @param sql
     * @param types
     *            （map<参数名、参数类型 >）
     * @param agrs
     *            查询条件
     * @return
     */
    public List<Map<String, ?>> findListBySQL(String sql, Map<String, Class<?>> types, Object[] agrs) {
        return findListBySQL(sql, types, agrs, -1, -1);
    }

    /**
     * sql查询 （映射以map提供）
     * 
     * @param sql
     * @param types
     *            （map<字段名、字段类型 >）
     * @param agrs
     *            查询条件
     * @return
     */
    public List<Map<String, ?>> findListBySQL(String sql, Map<String, Class<?>> types, Map<String, Object> agrs) {
        return findListBySQL(sql, types, agrs, -1, -1);
    }

    protected List<Map<String, ?>> findListBySQL(String sql, Map<String, Class<?>> types, Object[] agrs, int start, int size) {
        SQLQuery query = this.getSession().createSQLQuery(sql);
        query = setSQLQueryParameter(query, agrs);
        List<String> sqlParameters = parseParameterFromSQL(sql);
        query = setSQLQueryScalars(query, sqlParameters, types);
        if (size != -1) {
            query.setFirstResult(start);
            query.setMaxResults(size);
        }
        query.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP);
        return query.list();
    }

    protected List<Map<String, ?>> findListBySQL(String sql, Map<String, Class<?>> types, Map<String, Object> agrs, int start, int size) {
        SQLQuery query = this.getSession().createSQLQuery(sql);
        query = setSQLQueryParameter(query, agrs);
        List<String> fieldNames = parseParameterFromSQL(sql);
        query = setSQLQueryScalars(query, fieldNames, types);
        if (size != -1) {
            query.setFirstResult(start);
            query.setMaxResults(size);
        }
        query.setResultTransformer(Transformers.ALIAS_TO_ENTITY_MAP);
        return query.list();
    }

    @SuppressWarnings("unchecked")
    protected <T> List<T> findListBySQL(String sql, Class<T> mappingType, Object[] agrs, int start, int size) {
        SQLQuery query = this.getSession().createSQLQuery(sql);
        query = setSQLQueryParameter(query, agrs);
        if (size != -1) {
            query.setFirstResult(start);
            query.setMaxResults(size);
        }
        List<String> sqlParameters = parseParameterFromSQL(sql);
        query = setSQLQueryScalars(query, sqlParameters, mappingType);
        return query.list();
    }

    @SuppressWarnings("unchecked")
    protected <T> List<T> findListBySQL(String sql, Class<T> mappingType, Map<String, Object> agrs, int start, int size) {
        SQLQuery query = this.getSession().createSQLQuery(sql);
        query = setSQLQueryParameter(query, agrs);
        if (size != -1) {
            query.setFirstResult(start);
            query.setMaxResults(size);
        }
        List<String> sqlParameters = parseParameterFromSQL(sql);
        query = setSQLQueryScalars(query, sqlParameters, mappingType);
        return query.list();
    }

    /**
     * 分页查询
     * 
     * @param hql
     * @param agrs
     *            参数（Object[]形式）
     * @param page
     * @return
     */
    public Page findPageByHQL(String hql, Object[] agrs, Page page) {
        return findPageByHQL(hql, null, agrs, page);
    }

    /**
     * 分页查询
     * 
     * @param hql
     * @param agrs
     *            参数（map形式）
     * @param page
     * @return
     */
    public Page findPageByHQL(String hql, Map<String, Object> agrs, Page page) {
        return findPageByHQL(hql, null, agrs, page);
    }

    /**
     * hql分页查询
     * 
     * @param hql
     *            查询记录的hql
     * @param totalHql
     *            查询总数的hql（当totalHql的值为NOT_QUERY_TOTAL时，不进行总数查询，其余情况都要查询总数）
     * @param agrs
     *            查询hql 对应的参数
     * @param page
     *            page
     * @return page
     */
    public Page findPageByHQL(String hql, String totalHql, Map<String, Object> agrs, Page page) {
        if (page == null) {
            page = new Page();
        }
        if (!NOT_QUERY_TOTAL.equals(totalHql)) {
            totalHql = (StringUtility.isEmpty(totalHql) ? buildTotalQueryHQL(hql) : totalHql);
            page.setTotal(Long.parseLong(findObjectByHQL(totalHql, agrs).toString()));
            int maxPages = (int) (page.getTotal() % page.getPageSize() == 0 ? page.getTotal() / page.getPageSize() : page.getTotal() / page.getPageSize() + 1);
            if (maxPages < page.getPageNum()) {
                page.setPageNum(maxPages);
            }
        }
        page.setResult(findListByHQL(hql, agrs, page.getStart(), page.getPageSize()));
        return page;
    }

    /**
     * hql分页查询
     * 
     * @param hql
     *            查询记录的hql
     * @param totalHql
     *            查询总数的hql（当totalHql的值为NOT_QUERY_TOTAL时，不进行总数查询，其余情况都要查询总数）
     * @param agrs
     *            查询hql 对应的参数
     * @param page
     *            page
     * @return page
     */
    public Page findPageByHQL(String hql, String totalHql, Object[] agrs, Page page) {
        if (page == null) {
            page = new Page();
        }
        if (!NOT_QUERY_TOTAL.equals(totalHql)) {
            totalHql = (StringUtility.isEmpty(totalHql) ? buildTotalQueryHQL(hql) : totalHql);
            page.setTotal(Long.parseLong(findObjectByHQL(totalHql, agrs).toString()));
            int maxPages = (int) (page.getTotal() % page.getPageSize() == 0 ? page.getTotal() / page.getPageSize() : page.getTotal() / page.getPageSize() + 1);
            if (maxPages < page.getPageNum()) {
                page.setPageNum(maxPages);
            }
        }

        page.setResult(findListByHQL(hql, agrs, page.getStart(), page.getPageSize()));
        return page;
    }

    /**
     * 根据SQL分页查询
     * 
     * @param sql
     * @param mappingType
     * @param agrs
     * @param page
     * @return
     */
    public Page findPageBySQL(String sql, Class<?> mappingType, Object[] agrs, Page page) {
        return findPageBySQL(sql, null, mappingType, agrs, page);
    }

    /**
     * 根据SQL分页查询
     * 
     * @param sql
     *            查询语句
     * @param mappingType
     *            实体类类型
     * @param agrs
     *            查询语句的参数
     * @param page
     *            page
     * @return
     */
    public Page findPageBySQL(String sql, Class<?> mappingType, Map<String, Object> agrs, Page page) {
        return findPageBySQL(sql, null, mappingType, agrs, page);
    }

    /**
     * sql分页查询
     * 
     * @param sql
     *            查询记录的sql
     * @param totalSql
     *            查询总数的sql（当totalSql的值为NOT_QUERY_TOTAL时，不进行总数查询，其余情况都要查询总数）
     * @param mappingType
     *            对应的实体类
     * @param agrs
     *            查询sql 对应的参数
     * @param page
     *            page
     * @return page
     */
    public Page findPageBySQL(String sql, String totalSql, Class<?> mappingType, Map<String, Object> agrs, Page page) {
        if (page == null) {
            page = new Page();
        }
        if (!NOT_QUERY_TOTAL.equals(totalSql)) {
            totalSql = (StringUtility.isEmpty(totalSql) ? buildTotalQuerySQL(sql) : totalSql);
            page.setTotal(findObjectBySQL(totalSql, agrs, Integer.class));
            int maxPages = (int) (page.getTotal() % page.getPageSize() == 0 ? page.getTotal() / page.getPageSize() : page.getTotal() / page.getPageSize() + 1);
            if (maxPages < page.getPageNum()) {
                page.setPageNum(maxPages);
            }
        }

        page.setResult(findListBySQL(sql, mappingType, agrs, page.getStart(), page.getPageSize()));
        return page;
    }

    /**
     * sql分页查询
     * 
     * @param sql
     *            查询记录的sql
     * @param totalSql
     *            查询总数的sql
     * @param mappingType
     *            对应的实体类
     * @param agrs
     *            查询sql 对应的参数
     * @param page
     *            page
     * @return page
     */
    public Page findPageBySQL(String sql, String totalSql, Class<?> mappingType, Object[] agrs, Page page) {
        if (page == null) {
            page = new Page();
        }
        if (!NOT_QUERY_TOTAL.equals(totalSql)) {
            totalSql = (StringUtility.isEmpty(totalSql) ? buildTotalQuerySQL(sql) : totalSql);
            page.setTotal(findObjectBySQL(totalSql, agrs, BigInteger.class).intValue());
            int maxPages = (int) (page.getTotal() % page.getPageSize() == 0 ? page.getTotal() / page.getPageSize() : page.getTotal() / page.getPageSize() + 1);
            if (maxPages < page.getPageNum()) {
                page.setPageNum(maxPages);
            }
        }
        page.setResult(findListBySQL(sql, mappingType, agrs, page.getStart(), page.getPageSize()));
        return page;
    }

    /**
     * 根据hql、条件查询唯一的实体对象（如果没有返回null,如有有两个抛异常）
     * 
     * @param <T>
     * @param sql
     *            查询sql
     * @param agrs
     *            查询sql的参数
     * @param mappingType
     *            实体对象类型
     * @return
     */
    public <T> T findObjectByHQL(String hql, Object[] agrs) {
        Query query = this.getSession().createQuery(hql);
        query = setQueryParameter(query, agrs);
        return (T) query.uniqueResult();
    }

    /**
     * 根据hql、条件查询唯一的实体对象（如果没有返回null,如有有两个抛异常）
     * 
     * @param <T>
     * @param sql
     *            查询sql
     * @param agrs
     *            查询sql的参数
     * @param mappingType
     *            实体对象类型
     * @return
     */
    public <T> T findObjectByHQL(String hql, Map<String, Object> agrs) {
        Query query = getSession().createQuery(hql);
        query = setQueryParameter(query, agrs);
        return (T) query.uniqueResult();
    }

    /**
     * 根据sql、条件查询唯一的实体对象（如果没有返回null,如有有两个抛异常）
     * 
     * @param <T>
     * @param sql
     *            查询sql
     * @param agrs
     *            查询sql的参数
     * @param mappingType
     *            实体对象类型
     * @return
     */
    public <T> T findObjectBySQL(String sql, Object[] agrs, Class<T> mappingType) {
        SQLQuery query = this.getSession().createSQLQuery(sql);
        query = setSQLQueryParameter(query, agrs);
        List<String> sqlParameters = parseParameterFromSQL(sql);
        query = setSQLQueryScalars(query, sqlParameters, mappingType);
        // query.setResultTransformer(Transformers.aliasToBean(mappingType));
        return (T) query.uniqueResult();
    }

    /**
     * 根据sq1、条件查询唯一的实体对象（如果没有返回null,如有有两个抛异常）
     * 
     * @param <T>
     * @param sql
     *            查询sql
     * @param agrs
     *            查询sql的参数
     * @param mappingType
     *            实体对象类型
     * @return
     */
    public <T> T findObjectBySQL(String sql, Map<String, Object> agrs, Class<T> mappingType) {
        SQLQuery query = this.getSession().createSQLQuery(sql);
        query = setSQLQueryParameter(query, agrs);
        List<String> sqlParameters = parseParameterFromSQL(sql);
        query = setSQLQueryScalars(query, sqlParameters, mappingType);
        // query.setResultTransformer(Transformers.aliasToBean(mappingType));
        return (T) query.uniqueResult();
    }

    /** *************************************************************************************************** */
    /** *********************************** 公共方法区 end ************************************************* */
    /** *************************************************************************************************** */

    /** *************************************************************************************************** */
    /** *********************************** 私有方法区 begin ************************************************ */
    /** *************************************************************************************************** */

    /**
     * 设置Query 的参数（Map类型的）
     * 
     * @param query
     * @param agrs
     * @return
     */
    private Query setQueryParameter(Query query, Map<String, Object> agrs) {
        if (agrs != null) {
            Iterator<String> keys = agrs.keySet().iterator();
            while (keys.hasNext()) {
                String key = keys.next();
                Object value = agrs.get(key);
                if (value instanceof Collection)
                    query.setParameterList(key, (Collection<?>) value);
                else if (value instanceof Object[])
                    query.setParameterList(key, (Object[]) value);
                else
                    query.setParameter(key, value);
            }
        }
        return query;
    }

    /**
     * 设置Query 的参数（Object[]类型的）
     * 
     * @param query
     * @param agrs
     * @return
     */
    private Query setQueryParameter(Query query, Object[] agrs) {
        if (agrs != null && agrs.length > 0) {
            for (int i = 0; i < agrs.length; ++i) {
                query.setParameter(i, agrs[i]);
            }
        }
        return query;
    }

    /**
     * 设置SQLQuery 的参数（ Map类型的）
     * 
     * @param query
     * @param agrs
     * @return
     */
    private SQLQuery setSQLQueryParameter(SQLQuery query, Map<String, Object> agrs) {
        if (agrs != null) {
            Iterator<String> keys = agrs.keySet().iterator();
            while (keys.hasNext()) {
                String key = keys.next();
                Object value = agrs.get(key);
                if (value instanceof BaseCustomEnum) {
                    query.setParameter(key, ((BaseCustomEnum) value).getValue());
                } else {
                    query.setParameter(key, value);
                }
            }
        }
        return query;
    }

    /**
     * 设置SQLQuery 的参数（ Object[]类型的）
     * 
     * @param query
     * @param agrs
     * @return
     */
    private SQLQuery setSQLQueryParameter(SQLQuery query, Object[] agrs) {
        if (agrs != null && agrs.length > 0) {
            for (int i = 0; i < agrs.length; ++i) {
                if (agrs[i] instanceof BaseCustomEnum) {
                    query.setParameter(i, ((BaseCustomEnum) agrs[i]).getValue());
                } else {
                    query.setParameter(i, agrs[i]);
                }
            }
        }
        return query;
    }

    private SQLQuery setSQLQueryScalars(SQLQuery query, List<String> sqlParameters, Map<String, Class<?>> types) {
        Class<?> clazz = null;
        try {
            for (String fieldName : sqlParameters) {
                clazz = types.get(fieldName);
                Type type = getSession().getTypeHelper().basic(clazz);
                if (type == null) {
//                    if (ClassUtility.isAssignable(BaseCustomEnum.class, clazz)) {
//                        type = new CustomType(new CustomEnumUserType(clazz.getName()));
//                    } else {
//                        throw new SysException(clazz.getName() + "不是CustomBaseEnum的子类！");
//                    }
                }
                query.addScalar(fieldName, type);
            }
        } catch (Exception e) {
            this.logger.info(e.getMessage());
            throw new SysException(clazz.getName() + "不是CustomBaseEnum的子类！");
        }
        return query;
    }

    /**
     * 设定SQLQuery 查询值的 转换类型。 （目前只支持 BaseEntity 实体类型 或 基础类型（String,Integer,Date...等 ） 当为基础类型时，值的个数只能为1个 ）
     * 
     * @param query
     * @param sqlParameters
     * @param mappingType
     * @return
     */
    private SQLQuery setSQLQueryScalars(SQLQuery query, List<String> sqlParameters, Class<?> mappingType) {
        Field field = null;

        if (ClassUtility.isAssignable(BasePOJO.class, mappingType)) {
            try {
                for (String fieldName : sqlParameters) {
                    field = mappingType.getDeclaredField(fieldName);
                    Type type = getSession().getTypeHelper().basic(field.getType());
                    if (type == null) {
//                        if (ClassUtility.isAssignable(BaseCustomEnum.class, field.getType())) {
//                            type = new CustomType(new CustomEnumUserType(field.getType().getName()));
//                        } else {
//                            throw new SysException(field.getType().getName() + "不是CustomBaseEnum的子类！");
//                        }
                    }
                    query.addScalar(fieldName, type);
                }
                query.setResultTransformer(Transformers.aliasToBean(mappingType));
            } catch (Exception e) {
                this.logger.info(e.getMessage());
                throw new SysException(field.getType().getName() + "不是CustomBaseEnum的子类！");
            }
        } else {
            if (sqlParameters.size() != 1) {
                throw new SysException("sql查询的值转换为" + mappingType + "异常：【值个数不为1，但仅指定了1个转换类型】！");
            }
            Type type = getSession().getTypeHelper().basic(mappingType);
            if (type == null) {
                throw new SysException("sql查询的值转换为" + mappingType + "异常:【" + mappingType + "不能转换为hibernate对应的基本转换类型】！");
            }
            query.addScalar(sqlParameters.get(0), type);
        }

        return query;
    }

    /**
     * 将sql中查询的字段名称 以List方式返回（例如：select ID as id,NAME as name from TABLE 返回包含id,name的List）
     * 
     * @param sql
     * @return
     */
    private List<String> parseParameterFromSQL(String sql) {
        int indexFrom = StringUtility.indexOfIgnoreCase(sql, " FROM ");
        String selectStr = StringUtility.substring(sql, 0, indexFrom) + ",";
        String regStr = "[\\s]*([\\w]+)[\\s]*,";
        Pattern p = Pattern.compile(regStr);
        Matcher m = p.matcher(selectStr);
        List<String> names = new ArrayList<String>();
        while (m.find()) {
            names.add(m.group(1));
        }
        return names;
    }

    /**
     * 去除hql的orderby 子句，用于pagedQuery.
     * 
     * @param hql
     *            hql语句
     * @return 去除orderby后的hql字符串
     */
    private static String removeOrders(String hql) {
        if (StringUtility.isEmpty(hql)) {
            throw new SysException("查询语句为空");
        }

        // Pattern p = Pattern.compile("ORDER\\s+BY[\\s|\\S\\w|\\W]*", 2);
        Matcher m = PATTERN_ORDER.matcher(hql);
        StringBuffer sb = new StringBuffer();
        for (; m.find(); m.appendReplacement(sb, ""))
            ;
        m.appendTail(sb);
        return sb.toString();
    }

    /**
     * 去除hql的from前的语句.
     * 
     * @param hql
     *            hql语句
     * @return 去除后的hql字符串
     */
    private static String removeSelect(String hql) {
        if (StringUtility.isEmpty(hql)) {
            throw new SysException("查询语句为空");
        }

        int beginPos = hql.toLowerCase().indexOf("from ");// 针对HQL 以"from "开头的情况
        if (beginPos == 0) {
            return hql;
        }
        beginPos = hql.toLowerCase().indexOf(" from ");// 针对肯能 表字段中有 from结尾的情况
        Assert.isTrue(beginPos >= 0, (new StringBuilder()).append(" hql : ").append(hql).append(" must has a keyword 'from'").toString());
        return hql.substring(beginPos);
    }

    /**
     * 生成查询总数的SQL语句
     * 
     * @param sql
     * @return
     */
    private String buildTotalQuerySQL(String sql) {
        if (StringUtility.isEmpty(sql)) {
            throw new SysException("查询语句为空");
        }

        int index_group = StringUtility.indexOf(sql.toUpperCase(), " GROUP ");
        if (index_group > -1) {
            return "select count(*) nums from ( " + removeOrders(sql) + ") one";
        }

        int index_union = StringUtility.indexOf(sql.toUpperCase(), " UNION ");
        if (index_union > -1) {
            StringBuffer sb = new StringBuffer();
            sb.append("select count(*) from ( ");
            sb.append(sql);
            sb.append(") one");
            return sb.toString();
        }

        String countStr = null;
        String removeKeyWords = StringUtility.replace(removeOrders(sql), "[\\s]+JOIN[\\s]+FETCH[\\s]+", " join ");

        int indexOfDistinct = StringUtility.indexOfByRegx(removeKeyWords.trim().toUpperCase(), PATTERN_DISTINCT);
        int indexOfCount = StringUtility.indexOfByRegx(removeKeyWords.trim().toUpperCase(), PATTERN_COUNT);
        int indexOfFrom = removeKeyWords.trim().toUpperCase().indexOf(" FROM ");
        boolean startsWithSelect = removeKeyWords.trim().toUpperCase().startsWith("SELECT ");
        boolean hasCount = indexOfCount > -1 && indexOfCount < indexOfFrom && startsWithSelect;
        boolean hasDistinct = indexOfDistinct > -1 && indexOfDistinct < indexOfFrom && startsWithSelect;

        if (hasCount)
            countStr = removeKeyWords;
        else if (hasDistinct) {
            String distinctStr = removeKeyWords.trim().substring(removeKeyWords.trim().toUpperCase().indexOf("SELECT ") + 6, indexOfFrom);
            /* 针对select distinct id as id,name as name from tableA */
            distinctStr = dealDistinctStr(distinctStr);
            countStr = (new StringBuilder()).append("SELECT COUNT(").append(distinctStr).append(") nums ").append(removeSelect(removeKeyWords)).toString();
        } else {
            countStr = (new StringBuilder()).append("SELECT COUNT(*) nums ").append(removeSelect(removeKeyWords)).toString();
        }
        return countStr;
    }

    /**
     * 生成查询总数的HQL语句
     * 
     * @param hql
     * @return
     */
    private String buildTotalQueryHQL(String hql) {
        if (StringUtility.isEmpty(hql)) {
            throw new SysException("查询语句为空");
        }
        int index_group = StringUtility.indexOf(hql.toUpperCase(), " GROUP ");
        if (index_group > -1) {
            return "select count(*)  from ( " + removeOrders(hql) + ") one";
        }

        int index_union = StringUtility.indexOf(hql.toUpperCase(), " UNION ");
        if (index_union > -1) {
            StringBuffer sb = new StringBuffer();
            sb.append("select count(*) from ( ");
            sb.append(hql);
            sb.append(") one");
            return sb.toString();

        }
        String countStr = null;
        String removeKeyWords = StringUtility.replace(removeOrders(hql), "[\\s]+JOIN[\\s]+FETCH[\\s]+", " join ");
        int indexOfDistinct = StringUtility.indexOfByRegx(removeKeyWords.trim().toUpperCase(), PATTERN_DISTINCT);
        int indexOfCount = StringUtility.indexOfByRegx(removeKeyWords.trim().toUpperCase(), PATTERN_COUNT);
        int indexOfFrom = removeKeyWords.trim().toUpperCase().indexOf(" FROM ");
        boolean startsWithSelect = removeKeyWords.trim().toUpperCase().startsWith("SELECT ");
        boolean hasCount = indexOfCount > -1 && indexOfCount < indexOfFrom && startsWithSelect;
        boolean hasDistinct = indexOfDistinct > -1 && indexOfDistinct < indexOfFrom && startsWithSelect;

        if (hasCount)
            countStr = removeKeyWords;
        else if (hasDistinct) {
            String distinctStr = removeKeyWords.trim().substring(removeKeyWords.trim().toUpperCase().indexOf("SELECT ") + 6, indexOfFrom);
            /* 针对select distinct id as id,name as name from tableA 的处理 */
            distinctStr = dealDistinctStr(distinctStr);
            countStr = (new StringBuilder()).append("SELECT COUNT(").append(distinctStr).append(")  ").append(removeSelect(removeKeyWords)).toString();
        } else {
            countStr = (new StringBuilder()).append("SELECT COUNT(*)  ").append(removeSelect(removeKeyWords)).toString();
        }
        return countStr;
    }

    private String dealDistinctStr(String distinctStr) {
        /* 针对select distinct id as id,name as name from tableA的处理 */
        int indexDistinct = distinctStr.toUpperCase().indexOf("DISTINCT ");
        String tmp_str = distinctStr.substring(indexDistinct + 8);
        String[] qItems = tmp_str.split(",");
        StringBuffer sb = new StringBuffer();
        for (String item : qItems) {
            sb.append(item.trim().split(" ")[0]).append(",");
        }
        sb.deleteCharAt(sb.length() - 1);
        distinctStr = distinctStr.substring(0, indexDistinct + 8) + " " + sb.toString();
        return distinctStr;
    }

}
