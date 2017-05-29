package action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

import net.sf.json.JSONObject;
import pojo.Solution;
import pojo.Source_code;
import service.chj.SolutionManagerImpl;
import service.chj.Source_codeManagerImpl;
import tool.DataTool;

@Controller
public class SubmitCodeAction implements Action {
	private String contentType = "text/html;charset=utf-8";
	private JSONObject result;
	private int problem_id;
	private int language;
	private String source;
	private String date;

	private Integer sid;


	private Solution solution;
	private Source_code source_code;

	private SolutionManagerImpl SolutionManager;
	private Source_codeManagerImpl Source_codeManager;

	// �ύ���������
	@Override
	public String execute() throws Exception {
		ServletActionContext.getResponse().setContentType(contentType);
		solution.setSolution_id(110);
		solution.setProblem_id(1000);
		solution.setUser_id("qwerasdf");
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		date = df.format(new Date());
		solution.setIn_date(date);
		solution.setLanguage(language);
		solution.setIp("::1");
		solution.setCode_length(source.length());
		System.out.println("��ʼ�־û�");
		sid = (Integer) SolutionManager.submit(solution);
		Map session = ActionContext.getContext().getSession();
		session.put("sid", sid);
		source_code.setSolution_id(sid);
		source_code.setSource(source);
		Source_codeManager.submit(source_code);
		return "success";

	}

	// ��ȡ���
	public String excuteAjax() throws Exception {

		ServletActionContext.getResponse().setContentType(contentType);
		Map session = ActionContext.getContext().getSession();
		sid = (Integer) session.get("sid");
		System.out.println("jinlaidesid" + sid);
		if (sid == null) {
			System.out.println("Ϊ��");
			result = new JSONObject();
			result.put("result", "");
		} else {

			Integer result1 = SolutionManager.haveResult(sid);
			String result2 = null;
			String IDentifier = null;
			result = new JSONObject();
			if (sid != null) {
				if (result1 > 2) {
					result2 = "�жϳɹ������Ϊ" + result1;
					IDentifier = "1";
				} else {
					result2 = "�ж���...";
					IDentifier = "0";
				}
			} else {
				Thread.sleep(1000);
				getResult();
			}

			result.put("result", result2);
			result.put("IDentifier", IDentifier);
			System.out.println("���ص�jsonΪ��" + result);
		}
		return "success";
	}

	/*
	 * springֻע����Setter��û��Getter����ʱע�͵�������json����from��chj
	 * ������Setter�����@JSON(serialize=false) ��ֹ���л�
	 * �ο��ԣ�http://kingxss.iteye.com/blog/1622455
	 */

	// public String getContentType() {
	// return contentType;
	// }

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	// public int getProblem_id() {
	// return problem_id;
	// }

	public void setProblem_id(int problem_id) {
		this.problem_id = problem_id;
	}

	// public int getLanguage() {
	// return language;
	// }

	public void setLanguage(int language) {
		this.language = language;
	}

	// public String getSource() {
	// return source;
	// }

	public void setSource(String source) {
		this.source = source;
	}

	// public String getDate() {
	// return date;
	// }

	public void setDate(String date) {
		this.date = date;
	}

	// public Solution getSolution() {
	// return solution;
	// }

	public void setSolution(Solution solution) {
		this.solution = solution;
	}

	// public Source_code getSource_code() {
	// return source_code;
	// }

	public void setSource_code(Source_code source_code) {
		this.source_code = source_code;
	}

	// public SolutionManagerImpl getSolutionManager() {
	// return SolutionManager;
	// }

	public void setSolutionManager(SolutionManagerImpl solutionManager) {
		SolutionManager = solutionManager;
	}

	// public Source_codeManagerImpl getSource_codeManager() {
	// return Source_codeManager;
	// }

	public void setSource_codeManager(Source_codeManagerImpl source_codeManager) {
		Source_codeManager = source_codeManager;
	}

	public JSONObject getResult() {
		return result;
	}

	public void setResult(JSONObject result) {
		this.result = result;
	}

}
