package com.tnt.laptrinhjavaweb.controller.admin;

import com.tnt.laptrinhjavaweb.Constant.SystemConstant;
import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.service.ICategoryService;
import com.tnt.laptrinhjavaweb.service.IRoleService;
import com.tnt.laptrinhjavaweb.service.IUserService;
import com.tnt.laptrinhjavaweb.utils.FormUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserAdminController", urlPatterns = "/admin-user")

public class UserController extends HttpServlet {
    @Inject
    IUserService iUserService;
@Inject
    IRoleService iRoleService;
    private static final long serialVersionUID = 2627812500482784082L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserModel userModel = FormUtil.toModel(UserModel.class, request);
        String view = "";
        if (userModel.getType().equalsIgnoreCase(SystemConstant.LIST)) {
                userModel.setListResult(iUserService.findAllUser());
            view = "/views/admin/user/list.jsp";
        } else if (userModel.getType().equalsIgnoreCase(SystemConstant.EDIT)) {
            if (userModel.getId() != null) {
                userModel = iUserService.findOne(userModel.getId());
            } else {

            }
request.setAttribute("ROLE", iRoleService.findAll());
            view = "/views/admin/user/edit.jsp";

        }
        request.setAttribute("USER", userModel);
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);

    }
}
