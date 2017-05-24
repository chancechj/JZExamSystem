package service.chj;

import java.util.List;

import org.springframework.stereotype.Service;

import daoImpl.chj.ProblemDaoImpl;
import pojo.Problem;

/** 
* @author chj E-mail: 865477704@qq.com
* @version ����ʱ�䣺2017��5��15�� ����8:32:01 
* ��˵�� 
*/
@Service
public class ProblemManagerImpl implements ProblemManager{

	private ProblemDaoImpl problemDaoImpl;
	
	

	public void setProblemDaoImpl(ProblemDaoImpl problemDaoImpl) {
		this.problemDaoImpl = problemDaoImpl;
	}



	@Override
	public List<Problem> getProblems(int page) {
		return problemDaoImpl.findByPager(page, 10).getDatas();
	}
	
	public ProblemManagerImpl() {
		System.out.println("ProblemManagerImpl IN");
	}

	
	
	public ProblemDaoImpl getProblemDaoImpl() {
		return problemDaoImpl;
	}
	

}
 