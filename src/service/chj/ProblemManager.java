package service.chj;

import java.util.List;

import pojo.Problem;

/** 
* @author chj E-mail: 865477704@qq.com
* @version ����ʱ�䣺2017��5��15�� ����8:29:18 
* ��˵�� 
*/

public interface ProblemManager {
	//��ҳ�����Ŀ
	public List<Problem> getProblems(int page);
}
 