package action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.Action;

import pojo.Grade;
import service.GradeManager;
import service.GradeManagerImpl;


@Controller
public class GradeAction implements Action {
	private String contentType = "text/html;charset=utf-8";
	
	private int studentId;
	
	private GradeManagerImpl gradeManager;
	
	private Grade grade;
	
	public String execute() throws Exception
    {
		ServletActionContext.getResponse().setContentType(contentType);
		grade.setStudentId(getStudentId());
		List<Grade> grades = gradeManager.getGrades(grade);
		
		for(int i = 0;i<grades.size();i++){
			Grade g = grades.get(i);
			System.out.println(g.getStudentGrade());
		}
		
		return SUCCESS;
    }

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public GradeManager getGradeManagerImpl() {
		return gradeManager;
	}

	public void setGradeManager(GradeManagerImpl gradeManagerImpl) {
		this.gradeManager = gradeManagerImpl;
	}

	public Grade getGrade() {
		return grade;
	}

	public void setGrade(Grade grade) {
		this.grade = grade;
	}
	
	
}
