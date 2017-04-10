package service;

import java.util.List;

import org.hibernate.HibernateException;
import org.springframework.stereotype.Service;

import dao.ExampaperDao;
import daoImpl.ExampaperDaoImpl;
import pojo.Exampaper;
import service.ExampaperManager;

@Service
public class ExampaperManagerImpl implements ExampaperManager{
    private ExampaperDao dao;  

    public ExampaperManagerImpl(){
        System.out.println("ExampaperManager IN");
    }
    
    public ExampaperDao getDao() {
    	return dao;
	}

    public void setDao(ExampaperDao dao) {
        this.dao = dao;
    }
    
    public boolean Upload(Exampaper exampaper) throws HibernateException{
    	dao.saveObject(exampaper);
    	return true;
    }
    
    public boolean setExampaper(String items,int id) throws HibernateException{
    	String[] strs; 	 //����һ���� 
		strs=items.split("->");    //�ַ��ָ� 
		
    	for(int i = 0; i < strs.length; i++){
    		if(strs[i]!=null){
    			Exampaper exampaper = new Exampaper();
    			exampaper.setItemId(i);
    			exampaper.setExampaperId(id);
    	    	dao.saveObject(exampaper);
    		}
    	}
    	
    	return true;
    }
    
    public List<Exampaper> getExampaperByExampaperId(String exampaperId) throws HibernateException {  
        return dao.getExampaperByExampaperId(exampaperId);
    }
    

	@Override
	public boolean reflect(Exampaper exampaper, Double amount) throws HibernateException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean recharge(Exampaper exampaper, Double amount) throws HibernateException {
		// TODO Auto-generated method stub
		return false;
	}
	
}
