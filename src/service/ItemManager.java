package service;

import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;

import pojo.Item;

public interface ItemManager {
	//上传题目
	public boolean Upload(Item item) throws HibernateException;
	//获取所有题目
	public List<Item> getItems() throws HibernateException;
	//根据类型获取题目
	public List<Item> getItemsByType(String type) throws HibernateException;
	//根据id获取题目
	public Item getItemById(int itemId) throws HibernateException;
		   
	public boolean recharge(Item item,Double amount) throws HibernateException;
	public boolean reflect(Item item,Double amount) throws HibernateException;
}
