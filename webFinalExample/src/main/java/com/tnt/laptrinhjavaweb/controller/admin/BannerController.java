package com.tnt.laptrinhjavaweb.controller.admin;

import com.tnt.laptrinhjavaweb.Constant.SystemConstant;
import com.tnt.laptrinhjavaweb.model.BannerModel;
import com.tnt.laptrinhjavaweb.model.ProductModel;
import com.tnt.laptrinhjavaweb.service.IBannerService;
import com.tnt.laptrinhjavaweb.utils.FormUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/admin-banner")
public class BannerController extends HttpServlet {
    @Inject
    private  IBannerService iBannerService;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BannerModel bannerModel = FormUtil.toModel(BannerModel.class, request);
        String view = "";
        if (bannerModel.getType().equalsIgnoreCase(SystemConstant.LIST)) {
            bannerModel.setListResult(iBannerService.findAllByAdmin());
            view = "/views/admin/banner/list.jsp";
        } else if (bannerModel.getType().equalsIgnoreCase(SystemConstant.EDIT)) {
            if (bannerModel.getId() != null) {
                bannerModel = iBannerService.findOneByAdmin(bannerModel.getId());
            } else {

            }


            view = "/views/admin/banner/edit.jsp";

        }

        request.setAttribute("BANNER", bannerModel);
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);

    }
}
