package com.tnt.laptrinhjavaweb.controller.admin;

import com.tnt.laptrinhjavaweb.Constant.SystemConstant;
import com.tnt.laptrinhjavaweb.model.CategoryModel;
import com.tnt.laptrinhjavaweb.model.ProductModel;
import com.tnt.laptrinhjavaweb.service.ICategoryService;
import com.tnt.laptrinhjavaweb.service.IGenderService;
import com.tnt.laptrinhjavaweb.utils.FormUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CategoryController" , urlPatterns = "/admin-category")

public class CategoryController extends HttpServlet {

    @Inject
    ICategoryService iCategoryService;
    @Inject
    IGenderService iGenderService;


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryModel categoryModel = FormUtil.toModel(CategoryModel.class, request);
        String view = "";
        if (categoryModel.getType().equalsIgnoreCase(SystemConstant.LIST)) {
            categoryModel.setListResult(iCategoryService.findAll());
            view = "/views/admin/category/list.jsp";
        } else if (categoryModel.getType().equalsIgnoreCase(SystemConstant.EDIT)) {
            if (categoryModel.getId() != null) {
                categoryModel = iCategoryService.findOne(categoryModel.getId());
            } else {

            }
            request.setAttribute("GENDER",iGenderService.findAll());

            view = "/views/admin/category/edit.jsp";

        }
        request.setAttribute("CATEGORY", categoryModel);
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);

    }
}
