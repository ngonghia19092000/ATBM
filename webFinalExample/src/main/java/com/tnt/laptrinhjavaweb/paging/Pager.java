package com.tnt.laptrinhjavaweb.paging;

public class Pager implements Pageble {

	private Integer maxPageItems;
	private Integer page;
	private Sorter sorter;

	public Pager(Integer maxPageItems, Integer page, Sorter sorter ) {
		this.maxPageItems = maxPageItems;
		this.page = page;
		this.sorter = sorter;
	}

	@Override
	public Integer getPage() {
		return page;
	}

	@Override
	public Integer getOffset() {
		if (this.page != null && this.maxPageItems != null) {
			return (this.page - 1) * this.maxPageItems;
		}
		return null;

	}

	@Override
	public Integer getLimit() {
		return maxPageItems;
	}

	@Override
	public Sorter getSorter() {
		return sorter;
	}

}
