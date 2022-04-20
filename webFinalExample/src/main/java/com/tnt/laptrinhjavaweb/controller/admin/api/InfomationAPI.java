package com.tnt.laptrinhjavaweb.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tnt.laptrinhjavaweb.model.InfomationModel;
import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.service.IInformationService;
import com.tnt.laptrinhjavaweb.utils.SessionUtil;
import com.tnt.laptrinhjavaweb.utils.httpUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "InfomationAPI" , urlPatterns = "/api-admin-information")
public class InfomationAPI extends HttpServlet {
    @Inject
    IInformationService iInformationService;
    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        InfomationModel infomationModel = httpUtil.of(request.getReader()).toModel(InfomationModel.class);
        infomationModel.setModifiedBy(((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUserName());
        infomationModel = iInformationService.update(infomationModel);
        mapper.writeValue(response.getOutputStream(), infomationModel);
    }
}
