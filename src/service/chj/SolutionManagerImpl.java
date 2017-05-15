package service.chj;

import java.io.Serializable;

import org.springframework.stereotype.Service;

import daoImpl.chj.SolutionDaoImpl;
import pojo.Solution;

@Service
public class SolutionManagerImpl implements SolutionManager {

	private SolutionDaoImpl solutionDaoImpl;
	
	public SolutionManagerImpl(){
	System.out.println("SubmitCodeManagerImpl IN");
	}
	public SolutionDaoImpl getSolutionDaoImpl() {
		return solutionDaoImpl;
	}

	public void setSolutionDaoImpl(SolutionDaoImpl solutionDaoImpl) {
		this.solutionDaoImpl = solutionDaoImpl;
	}



	@Override
	public Serializable submit(Solution solution) {
		return solutionDaoImpl.save(solution);
	}

	@Override
	public Integer haveResult(Integer sid) {
		return solutionDaoImpl.get(Solution.class, sid).getResult();
	}

}
