package com.tnt.laptrinhjavaweb.paging;

public interface Pageble {
	Integer getPage();
	Integer getOffset();
	Integer getLimit();
	Sorter getSorter();
	
	

}
