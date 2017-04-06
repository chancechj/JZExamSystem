package service;

import java.util.List;

import org.hibernate.HibernateException;

import pojo.Grade;


/** 
 * UserManager��ҵ��ӿڶ��壬
 * 
 * 
 * @author Lucifer 
 * @date 2017��3��15�� ����9:42:27 
 * @version 1.0 
 * @parameter  
 * @since  
 * @return  
 */
public interface GradeManager {
	public List<Grade> getGrades(Grade grade) throws HibernateException;
	public boolean recharge(Grade grade,Double amount) throws HibernateException;
	public boolean reflect(Grade grade,Double amount) throws HibernateException;
}
