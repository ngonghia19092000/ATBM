package com.tnt.laptrinhjavaweb.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tnt.laptrinhjavaweb.model.ProductModel;
import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.service.IProductService;
import com.tnt.laptrinhjavaweb.utils.SessionUtil;
import com.tnt.laptrinhjavaweb.utils.httpUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

@WebServlet(name = "ProductAPI",urlPatterns = "/api-admin-product")
public class ProductAPI extends HttpServlet {
    @Inject
    IProductService iProductService;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
        ProductModel productModel= httpUtil.of(request.getReader()).toModel(ProductModel.class);
        productModel.setCreatedBy(( (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUserName());
//        productModel.setThumnail(""+realPath+"/"+filName);
        productModel = iProductService.addByAdmin(productModel);
        mapper.writeValue(response.getOutputStream(), productModel);
    }


    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        ProductModel productModel = httpUtil.of(request.getReader()).toModel(ProductModel.class);
        productModel = iProductService.updateByAdmin(productModel);
        mapper.writeValue(response.getOutputStream(), productModel);
    }
    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        ProductModel productModel = httpUtil.of(request.getReader()).toModel(ProductModel.class);
        iProductService.deleteByAdmin(productModel.getIds());
        mapper.writeValue(response.getOutputStream(), "{}"); // pháº£n há»“i láº¡i cho clent má»™t chuá»—i json
    }
}
