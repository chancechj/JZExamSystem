package service;

import java.util.List;

import org.hibernate.HibernateException;

import pojo.Student;

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
public interface UserManager {
	public String login(Student user) throws HibernateException;
	public boolean register(Student user) throws HibernateException;
	public List<Student> getStudents() throws HibernateException;
	public boolean recharge(Student user,Double amount) throws HibernateException;
	public boolean reflect(Student user,Double amount) throws HibernateException;
}
