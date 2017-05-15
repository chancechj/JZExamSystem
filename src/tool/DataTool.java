package tool;

import java.util.List;
import java.util.Random;

import net.sf.json.JSONArray;
import pojo.Item;

public class DataTool {
	//生成0-max的随机数，用于随机组卷
	public static int getRandom(int max){
		return new Random().nextInt(max);
	} 
	
	//根据items字符串获取切割后的itemid数组
	public static String[] getItems(String items){
		String[] strs; 	 //定义一数组 
		strs=items.split("->");    //字符分割 
    	return strs;
	}
	
	//将List<Object>转换为jsonStr
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
