package com.tnt.laptrinhjavaweb.controller.admin;

import com.tnt.laptrinhjavaweb.Constant.SystemConstant;
import com.tnt.laptrinhjavaweb.model.CategoryModel;
import com.tnt.laptrinhjavaweb.model.CouponModel;
import com.tnt.laptrinhjavaweb.service.ICouponService;
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

@WebServlet(name = "CouponController", urlPatterns = "/admin-coupon")
public class CouponController extends HttpServlet {
    @Inject
    ICouponService iCouponService;
    @Inject
    IProductService iProductService;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CouponModel couponModel= FormUtil.toModel(CouponModel.class, request);
        String view = "";
        if (couponModel.getType().equalsIgnoreCase(SystemConstant.LIST)) {
            couponModel.setListResult(iCouponService.findAllByAdmin());
            view = "/views/admin/coupon/list.jsp";
        } else if (couponModel.getType().equalsIgnoreCase(SystemConstant.EDIT)) {
            if (couponModel.getId() != null) {
                couponModel = iCouponService.findOneByAdmin(couponModel.getId());
                } else {

                }

            view = "/views/admin/coupon/edit.jsp";

        }
        request.setAttribute("PRODUCT",iProductService.findAllByAdmin());
        request.setAttribute("COUPON", couponModel);
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);

    }
}
