package com.example.demo.model;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size; 
public class CategoryForm {
	
	private Integer id;
	
	@NotBlank(message="Нэрээ л биччилдээ")
	@Size(min=2, max=30)
	private String ner;
	private String tailbar;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNer() {
		return ner;
	}
	public void setNer(String ner) {
		this.ner = ner;
	}
	public String getTailbar() {
		return tailbar;
	}
	public void setTailbar(String tailbar) {
		this.tailbar = tailbar;
	}
	
	
	
	

}
