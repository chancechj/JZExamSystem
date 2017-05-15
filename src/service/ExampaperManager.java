package service;

import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;

import pojo.ExamParamters;
import pojo.Exampaper;

public interface ExampaperManager {
	//上传
	public boolean setExampaper(Exampaper exampaper) throws HibernateException;
	
	//根据exampapers获取list<item>对象
	public List<Object> getItemsByPapers(List<Exampaper> exampapers);
	
	public List<Exampaper> getExampaperById(String exampaperId);
	/*	试卷存入数据库
	 * 	items：页面获取的题目id集合
	 * 	id：paperId，从exam存入后自增获取
	 */
	public boolean setExampaper(String items,String id) throws HibernateException;
	
	//将选择的题目id获取题目内容，存入session
	public List<Object> getItemlist(String items);
	
	
	public boolean recharge(Exampaper exampaper,Double amount) throws HibernateException;
	public boolean reflect(Exampaper exampaper,Double amount) throws HibernateException;
}
