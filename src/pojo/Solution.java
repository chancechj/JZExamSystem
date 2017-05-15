package pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;

public class Solution {
	public Integer solution_id;
	public Integer problem_id;
	public String user_id;
	public Integer time;
	public Integer memory;
	public String in_date;
	public Integer result;
	public Integer language;
	public String ip;
	public Integer contest_id;
	public Integer valid;
	public Integer num;
	public Integer code_length;
	public Date judgetime;
	public Double pass_rate;
	public Integer int_error;
	public String judger;
	public Integer getSolution_id() {
		return solution_id;
	}
	public void setSolution_id(Integer solution_id) {
		this.solution_id = solution_id;
	}
	public Integer getProblem_id() {
		return problem_id;
	}
	public void setProblem_id(Integer problem_id) {
		this.problem_id = problem_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public Integer getTime() {
		return time;
	}
	public void setTime(Integer time) {
		this.time = time;
	}
	public Integer getMemory() {
		return memory;
	}
	public void setMemory(Integer memory) {
		this.memory = memory;
	}
	public String getIn_date() {
		return in_date;
	}
	public void setIn_date(String in_date) {
		this.in_date = in_date;
	}
	public Integer getResult() {
		return result;
	}
	public void setResult(Integer result) {
		this.result = result;
	}
	public Integer getLanguage() {
		return language;
	}
	public void setLanguage(Integer language) {
		this.language = language;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public Integer getContest_id() {
		return contest_id;
	}
	public void setContest_id(Integer contest_id) {
		this.contest_id = contest_id;
	}
	public Integer getValid() {
		return valid;
	}
	public void setValid(Integer valid) {
		this.valid = valid;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public Integer getCode_length() {
		return code_length;
	}
	public void setCode_length(Integer code_length) {
		this.code_length = code_length;
	}
	public Date getJudgetime() {
		return judgetime;
	}
	public void setJudgetime(Date judgetime) {
		this.judgetime = judgetime;
	}
	public Double getPass_rate() {
		return pass_rate;
	}
	public void setPass_rate(Double pass_rate) {
		this.pass_rate = pass_rate;
	}
	public Integer getInt_error() {
		return int_error;
	}
	public void setInt_error(Integer int_error) {
		this.int_error = int_error;
	}
	public String getJudger() {
		return judger;
	}
	public void setJudger(String judger) {
		this.judger = judger;
	}
	
}
