package com.tnt.laptrinhjavaweb.controller.admin.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tnt.laptrinhjavaweb.Constant.SystemConstant;
import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.service.IUserService;
import com.tnt.laptrinhjavaweb.utils.SessionUtil;
import com.tnt.laptrinhjavaweb.utils.httpUtil;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpUtils;
import java.io.IOException;

@WebServlet(name = "UserAPI" ,urlPatterns ={ "/api-admin-user"})
public class UserAPI extends HttpServlet {
    @Inject
    IUserService iUserService;
    private static final long serialVersionUID = -915988021506484384L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        UserModel userModel = httpUtil.of(request.getReader()).toModel(UserModel.class);
        userModel.setCreatedBy(( (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUserName());
        userModel = iUserService.saveUserByAdmin(userModel);
        mapper.writeValue(response.getOutputStream(), userModel);
    }


    @Override
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        UserModel updateUser = httpUtil.of(request.getReader()).toModel(UserModel.class);
        updateUser.setModifiedBy(((UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL")).getUserName());
        updateUser = iUserService.updateByAdmin(updateUser);
        mapper.writeValue(response.getOutputStream(), updateUser);
    }
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        UserModel userModel = httpUtil.of(request.getReader()).toModel(UserModel.class);
        iUserService.delete(userModel.getIds());
        mapper.writeValue(response.getOutputStream(), "{}"); // pháº£n há»“i láº¡i cho clent má»™t chuá»—i json
    }

}

