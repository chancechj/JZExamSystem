package service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.springframework.stereotype.Service;

import dao.ExampaperDao;
import pojo.Exampaper;
import service.ExampaperManager;
import service.ItemManager;

@Service
public class ExampaperManagerImpl implements ExampaperManager{
    private ExampaperDao dao;
    private ItemManager itemManager;

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
    		
    		//将根据itemId获取的item存入list
    		list.add(itemManager.getItemById(exampaper.getItemId()));
    	}
    	//返回list<item>
    	return list;
    }
    
    public boolean setExampaper(String items,String id) throws HibernateException{
    	String[] strs = splitStr(items);
		
    	for(int i = 0; i < strs.length; i++){
    		if(strs[i]!=null){
    			Exampaper exampaper = new Exampaper();
    			exampaper.setItemId(Integer.parseInt(strs[i]));
    			exampaper.setExampaperId(id);
    	    	dao.saveObject(exampaper);
    		}
    	}
    	
    	return true;
    }
    
    public List<Object> getItemlist(String items){
    	String[] strs = splitStr(items);
    	List<Object> obj = new ArrayList<Object>();
    	for(int i = 0; i < strs.length; i++){
    		if(strs[i]!=null){
    			obj.add(itemManager.getItemById(Integer.parseInt(strs[i])));
    		}
    	}
    	
    	return obj;
    }
    
    
    private String[] splitStr(String items){
    	String[] strs; 	 //定义一数组 
		strs=items.split("->");    //字符分割 
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
