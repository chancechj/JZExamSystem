package service;

import java.util.List;

import org.hibernate.HibernateException;

import pojo.Exampaper;

public interface ExampaperManager {
	//�ϴ���Ŀ
	public boolean Upload(Exampaper exampaper) throws HibernateException;
	//����id��ȡ��Ŀ
	public List<Exampaper> getExampaperByExampaperId(String exampaperId) throws HibernateException;
		   
	public boolean recharge(Exampaper exampaper,Double amount) throws HibernateException;
	public boolean reflect(Exampaper exampaper,Double amount) throws HibernateException;
}
