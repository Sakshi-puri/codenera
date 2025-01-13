package com.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.entity.MainEntity;

public interface RepositoryDao extends JpaRepository<MainEntity, Integer>
{
	List<MainEntity> findByCategory(String category);

	//List<MainEntity> findByWritterNameIgnoreCase(String writterName);
	

	
}
