package com.tnt.laptrinhjavaweb.controller.admin;

import com.tnt.laptrinhjavaweb.Constant.SystemConstant;
import com.tnt.laptrinhjavaweb.model.InfomationModel;
import com.tnt.laptrinhjavaweb.service.IInformationService;
import com.tnt.laptrinhjavaweb.utils.FormUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "InformationWeb", urlPatterns = "/admin-information")
public class InformationWeb extends HttpServlet {
    @Inject
    IInformationService iInformationService;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        InfomationModel infomationModel = FormUtil.toModel(InfomationModel.class, request);
        String view = "";
        if (infomationModel.getType().equalsIgnoreCase(SystemConstant.LIST)) {
            infomationModel.setListResult(iInformationService.find());
            view = "/views/admin/info/list.jsp";
        } else if (infomationModel.getType().equalsIgnoreCase(SystemConstant.EDIT)) {
            if (infomationModel.getId() != null) {
                infomationModel = iInformationService.findOne(infomationModel.getId());
            } else {

            }

            view = "/views/admin/info/edit.jsp";

        }
        request.setAttribute("INFO",  infomationModel);
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);
    }
}
