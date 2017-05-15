package tool;

import java.util.List;
import java.util.Random;

import net.sf.json.JSONArray;
import pojo.Item;

public class DataTool {
	//����0-max�������������������
	public static int getRandom(int max){
		return new Random().nextInt(max);
	} 
	
	//����items�ַ�����ȡ�и���itemid����
	public static String[] getItems(String items){
		String[] strs; 	 //����һ���� 
		strs=items.split("->");    //�ַ��ָ� 
    	return strs;
	}
	
	//��List<Object>ת��ΪjsonStr
	public static String getJsonStr(Object object){
		JSONArray jsonStr = JSONArray.fromObject(object);	
		
		String result = jsonStr.toString();
		
		return result;
	}
	
	public static JSONArray getJson(Object object){
		return JSONArray.fromObject(object);	
	}
	
	public static List<Item> getJsonItem(JSONArray jsonArray){
		return (List<Item>) JSONArray.toCollection(jsonArray, Item.class);
	}
}
