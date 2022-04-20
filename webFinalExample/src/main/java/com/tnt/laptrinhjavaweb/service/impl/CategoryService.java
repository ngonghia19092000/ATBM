package com.tnt.laptrinhjavaweb.service.impl;


import com.tnt.laptrinhjavaweb.dao.ICategoryDAO;
import com.tnt.laptrinhjavaweb.model.CategoryModel;
import com.tnt.laptrinhjavaweb.model.ProductModel;
import com.tnt.laptrinhjavaweb.paging.Pageble;
import com.tnt.laptrinhjavaweb.service.ICategoryService;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

public class CategoryService implements ICategoryService {
	
	@Inject
	private ICategoryDAO CategoryDao; //nhớ add servlet.weld ở file pom.xml và tao file beans.xml ở WEB-INF
	
	@Override
	public List<CategoryModel> findAll() {
		return CategoryDao.findAll();
	}

	@Override
	public List<CategoryModel> findAllAndSort(Pageble pageble) {
		return CategoryDao.findAllAndSort(pageble);
	}

	@Override
	public int getTotalItem() {
		return CategoryDao.getTotalItem();
	}

	@Override
	public CategoryModel findOne(long id) {
		return CategoryDao.findOne(id);
	}

	@Override
	public CategoryModel findOneByCode(String code) {
		return CategoryDao.findOneByCode(code);
	}




	@Override
	public List<CategoryModel> findAllByAdmin() {
		return CategoryDao.findAllByAdmin();
	}

	@Override
	public CategoryModel findOneByAdmin(long id) {
		return CategoryDao.findOneByAdmin(id);
	}

	@Override
	public CategoryModel updateByAdmin(CategoryModel model){
		CategoryModel olP = CategoryDao.findOneByAdmin(model.getId());
		model.setModifiedBy("ADMIN");
		model.setModifiedDate(new Timestamp(System.currentTimeMillis()));
		CategoryDao.updateByAdmin(model);
        return CategoryDao.findOneByAdmin(model.getId());
	}

	@Override
	public CategoryModel addByAdmin(CategoryModel model) {
		CategoryModel model1 = null;
		Long cateId = 0L;
		model.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		model.setCreatedBy("ADMIN");
		cateId = CategoryDao.addByAdmin(model);
		model1 = CategoryDao.findOneByAdmin(cateId);
		return model1;
	}

	@Override
	public void deleteByAdmin(Long[] ids) {
		for (Long id : ids) {
			//xoa san pham truoc roi moi xoa duoc the loai(category_id)
			CategoryDao.deleteByAdmin(id);
		}
	}

//	@Override
//	public CategoryModel save(CategoryModel categoryModel) {
//		categoryModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
//		Long newId = CategoryDao.save(categoryModel);
//		return CategoryDao.findOne(newId);
//	}
//
//	@Override
//	public CategoryModel update(CategoryModel updateCategory) {
//		CategoryModel olNew = CategoryDao.findOne(updateCategory.getId());
//		updateCategory.setCreatedDate(olNew.getCreatedDate());
//		updateCategory.setCreatedBy(olNew.getCreatedBy());
//		updateCategory.setModifiedDate(new Timestamp(System.currentTimeMillis()));
//		CategoryDao.update(updateCategory);
//		return CategoryDao.findOne(updateCategory.getId());
//	}


}
