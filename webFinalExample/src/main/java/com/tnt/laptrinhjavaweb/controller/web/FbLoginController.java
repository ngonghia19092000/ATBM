package com.tnt.laptrinhjavaweb.controller.web;

import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.service.IUserService;
import com.tnt.laptrinhjavaweb.utils.RestFB;
import com.tnt.laptrinhjavaweb.utils.SessionUtil;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/login-facebook")
public class FbLoginController extends HttpServlet {
    @Inject
    private IUserService userService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accessToken = (String) request.getParameter("access_token");
        RestFB fb = new RestFB();
        UserModel userModel = fb.getUserInfo(accessToken);
        UserModel check = userService.findByFacebookbId(userModel.getFacebookId());
        if(check == null){
            userModel = userService.saveFB(userModel);
            if(userModel != null){
                SessionUtil.getInstance().putValue(request, "USERMODEL", userModel);
                response.sendRedirect(request.getContextPath()+"/trang-chu");
            }else {
                response.sendRedirect(request.getContextPath()
                        + ("/dang-nhap?action=login&message=error&alert=danger"));
            }

        }else {
            SessionUtil.getInstance().putValue(request, "USERMODEL", check);
            response.sendRedirect(request.getContextPath()+"/trang-chu");

        }


    }
}
 