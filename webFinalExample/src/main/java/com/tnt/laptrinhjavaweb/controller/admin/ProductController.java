package com.tnt.laptrinhjavaweb.controller.admin;

import com.tnt.laptrinhjavaweb.Constant.SystemConstant;
import com.tnt.laptrinhjavaweb.dao.IGenderDAO;
import com.tnt.laptrinhjavaweb.model.ProductModel;
import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.service.*;
import com.tnt.laptrinhjavaweb.utils.FormUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

@MultipartConfig
@WebServlet(name = "ProductContoller", urlPatterns = "/admin-product")
public class ProductController extends HttpServlet {
    @Inject
  private   IProductService iProductService;
    @Inject
  private   IColorService iColorService;
@Inject
  private   ICategoryService iCategoryService;
@Inject
 private    IManfacturerService iManfacturerService;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

doGet(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductModel productModel = FormUtil.toModel(ProductModel.class, request);
        String view = "";
        if (productModel.getType().equalsIgnoreCase(SystemConstant.LIST)) {
            productModel.setListResult(iProductService.findAllByAdmin());
            view = "/views/admin/product/list.jsp";
        } else if (productModel.getType().equalsIgnoreCase(SystemConstant.EDIT)) {
            if (productModel.getId() != null) {
                productModel = (ProductModel) iProductService.findOneByAdmin(productModel.getId());
            } else {

            }

            request.setAttribute("CATE",iCategoryService.findAllByAdmin());
            request.setAttribute("MANUFACTURER",iManfacturerService.findAllByAdmin());

            view = "/views/admin/product/edit.jsp";

        }
        request.setAttribute("COLOR",iColorService.findAll());
        request.setAttribute("PRODUCT", productModel);
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);

    }
}
