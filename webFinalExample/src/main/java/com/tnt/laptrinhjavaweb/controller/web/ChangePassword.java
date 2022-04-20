package com.tnt.laptrinhjavaweb.controller.web;

import com.tnt.laptrinhjavaweb.Constant.SystemConstant;
import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.service.ICategoryService;
import com.tnt.laptrinhjavaweb.service.IInformationService;
import com.tnt.laptrinhjavaweb.service.IUserService;
import com.tnt.laptrinhjavaweb.utils.SessionUtil;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/change-pass"})
public class ChangePassword extends HttpServlet {
    @Inject
    private IUserService userService;

    @Inject
    private ICategoryService categoryService;

    @Inject
    private IInformationService informationService;
    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String code = request.getParameter("code");
        String password = request.getParameter("password");

        UserModel model= (UserModel) SessionUtil.getInstance().getValue(request,"authcode");
        model.setPassword(password);

        if(code.equals(model.getCode())){
            model =userService.changePassword(model);
            SessionUtil.getInstance().removeValue(request,"authcode");
            SessionUtil.getInstance().putValue(request, "USERMODEL", model);
            if (model.getId() != null) {
                response.sendRedirect(request.getContextPath() + ("/trang-chu"));
            } else {
                response.sendRedirect(request.getContextPath() + ("/forget-pass&message=error&alert=danger"));
            }
        }else{
            response.sendRedirect(request.getContextPath() + ("/forget-pass&message=error&alert=danger"));

        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String message = request.getParameter("message");
        String alert = request.getParameter("alert");
        if (message != null && alert != null) {
            request.setAttribute("message", resourceBundle.getString(message));
            request.setAttribute("alert", alert);
        }
        request.setAttribute(SystemConstant.INFO, informationService.find());
        request.setAttribute(SystemConstant.CATEGORIES, categoryService.findAll() );
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/forgot-pass1.jsp");
        rd.forward(request,response);
    }
}
 