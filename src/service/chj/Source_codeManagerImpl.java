package service.chj;

import java.io.Serializable;

import org.springframework.stereotype.Service;

import daoImpl.chj.Source_codeDaoImpl;
import pojo.Source_code;

@Service
public class Source_codeManagerImpl implements Source_codeManager{
	private Source_codeDaoImpl source_codeDaoImpl;
	
	public Source_codeManagerImpl(){
		System.out.println("Source_codeManagerImpl in");
	}
	
	@Override
	public Serializable submit(Source_code Source_code) {
		return source_codeDaoImpl.save(Source_code);
	}
	
	public Source_codeDaoImpl getSource_codeDaoImpl() {
		return source_codeDaoImpl;
	}
	public void setSource_codeDaoImpl(Source_codeDaoImpl source_codeDaoImpl) {
		this.source_codeDaoImpl = source_codeDaoImpl;
	}

	
	
	
}
