package com.project.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class MainEntity
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String writterName;
	private String category;
	  @Column(name = "content", columnDefinition = "LONGTEXT")
	private String content;
	
	
	
	public MainEntity(String writterName, String category, String content) {
		super();
		this.writterName = writterName;
		this.category = category;
		this.content = content;
	}
	public MainEntity(int id, String writterName, String category, String content) {
		super();
		this.id = id;
		this.writterName = writterName;
		this.category = category;
		this.content = content;
	}
	public MainEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getWritterName() {
		return writterName;
	}
	public void setWritterName(String writterName) {
		this.writterName = writterName;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "MainEntity [id=" + id + ", writterName=" + writterName + ", category=" + category + ", content="
				+ content + "]";
	}
	
}
