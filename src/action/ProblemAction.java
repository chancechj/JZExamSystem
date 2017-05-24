package action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.json.annotations.JSON;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.Action;

import net.sf.json.JSONArray;
import pojo.Problem;
import service.chj.ProblemManagerImpl;

@Controller
public class ProblemAction implements Action {
	private String contentType = "text/html;charset=utf-8";
	private int page;
	
	private JSONArray result;
	
	private List<Problem> problem;
	private ProblemManagerImpl problemManager;
	
	@Override
	public String execute() throws Exception {
		ServletActionContext.getResponse().setContentType(contentType);
		System.out.println(page);
		if(page < 1){
			problem=problemManager.getProblems(1);
			result = JSONArray.fromObject(problem);
			System.out.println("���ص�json��"+result);
			
		}else{
			problem=problemManager.getProblems(page);
			result = JSONArray.fromObject(problem);
			System.out.println("���ص�json��"+result);
		}
		return "success";
	}

	/*
	 * springֻע����Setter��û��Getter����ʱע�͵�������json����from��chj
	 * ������Setter�����@JSON(serialize=false) ��ֹ���л�
	 * �ο��ԣ�http://kingxss.iteye.com/blog/1622455
	 */
	@JSON(serialize=false)
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}
	@JSON(serialize=false)
	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	public JSONArray getResult() {
		return result;
	}

	public void setResult(JSONArray result) {
		this.result = result;
	}
	@JSON(serialize=false)
	public ProblemManagerImpl getProblemManager() {
		return problemManager;
	}

	public void setProblemManager(ProblemManagerImpl problemManager) {
		this.problemManager = problemManager;
	}
	
	@JSON(serialize=false)
	public List<Problem> getProblem() {
		return problem;
	}

	public void setProblem(List<Problem> problem) {
		this.problem = problem;
	}

	
}
