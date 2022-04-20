package com.tnt.laptrinhjavaweb.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tnt.laptrinhjavaweb.model.CategoryModel;
import com.tnt.laptrinhjavaweb.model.ProductModel;
import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.service.ICategoryService;
import com.tnt.laptrinhjavaweb.utils.SessionUtil;
import com.tnt.laptrinhjavaweb.utils.httpUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CategoryAPI", urlPatterns = "/api-admin-category")
public class CategoryAPI extends HttpServlet {
 @Inject
 private ICategoryService iCategoryService;

     @Override
        protected void doPost (HttpServletRequest request, HttpServletResponse response) throws
        ServletException, IOException {
//
//        Part part = request.getPart("thumnail");
//        String realPath = request.getServletContext().getRealPath("/data/images/product");
//        String filName = Path.of(part.getSubmittedFileName()).getFileName().toString();
//        if(!Files.exists(Path.of(realPath))){
//            Files.createDirectories(Path.of(realPath));
//        }
//        part.write(realPath+"/"+filName);


            ObjectMapper mapper = new ObjectMapper();
            request.setCharacterEncoding("UTF-8");
            response.setContentType("application/json");
            CategoryModel categoryModel = httpUtil.of(request.getReader()).toModel(CategoryModel.class);
//        productModel.setThumnail(""+realPath+"/"+filName);
         categoryModel.setCreatedBy(((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUserName());
         categoryModel = iCategoryService.addByAdmin(categoryModel);
            mapper.writeValue(response.getOutputStream(), categoryModel);
        }


        @Override
        protected void doPut (HttpServletRequest request, HttpServletResponse response) throws
        ServletException, IOException {
            ObjectMapper mapper = new ObjectMapper();
            request.setCharacterEncoding("UTF-8");
            response.setContentType("application/json");
            CategoryModel categoryModel = httpUtil.of(request.getReader()).toModel(CategoryModel.class);
            categoryModel.setModifiedBy(((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUserName());
            categoryModel = iCategoryService.updateByAdmin(categoryModel);
            mapper.writeValue(response.getOutputStream(), categoryModel);
        }
    @Override
        protected void doDelete (HttpServletRequest request, HttpServletResponse response) throws
        ServletException, IOException {
            ObjectMapper mapper = new ObjectMapper();
            request.setCharacterEncoding("UTF-8");
            response.setContentType("application/json");
            CategoryModel categoryModel = httpUtil.of(request.getReader()).toModel(CategoryModel.class);
            iCategoryService.deleteByAdmin(categoryModel.getIds());
            mapper.writeValue(response.getOutputStream(), "{}"); // pháº£n há»“i láº¡i cho clent má»™t chuá»—i json
        }

}
