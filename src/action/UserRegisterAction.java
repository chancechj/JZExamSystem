package action;

import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.Action;

import pojo.Student;
import service.StudentManagerImpl;
@Controller
public class UserRegisterAction implements Action {
	private String user_name;
	private String user_password;
	private String user_email;
	private StudentManagerImpl userManager;

	public StudentManagerImpl getUserManager() {
		return userManager;
	}
	public void setStudentManager(StudentManagerImpl userManager) {
		this.userManager = userManager;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String execute() throws Exception {
		Student user = new Student();
		System.out.println(getUser_name());
		user.setStudentName(user_name);
		user.setPassword(user_password);

		if(userManager.register(user))
			return SUCCESS;
		else
			return ERROR;
	}

}
