package service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;
import org.springframework.stereotype.Service;

import dao.ExampaperDao;
import pojo.ExamParamters;
import pojo.Exampaper;
import pojo.Problem;
import service.ExampaperManager;
import service.ItemManager;
import service.chj.ProblemManager;

@Service
public class ExampaperManagerImpl implements ExampaperManager{
    private ExampaperDao dao;
    private ItemManager itemManager;
    
    private ProblemManager problemManager;

    public ExampaperManagerImpl(){
        System.out.println("ExampaperManager IN");
    }
    
    public ExampaperDao getDao() {
    	return dao;
	}

    public void setDao(ExampaperDao dao) {
        this.dao = dao;
    }
    
    public void setItemManager(ItemManager itemManager){
    	this.itemManager = itemManager;
    }
	public void setProblemManager(ProblemManager problemManager) {
		this.problemManager = problemManager;
	}
	
    public boolean setExampaper(Exampaper exampaper) throws HibernateException{
    	dao.saveObject(exampaper);
    	return true;
    }
    
    public List<Exampaper> getExampaperById(String exampaperId){
    	return dao.getExampaperByExampaperId(exampaperId);
    }
    
    


	public List<Object> getItemsByPapers(List<Exampaper> exampapers){
    	List<Object> list = new ArrayList<Object>();
    	Iterator item = exampapers.iterator();
    	while(item.hasNext()){
    		Exampaper exampaper = (Exampaper)item.next();
    		
    		//������itemId��ȡ��item����list
    		list.add(itemManager.getItemById(exampaper.getItemId()));
    	}
    	//����list<item>
    	return list;
    }
    
    public boolean setExampaper(int itemId,String paperid) throws HibernateException{
    	Exampaper exampaper = new Exampaper();
    	exampaper.setExampaperId(paperid);
    	exampaper.setItemId(itemId);

    	dao.saveObject(exampaper);
    	
    	return true;
    }
    

    
    public List<Object> getItemlist(String items){
    	String[] strs = splitStr(items);
    	List<Object> obj = new ArrayList<Object>();
    	for(int i = 0; i < strs.length; i++){
    		if(strs[i]!=null){
    			if(Integer.parseInt(strs[i])<1000){
    				obj.add(itemManager.getItemById(Integer.parseInt(strs[i])));
    			}
    		}
    	}
    	
    	return obj;
    }
    
    @Override
	public List<Problem> getProblemList(String items) {
    	String[] strs = splitStr(items);
    	List<Problem> obj = new ArrayList<Problem>();
    	for(int i = 0; i < strs.length; i++){
    		if(strs[i]!=null){
    			if(Integer.parseInt(strs[i])>1000){
    				obj.add(problemManager.getProblemById(Integer.parseInt(strs[i])));
    			}
    		}
    	}
    	
    	return obj;
	}
    
    private String[] splitStr(String items){
    	String[] strs; 	 //����һ���� 
		strs=items.split("->");    //�ַ��ָ� 
    	return strs;
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
