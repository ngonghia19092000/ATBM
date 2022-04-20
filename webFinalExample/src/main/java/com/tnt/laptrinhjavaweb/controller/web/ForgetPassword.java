package com.tnt.laptrinhjavaweb.controller.web;

import com.tnt.laptrinhjavaweb.Constant.SystemConstant;
import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.service.ICategoryService;
import com.tnt.laptrinhjavaweb.service.IInformationService;
import com.tnt.laptrinhjavaweb.utils.SendMail;
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

@WebServlet(urlPatterns = {"/forget-pass"})
public class ForgetPassword extends HttpServlet {
    @Inject
    private ICategoryService categoryService;
    @Inject
    private IInformationService informationService;
    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email").trim();
        UserModel  model = new UserModel();
        SendMail sm = new SendMail();
        String code = sm.getRandom();
        model.setCode(code);
        model.setEmail(email);
        boolean check = sm.sendMail(model);
        if(check){
            SessionUtil.getInstance().putValue(request, "authcode", model);
            response.sendRedirect(request.getContextPath() + ("/change-pass"));
        }else{
            response.sendRedirect(request.getContextPath() + ("/forget-pass&message=error_send&alert=danger"));
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
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/forgot-pass2.jsp");
        rd.forward(request,response);
    }
}
 