package pojo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Exam implements java.io.Serializable{
	private int examId;
	private String examPaperId;
	private String examName;
	private String examTime;
	
	public String getNowTime(){
		SimpleDateFormat sdf = 
				new SimpleDateFormat("yyyy-MM-dd");
		String timestamp = null;
		timestamp = sdf.format(new Date());
		
		return timestamp;
	}
	public int getExamId() {
		return examId;
	}
	public void setExamId(int examId) {
		this.examId = examId;
	}
	public String getExamPaperId() {
		return examPaperId;
	}
	public void setExamPaperId(String examPaperId) {
		this.examPaperId = examPaperId;
	}
	public String getExamName() {
		return examName;
	}
	public void setExamName(String examName) {
		this.examName = examName;
	}
	public String getExamTime() {
		return examTime;
	}
	public void setExamTime(String examTime) {
		this.examTime = examTime;
	}
	@Override
	public boolean equals(Object o){
		if(o instanceof Exam){
			Exam pk = (Exam)o;
			if(this.examId == pk.getExamId() && this.examName.equals(pk.getExamName())){
				return true;
			}
		}
		return false;
	}
	
	@Override
	public int hashCode(){
		return this.examName.hashCode();
	}
}
