package service;

import java.util.List;

import org.hibernate.HibernateException;

import pojo.Exampaper;

public interface ExampaperManager {
	//�ϴ�
	public boolean setExampaper(Exampaper exampaper) throws HibernateException;
	
	//����exampapers��ȡlist<item>����
	public List<Object> getItemsByPapers(List<Exampaper> exampapers);
	
	public List<Exampaper> getExampaperById(String exampaperId);
	/*	�Ծ�������ݿ�
	 * 	items��ҳ���ȡ����Ŀid����
	 * 	id��paperId����exam�����������ȡ
	 */
	public boolean setExampaper(String items,String id) throws HibernateException;
	
	public boolean recharge(Exampaper exampaper,Double amount) throws HibernateException;
	public boolean reflect(Exampaper exampaper,Double amount) throws HibernateException;
}
