package com.tnt.laptrinhjavaweb.model;

public class CategoryModel extends AbstractModel<CategoryModel> {
	
	private String code;
	private String name;
	private String gender;

	public long getGenderid() {
		return genderid;
	}

	public void setGenderid(long genderid) {
		this.genderid = genderid;
	}

	private long genderid;

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCode() {
		return code;
	}
	
	public void setCode(String code) {
		this.code = code;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	
}
