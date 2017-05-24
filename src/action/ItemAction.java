package action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.StringBufferInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.Action;

import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import pojo.Exampaper;
import pojo.Item;
import service.ExampaperManagerImpl;
import service.ItemManagerImpl;
import tool.DataTool;

import org.apache.struts2.interceptor.RequestAware;


@Controller
public class ItemAction implements Action  {
	private String contentType = "text/html;charset=utf-8";
	
	private String result;
	private String getItemsByIdresult;
	
	private String content;
	private String type;
	private String answer;
	
	private String itemStr;
	
	private ItemManagerImpl ItemManager;
	
	private Item item;
	
	/*
	 * 根据题目id串获取全部题目内容
	 * action:/JZExamSystem/getItemsByIds.action;
	*/
	public String Irems(){
//		ServletActionContext.getResponse().setContentType(contentType);
//		
//		String[] s = DataTool.getItems(getItemStr());
//		
//		List<Object> list = new ArrayList<Object>();
//		
//		for(int i = 0; i< s.length; i++){
//			if(s[i]!=null){
//				list.add( ItemManager.getItemById(Integer.parseInt(s[i])) );
//			}
//		}
		
		//result = DataTool.getJsonStr(list);
		
		//System.out.println(result);
		
		return "success";
	}
	
	
	/*
	 * mangeitemadd.jsp调用
	 * 用于添加题目到题库
	 */
	public String execute() throws Exception
    {
		ServletActionContext.getResponse().setContentType(contentType);
		//设置属性
		item.setContent(getContent());
		item.setType(getType());
		item.setAnswer(getAnswer());
		item.setTime(item.getNowTime());
		
		//调用业务逻辑类存入数据库
		if(ItemManager.Upload(item)){
        	return SUCCESS;
        }
		return ERROR;
    }
	
	/*
	 * itemlist.jsp、addexam调用
	 * 作用：获取所有题目，将list<Object>转换为json返回前端
	 */
	public String getAllItems() throws Exception
	{
		ServletActionContext.getResponse().setContentType(contentType);
		
		result = DataTool.getJsonStr(ItemManager.getItems());
//		JSONArray jsonStr = JSONArray.fromObject(ItemManager.getItems());					
//		result = jsonStr.toString();
			
		return "result";
	}
	

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getGetItemsByIdresult() {
		return getItemsByIdresult;
	}

	public void setGetItemsByIdresult(String getItemsByIdresult) {
		this.getItemsByIdresult = getItemsByIdresult;
	}
	
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

//	public ItemManagerImpl getItemManager() {
//		return ItemManager;
//	}

	public void setItemManager(ItemManagerImpl itemManager) {
		ItemManager = itemManager;
	}

	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}
	
	public void setItemStr(String itemStr){
		this.itemStr = itemStr;
	}
	
	public String getItemStr(){
		return itemStr;
	}
	
}
