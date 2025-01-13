package com.project.controller;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.entity.MainEntity;
import com.project.repository.RepositoryDao;
import com.project.service.ProjectSer;



@Controller
public class Contoller
{
	@Autowired
	ProjectSer projectSer;
	
	@Autowired
	RepositoryDao repositoryDao;
	
	@GetMapping("/")
	public String home()
	{
		return "addContent";   
		
	}
	
	@RequestMapping("/add")
	public String add(@RequestParam("writterName") String writterName,
		          @RequestParam("category") String category,
			          @RequestParam("content") String content) 
{
		projectSer.add(writterName,category,content);
		return"show";
	}
	
	@RequestMapping("/fetch")
	public String fetch(Model data)
	{
		List<MainEntity> al=repositoryDao.findAll();
		Collections.reverse(al);
		
		
		System.out.println(al);
		data.addAttribute("data",al);
		
		return "display";
		
	}
	
	 @GetMapping("/data-by-category")
	    public String getDataByCategory(@RequestParam String category, Model model) 
	 {
	        List<MainEntity> dataList = projectSer.getDataByCategory(category);
	        
	        if (dataList.isEmpty()) {
	            model.addAttribute("message", "No data found for the category: " + category);
	        } else {
	            model.addAttribute("data", dataList);
	        }
	        
	        
	        return "category"; 
	    }
	 
	 
	 


	 
	 @GetMapping("/data-fetch-by-id")
	    public String fetchDataById(@RequestParam("id") int id, Model model) {
	        
	        MainEntity data = projectSer.getDataById(id); 

	        if (data != null) {
	            model.addAttribute("data", data);
	            return "title"; 
	        } else {
	           
	            return "display"; 
	        }
	    }

	 
	 
	
}
