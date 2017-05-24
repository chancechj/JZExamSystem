package action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.Action;

import net.sf.json.JSONArray;
import pojo.Exam;
import pojo.ExamParamters;
import service.ExamManager;
import service.ExampaperManager;
import service.ExampaperManagerImpl;
import tool.DataTool;


public class TeaExamAction implements Action, SessionAware   {
	private String contentType = "text/html;charset=utf-8";
	
	private Map<String,Object> session;
	
	private ExamManager examManager;
	private ExampaperManager exampaperManager;
	
	//试卷种类
	private String[] strs= {"A","B","C","D","E","F","G","H"};
	
	//上传题目串
	private String items;
	
	private Exam exam;

	private String result;
	
	//上传的题目数量与分值
	private String[] number;
	private String[] score;
	private String topic;

	public String execute(){
		return "success";
	}
	
	//添加试卷
	public String addExam(){
		ServletActionContext.getResponse().setContentType(contentType);

		if(session.get("addExam")==null){
			int i = 0;
			session.put("addExam", i);
		}
		else{
			int i = (int) session.get("addExam");
			i++;
		}
		
		exam.setExamId(123);
		exam.setExamName("哈哈哈");
		exam.setExamTime(exam.getNowTime());
		exam.setExamPaperId("123"+strs[(int)session.get("addExam")]);
		
		examManager.setExam(exam);

		//题id串，exampaperId
		exampaperManager.setExampaper("1->2->3", strs[(int)session.get("addExam")]);
		
		return "success";
	}
	
	//manageexamadd上传选择题目到manageexamitemlist调用函数
	public String itemlist(){
		items = getItems();
		List<Object> obj = new ArrayList<Object>();
		if(!getItems().equals("")&&getItems()!=null){
			obj = exampaperManager.getItemlist(getItems());
		}

		session.put("items", DataTool.getJson(obj));
		return "success";
	}
	
	//随机组卷
	public String RandomExam(){
		ExamParamters examParamters = new ExamParamters();
		examParamters.setBlankfilingMun(5);
		
		
		Map<String,Object> items = new HashMap<String,Object>();
		String[] str = {"11","2","23","13","12","55","40","77","8"};
		items.put("choice", null);
		items.put("judge", null);
		items.put("blankfiling", str);
		
		examManager.RandomExam(examParamters, items);
		
		return "success";
	}
	
  	public String confirmExam(){
		String[] number = getNumber();
		String[] score = getScore();
		ExamParamters examParamters = new ExamParamters();

		examParamters.setChoiceMun(Integer.parseInt(number[0]));
		examParamters.setChoicePlace(Integer.parseInt(score[0]));
		examParamters.setJudgeMun(Integer.parseInt(number[1]));
		examParamters.setJudgePlace(Integer.parseInt(score[1]));
		examParamters.setBlankfilingMun(Integer.parseInt(number[2]));
		examParamters.setBlankfilingPlace(Integer.parseInt(score[2]));
		examParamters.setTopic(getTopic());
		
		List items = DataTool.getJsonItem((JSONArray)session.get("items"));
		Map<String,Object> map = examManager.chooie(items);
		
		examManager.RandomExam(examParamters, map);
		
		System.out.println(number);
		System.out.println(score);
		
		return "success";
	}
	
	//添加试卷
	public String getAllExam(){
		List<Exam> exams = examManager.getExams();
		
		result = DataTool.getJsonStr(exams);
		
		return "result";
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getItems() {
		return items;
	}

	public void setItems(String items) {
		this.items = items;
	}

	public void setExamManager(ExamManager examManager) {
		this.examManager = examManager;
	}
	public void setExam(Exam exam){
		this.exam = exam;
	}
	
	public String[] getNumber() {
		return number;
	}

	public void setNumber(String[] number) {
		this.number = number;
	}
	
	public String[] getScore() {
		return score;
	}

	public void setScore(String[] score) {
		this.score = score;
	}
	
	public void setExampaperManager(ExampaperManager exampaperManager){
		this.exampaperManager = exampaperManager;
	}
	
	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}
	
	@Override
	public void setSession(Map<String,Object> session){
		this.session = session;
	}
}
