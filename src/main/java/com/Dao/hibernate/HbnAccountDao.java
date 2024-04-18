package com.Dao.hibernate;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.inject.Inject;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.Dao.Dao;

@Repository
public abstract class HbnAccountDao<T extends Object> implements Dao<T> {
	@Inject
	private SessionFactory sessionFactory;
	private Class<T> domainClass;

	public void setSessionFactory(SessionFactory session) {
		this.sessionFactory = session;
	}

	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@SuppressWarnings("unchecked")
	private Class<T> getDomainClass() {

		if (domainClass == null) {
			ParameterizedType thisType = (ParameterizedType) getClass().getGenericSuperclass();
			this.domainClass = (Class<T>) thisType.getActualTypeArguments()[0];
		}
		return domainClass;
	}

	private String getDomainClassName() {
		return getDomainClass().getName();
	}

	// hibernate create method use for only object detail save not password
	public void create(T t) {
		getSession().save(t);
	}

	public T get(Serializable id) {
		return (T) getSession().get(getDomainClass(), id);
	}

	public T load(Serializable id) {
		return (T) getSession().load(getDomainClass(), id);
	}

	@SuppressWarnings("unchecked")
	public List<T> getAllTeacher() {
		return getSession().createQuery("").getResultList();
	}
	

	public void update(T t) {
		getSession().update(t);
	}

	public void delete(T t) {
		getSession().delete(t);
	}

	public void deleteById(Serializable id) {
		delete(load(id));
	}

	public void deleteAll() {
		getSession().createQuery("delete " + getDomainClassName()).executeUpdate();
	}

	public long count() {
		return (Long) getSession().createQuery("select count(*) from " + getDomainClassName()).uniqueResult();
	}

	public boolean exists(Serializable id) {
		return (get(id) != null);
	}
}
