package service.chj;

import java.io.Serializable;

import pojo.Solution;

public interface SolutionManager {
	
	//�ύ��������
	public Serializable submit(Solution solution);
	//��ý��
	public Integer haveResult(Integer sid);
	
	
}
