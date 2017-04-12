package service;

import java.util.Map;

import org.hibernate.HibernateException;

import pojo.Exam;

public interface ExamManager {
	//�ϴ��Ծ�
	public boolean Upload(Exam exam) throws HibernateException;
	//����id��ȡ�Ծ�����
	public Map<String,Object> getExamById(String examId) throws HibernateException;
	//���Ծ���Ŀ���Ծ���Ϣ�������ݿ�
	public boolean setExam(String items,Exam exam) throws HibernateException;
	
	public boolean recharge(Exam exampaper,Double amount) throws HibernateException;
	public boolean reflect(Exam exampaper,Double amount) throws HibernateException;
}
