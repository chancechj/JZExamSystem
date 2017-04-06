package dao;
import java.util.List;

import org.hibernate.HibernateException;

import pojo.Exampaper;

public interface ExampaperDao {
	//������Ŀ�����ݿ�
    public void saveObject(Exampaper exampaper) throws HibernateException;
    //������Ŀ
	public void updateObject(Exampaper exampaper) throws HibernateException;
	//��exampaperId���Ҹ��Ծ�������ĿID
	public List<Exampaper> getExampaperByExampaperId(String exampaperId) throws HibernateException;

}
