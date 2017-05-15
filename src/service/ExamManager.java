package service;

import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;

import pojo.Exam;
import pojo.ExamParamters;
import pojo.Item;

public interface ExamManager {
	//上传试卷
	public boolean Upload(Exam exam) throws HibernateException;
	//根据id获取试卷内容
	public Map<String,Object> getExamById(String examId) throws HibernateException;
	//将试卷题目和试卷信息存入数据库
	public boolean setExam(Exam exam) throws HibernateException;
	//随机生成试卷
	public Map<String,Object> RandomExam(ExamParamters examParamters,Map<String,Object> items);
	//获取所有试卷
	public List<Exam> getExams() throws HibernateException;
	//数据转换，将list分类成map
    public Map<String,Object> chooie(List<Object> items);
	
	public boolean recharge(Exam exampaper,Double amount) throws HibernateException;
	public boolean reflect(Exam exampaper,Double amount) throws HibernateException;
}
