package com.tnt.laptrinhjavaweb.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;

import com.tnt.laptrinhjavaweb.model.CouponModel;

import com.tnt.laptrinhjavaweb.service.ICouponService;

import com.tnt.laptrinhjavaweb.utils.httpUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CouponAPI", urlPatterns = "/api-admin-coupon")
public class CouponAPI extends HttpServlet {
    @Inject
    ICouponService iCouponService;
    private static final long serialVersionUID = -915988021506484384L;
    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {

        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        CouponModel couponModel = httpUtil.of(request.getReader()).toModel(CouponModel.class);
//        productModel.setThumnail(""+realPath+"/"+filName);
        couponModel = iCouponService.addByAdmin(couponModel);
        mapper.writeValue(response.getOutputStream(), couponModel);
    }


    @Override
    protected void doPut (HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        CouponModel couponModel = httpUtil.of(request.getReader()).toModel(CouponModel.class);

        couponModel = iCouponService.updateByAdmin(couponModel);
        mapper.writeValue(response.getOutputStream(), couponModel);
    }

    protected void doDelete (HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        CouponModel couponModel = httpUtil.of(request.getReader()).toModel(CouponModel.class);
        iCouponService.deleteByAdmin(couponModel.getIds());
        mapper.writeValue(response.getOutputStream(), "{}");
    }
}
