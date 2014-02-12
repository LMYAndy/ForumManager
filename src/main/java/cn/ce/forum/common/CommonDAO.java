package cn.ce.forum.common;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.transform.Transformers;
import org.hibernate.type.Type;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import cn.ce.framework.exception.api.SysException;
import cn.ce.framework.support.BaseCustomEnum;
import cn.ce.framework.support.BaseDAO;
import cn.ce.framework.support.BaseEntity;
import cn.ce.framework.support.BasePOJO;
import cn.ce.framework.utils.ClassUtility;
import cn.ce.framework.utils.StringUtility;

@Repository
public class CommonDAO<T extends BaseEntity> extends BaseDAO{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3966934510718870993L;

	
	@SuppressWarnings("unused")
	private void save(T t){
		getSession().persist(t);
		 getSession().flush();
    }
	
	@SuppressWarnings("unchecked")
	private void update(T t){
		getSession().merge(t);
		getSession().flush();
	}
	
	private <T extends BaseEntity> T findById(String id,Class<T> mappingType){
		 return (T) getSession().get(mappingType, id);
    }
	
	private <T extends BaseEntity> void delete(T hbm) {
        getSession().delete(hbm);
        getSession().flush();
    }
    
	private int updateByHQL(String hql, Object... objects) {
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
    
	private int updateBySQL(String sql, Object... objects) {
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
	
    protected List<?> findListByHQL(String hql, Object[] agrs, int start, int size) {
        Query query = getSession().createQuery(hql);
        query = setQueryParameter(query, agrs);
        if (size != -1) {
            query.setFirstResult(start);
            query.setMaxResults(size);
        }
        return query.list();
    }
    
    public List<?> findListByHQL(String hql, Object[] agrs){
    	return findListByHQL(hql,agrs,-1,-1);
    }
    
    private Query setQueryParameter(Query query, Object[] agrs) {
        if (agrs != null && agrs.length > 0) {
            for (int i = 0; i < agrs.length; ++i) {
                query.setParameter(i, agrs[i]);
            }
        }
        return query;
    }
    
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
                            throw new SysException(field.getType().getName() + "不是CustomBaseEnum的子类！");
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
    
    public <T extends BaseEntity>T  findObject(String entyName ,Map<String,Object> args){
    	String hql = buildQueryHql(entyName,args);
    	return  this.findObjectByHQL(hql, args);
    	
    }
    
    public List<?> findList(String entyName ,Map<String,Object> args){
    	String hql = buildQueryHql(entyName,args);
    	return  this.findListByHQL(hql, args);
    	
    }
    
    private String buildQueryHql(String entyName ,Map<String,Object> args){
    	if(args!=null){
    		StringBuffer hql = new StringBuffer(" from "+entyName+" where 1=1 ");
    		for(Map.Entry<String, Object> entry:args.entrySet()){
    			if(entry.getValue()!=null){
    				hql.append(" and "+entry.getKey()+" = ? ");
    			}
    		}
    		return hql.toString();
    	}
		return null;
    }
}
 