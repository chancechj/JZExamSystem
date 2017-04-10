package action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;

import pojo.Exampaper;
import service.ExampaperManagerImpl;

public class TeaExampaperAction  implements Action {
	private String contentType = "text/html;charset=utf-8";
	
	private ExampaperManagerImpl exampaperManager;
	
	private Exampaper exampaper;
	
	public String execute() throws Exception
    {
		ServletActionContext.getResponse().setContentType(contentType);
		//��������
		exampaper.setExampaperId(10);
		exampaper.setItemId(5);
		
		//����ҵ���߼���������ݿ�
		if(exampaperManager.Upload(exampaper)){
        	return SUCCESS;
        }
		return ERROR;
    }

	public void setExampaperManager(ExampaperManagerImpl exampaperManager) {
		this.exampaperManager = exampaperManager;
	}

	public void setExampaper(Exampaper exampaper) {
		this.exampaper =  exampaper;
	}
	
	
}
