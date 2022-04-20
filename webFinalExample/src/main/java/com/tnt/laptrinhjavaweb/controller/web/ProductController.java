package com.tnt.laptrinhjavaweb.controller.web;

import com.tnt.laptrinhjavaweb.Constant.SystemConstant;
import com.tnt.laptrinhjavaweb.model.ProductModel;
import com.tnt.laptrinhjavaweb.paging.Pageble;
import com.tnt.laptrinhjavaweb.paging.Pager;
import com.tnt.laptrinhjavaweb.paging.Sorter;
import com.tnt.laptrinhjavaweb.service.ICategoryService;
import com.tnt.laptrinhjavaweb.service.IInformationService;
import com.tnt.laptrinhjavaweb.service.IManfacturerService;
import com.tnt.laptrinhjavaweb.service.IProductService;
import com.tnt.laptrinhjavaweb.utils.FormUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ResourceBundle;

@WebServlet(urlPatterns = "/all")
public class ProductController extends HttpServlet {

    @Inject
    private IProductService productService;
    private Pageble pageble;

    @Inject
    private ICategoryService categoryService;

    @Inject
    private IManfacturerService manfacturerService;

    @Inject
     private IInformationService informationService;

    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductModel productModel = FormUtil.toModel(ProductModel.class, request);
        String view = "";
        if (productModel.getType().equals(SystemConstant.LIST)) {
            pageble = new Pager(productModel.getMaxPageItems(), productModel.getPage(),
                    new Sorter(productModel.getSortName(), productModel.getSortBy()));
            productModel.setListResult(productService.findAll(pageble));
            productModel.setTotalItems(productService.getTotalItem());
            productModel.setTotalPages((int) Math.ceil((double) productModel.getTotalItems() / productModel.getMaxPageItems()));
            String alert = request.getParameter("alert");
            String message = request.getParameter("message");
            if (message != null && alert != null) {
                request.setAttribute("message", resourceBundle.getString(message));
                request.setAttribute("alert", alert);
            }
            request.setAttribute(SystemConstant.INFO, informationService.find());
            request.setAttribute(SystemConstant.MANUFACTURER, manfacturerService.findAll());
            request.setAttribute(SystemConstant.POPULAR, productService.findPopular(3) );
            request.setAttribute(SystemConstant.CATEGORIES, categoryService.findAll() );
            request.setAttribute(SystemConstant.MODEL, productModel);
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/shop-left-slidebar.jsp");
            rd.forward(request, response);
        } else if(productModel.getType().equals(SystemConstant.SEARCH)) {
            String alert = request.getParameter("alert");
            String message = request.getParameter("message");
            if (message != null && alert != null) {
                request.setAttribute(SystemConstant.CATEGORIES, categoryService.findAll() );
                request.setAttribute("message", resourceBundle.getString(message));
                request.setAttribute("alert", alert);
                RequestDispatcher rd = request.getRequestDispatcher("/views/web/shop-left-slidebar.jsp");
                rd.forward(request, response);
            }else {
                pageble = new Pager(productModel.getMaxPageItems(), productModel.getPage(),
                        new Sorter(productModel.getSortName(), productModel.getSortBy()));
                if(productModel.getSortName().equalsIgnoreCase("manfacturerid")){
                    productModel.setListResult(productService.searchByManfacturer(pageble,productModel.getSearch()));
                    productModel.setTotalItems(productService.getTotalItemByManfacturer(productModel.getSearch()));

                }else{
                    productModel.setListResult(productService.searchByName(pageble, productModel.getSearch()));
                    productModel.setTotalItems(productService.getTotalItemByName(productModel.getSearch()));
                }
                productModel.setTotalPages((int) Math.ceil((double) productModel.getTotalItems() / productModel.getMaxPageItems()));
                if(productModel.getListResult().size() == 0){
                    response.sendRedirect(request.getContextPath() + ("/all?type=search&message=not_found&alert=info"));

                }else {

                    request.setAttribute(SystemConstant.MANUFACTURER, manfacturerService.findAll());
                    request.setAttribute(SystemConstant.INFO, informationService.find());
                    request.setAttribute(SystemConstant.CATEGORIES, categoryService.findAll() );
                    request.setAttribute(SystemConstant.POPULAR, productService.findPopular(3) );
                    request.setAttribute(SystemConstant.MODEL, productModel);
                    RequestDispatcher rd = request.getRequestDispatcher("/views/web/shop-left-slidebar.jsp");
                    rd.forward(request, response);
                }
            }

        }


    }
}
 