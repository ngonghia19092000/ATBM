package com.tnt.laptrinhjavaweb.paging;

public class Sorter {

	private String sortName;
	private String sortby;

	public Sorter(String sortName, String sortby) {
		this.sortName = sortName;
		this.sortby = sortby;
	}

	public String getSortName() {
		return sortName;
	}

	public void setSortName(String sortName) {
		this.sortName = sortName;
	}

	public String getSortBy() {
		return sortby;
	}

	public void setSortBy(String sortby) {
		this.sortby = sortby;
	}

}
