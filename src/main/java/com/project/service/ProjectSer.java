package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.entity.MainEntity;
import com.project.repository.RepositoryDao;

@Service
public class ProjectSer
{
	@Autowired
	RepositoryDao repositoryDao;

	public void add(String writterName, String category, String content) 
	{
		// TODO Auto-generated method stub
		MainEntity mainEntity = new MainEntity(writterName, category, content);
        repositoryDao.save(mainEntity);
		
	}
	
	 public List<MainEntity> getDataByCategory(String category) 
	 {
	        return repositoryDao.findByCategory(category);
	    }


	 
	 public MainEntity getDataById(int id) {
	        return repositoryDao.findById(id).orElse(null); 
	    }
	

}
