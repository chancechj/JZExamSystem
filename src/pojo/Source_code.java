package pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author chj
 *
 */
public class Source_code {
	public Integer solution_id;
	public String source;
	public Integer getSolution_id() {
		return solution_id;
	}
	public void setSolution_id(Integer solution_id) {
		this.solution_id = solution_id;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
}
