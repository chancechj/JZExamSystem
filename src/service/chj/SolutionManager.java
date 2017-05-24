package service.chj;

import java.io.Serializable;

import pojo.Solution;

public interface SolutionManager {
	
	//提交代码请求
	public Serializable submit(Solution solution);
	//获得结果
	public Integer haveResult(Integer sid);
	
	
}
