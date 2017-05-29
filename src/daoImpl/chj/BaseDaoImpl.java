package daoImpl.chj;


import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import java.util.Map;

//import org.hibernate.Query;
import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import dao.chj.BaseDao;
import pojo.PageModel;

@Repository
@SuppressWarnings("all")
public class BaseDaoImpl<T> implements BaseDao<T>{


	private Class<T> clazz; // Class type
	private SessionFactory judgeSessionFactory;

	public BaseDaoImpl() {
        System.out.println("BaseDao IN");
        ParameterizedType type = (ParameterizedType)this.getClass().getGenericSuperclass();
		this.clazz = (Class<T>)type.getActualTypeArguments()[0];
    }
	
	public SessionFactory getJudgeSessionFactory() {
		return judgeSessionFactory;
	}

	public void setJudgeSessionFactory(SessionFactory judgeSessionFactory) {
		this.judgeSessionFactory = judgeSessionFactory;
	}

	private Session getCurrentSession() {
		return this.judgeSessionFactory.getCurrentSession();
	}

	@Override
	public Serializable save(T o) {
		return this.getCurrentSession().save(o);
	}

	@Override
	public T get(Class<T> c, Serializable id) {
		return (T) this.getCurrentSession().get(c, id);
	}

	@Override
	public T get(String hql) {
		Query q = this.getCurrentSession().createQuery(hql);
		List<T> l = q.list();
		if (l != null && l.size() > 0) {
			return l.get(0);
		}
		return null;
	}


	@Override
	public void delete(T o) {
		this.getCurrentSession().delete(o);
	}

	@Override
	public void update(T o) {
		this.getCurrentSession().update(o);
	}


	@Override
	public List<T> find(String hql) {
		Query q = this.getCurrentSession().createQuery(hql);
		return q.list();
	}

	@Override
	public List<T> find(String hql, int page, int rows) {
		Query q = this.getCurrentSession().createQuery(hql);
		return q.setFirstResult((page - 1) * rows).setMaxResults(rows).list();
	}

	@Override
	public int totalCount() {
		int count = 0;
		String hql = "SELECT count(t) FROM " + clazz.getSimpleName() + " t";
		Long temp = (Long)this.getCurrentSession().createQuery(hql).uniqueResult();
		if(temp != null){
			count = temp.intValue();
		}

		return count;
	}
	
	@Override
	public PageModel<T> findByPager(int pageNo, int pageSize) {
		PageModel<T> pm = new PageModel<T>(pageNo, pageSize);
		String hql = "select t from " + clazz.getSimpleName() + " t";
		pm.setDatas(this.getCurrentSession().createQuery(hql).setFirstResult((pageNo-1)*pageSize).setMaxResults(pageSize).list());
		pm.setRecordCount(totalCount());

		return pm;
	}
	
	@Override
	public Long count(String hql) {
		Query q = this.getCurrentSession().createQuery(hql);
		return (Long) q.uniqueResult();
	}

	@Override
	public Long count(String hql, Map<String, Object> params) {
		Query q = this.getCurrentSession().createQuery(hql);
		if (params != null && !params.isEmpty()) {
			for (String key : params.keySet()) {
				q.setParameter(key, params.get(key));
			}
		}
		return (Long) q.uniqueResult();
	}


	@Override
	public int executeHql(String hql) {
		Query q = this.getCurrentSession().createQuery(hql);
		return q.executeUpdate();
	}


}