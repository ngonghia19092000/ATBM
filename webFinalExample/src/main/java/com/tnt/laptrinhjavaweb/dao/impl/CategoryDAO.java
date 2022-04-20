package com.tnt.laptrinhjavaweb.dao.impl;


import com.tnt.laptrinhjavaweb.RowMapper.CategoryMapper;
import com.tnt.laptrinhjavaweb.dao.ICategoryDAO;
import com.tnt.laptrinhjavaweb.model.CategoryModel;
import com.tnt.laptrinhjavaweb.paging.Pageble;

import java.util.List;

public class CategoryDAO extends AbstractDAO<CategoryModel> implements ICategoryDAO {
	
	@Override
	public List<CategoryModel> findAll() {
		
		String sql="select * from category";
		return query(sql, new CategoryMapper());
				
	}

	@Override
	public CategoryModel findOne(long id) {
		String sql="SELECT * FROM category where id = ?";
		List<CategoryModel> category = query(sql, new CategoryMapper(), id);
		return category.isEmpty() ? null : category.get(0);
	}

	@Override
	public CategoryModel findOneByCode(String code) {
		String sql="SELECT * FROM category where code= ?";
		List<CategoryModel> category = query(sql, new CategoryMapper(), code);
		return category.isEmpty() ? null : category.get(0);
	}

	@Override
	public List<CategoryModel> findAllAndSort(Pageble pageble) {
		StringBuilder sql = new StringBuilder("select * from category");
		if(pageble.getSorter() != null) {
			sql.append(" order by "+pageble.getSorter().getSortName()+" "+pageble.getSorter().getSortBy());
		}
		if(pageble.getOffset() != null && pageble.getLimit() != null) {
			sql.append(" LIMIT "+pageble.getOffset()+","+pageble.getLimit());
		}
		return query(sql.toString(), new CategoryMapper());
	}

	@Override
	public int getTotalItem() {
		String sql ="select count(*) from category";
		return count(sql);
	}

	@Override
	public CategoryModel findOneByAdmin(Long id) {
		String sql="SELECT * FROM category where id = ?";
		List<CategoryModel> category = query(sql, new CategoryMapper(), id);
		return category.isEmpty() ? null : category.get(0);
	}

	@Override
	public List<CategoryModel> findAllByAdmin() {
		String sql = "select * from category";
		return query(sql, new CategoryMapper());
	}

	@Override
	public void updateByAdmin(CategoryModel model) {
		StringBuilder sql = new StringBuilder("update category set code = ?, name = ?, gender = ?, modifieddate = ?, modifiedby = ?");
		sql.append(" where category.id = ?");

		update(sql.toString(), model.getCode(), model.getName(), model.getGenderid(), model.getModifiedDate(), model.getModifiedBy(), model.getId());

	}

	@Override
	public Long addByAdmin(CategoryModel model) {
		StringBuilder sql = new StringBuilder("insert into category ( name, code, gender, createddate, createdby)");
		sql.append(" values(?, ?, ?, ?, ?)");
		return insert(sql.toString(), model.getName(),model.getCode(), model.getGenderid(), model.getCreatedDate(), model.getCreatedBy());
	}

	@Override
	public void deleteByAdmin(long id) {
		String sql = "DELETE FROM category WHERE id = ?";
		update(sql, id);
	}

//	@Override
//	public Long save(CategoryModel categoryModel) {
//		StringBuilder sql = new StringBuilder("insert into category(code,name,createddate,createdby) values(?, ?, ?, ?)");
//		return insert(sql.toString(), categoryModel.getCode(), categoryModel.getName(),
//				categoryModel.getCreatedDate(), categoryModel.getCreatedBy());
//	}
//
//	@Override
//	public void update(CategoryModel updateCategory) {
//		String sql = "update category set name = ?, code = ?, createddate = ?, modifieddate = ?, createdby = ?, modifiedby = ? where id = ?";
//		update(sql, updateCategory.getName(), updateCategory.getCode(),updateCategory.getCreatedDate(), updateCategory.getModifiedDate(),
//				updateCategory.getCreatedBy(), updateCategory.getModifiedBy(), updateCategory.getId());
//	}
//
//	@Override
//	public void delete(long id) {
//		String sql = "delete from category where id= ?";
//		update(sql, id);
//
//	}
}