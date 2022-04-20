package com.tnt.laptrinhjavaweb.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tnt.laptrinhjavaweb.model.BannerModel;
import com.tnt.laptrinhjavaweb.model.CouponModel;
import com.tnt.laptrinhjavaweb.service.IBannerService;
import com.tnt.laptrinhjavaweb.utils.httpUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "BannerAPI", urlPatterns = "/api-admin-banner")
public class BannerAPI extends HttpServlet {
    @Inject
    private IBannerService iBannerService;
    private static final long serialVersionUID = -915988021506484384L;
    @Override
    protected void doPost (HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {

        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        BannerModel bannerModel = httpUtil.of(request.getReader()).toModel(BannerModel.class);
//        productModel.setThumnail(""+realPath+"/"+filName);
        bannerModel = iBannerService.addByAdmin(bannerModel);
        mapper.writeValue(response.getOutputStream(), bannerModel);
    }


    @Override
    protected void doPut (HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        BannerModel bannerModel = httpUtil.of(request.getReader()).toModel(BannerModel.class);

        bannerModel = iBannerService.updateByAdmin(bannerModel);
        mapper.writeValue(response.getOutputStream(), bannerModel);
    }

    protected void doDelete (HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        BannerModel bannerModel = httpUtil.of(request.getReader()).toModel(BannerModel.class);
        iBannerService.deleteByAdmin(bannerModel.getIds());
        mapper.writeValue(response.getOutputStream(), "{}");
    }
}
