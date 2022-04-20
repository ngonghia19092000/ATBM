package com.tnt.laptrinhjavaweb.controller.web;

import com.tnt.laptrinhjavaweb.Constant.SystemConstant;
import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.service.*;
import com.tnt.laptrinhjavaweb.utils.FormUtil;
import com.tnt.laptrinhjavaweb.utils.SendMail;
import com.tnt.laptrinhjavaweb.utils.SessionUtil;
import com.tnt.laptrinhjavaweb.utils.VerifyRecaptcha;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ResourceBundle;

@WebServlet(urlPatterns = {"/trang-chu", "/dang-nhap", "/dang-ky", "/thoat"})
public class HomeControler extends HttpServlet {

    @Inject
    private IUserService userService;


    @Inject
    private ICategoryService categoryService;


    @Inject
    private IProductService productService;

    @Inject
    private IManfacturerService manfacturerService;

    @Inject
    private IInformationService informationService;

    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action != null && action.equals("login")) {
            UserModel model = FormUtil.toModel(UserModel.class, request);
            String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
            boolean verify = VerifyRecaptcha.verify(gRecaptchaResponse);

            model = userService.findByUserNameAndPasswordAndStatus(model.getUserName(), model.getPassword(), 1);
            if (model != null && verify) {
                SessionUtil.getInstance().putValue(request, "USERMODEL", model);
                if (model.getRoleModel().getCode().equals("USER")) {
                    response.sendRedirect(request.getContextPath() + ("/trang-chu"));
                } else if (model.getRoleModel().getCode().equals("ADMIN")) {
                    response.sendRedirect(request.getContextPath() + ("/admin-home"));
                }
            } else {
                if(verify){
                    response.sendRedirect(request.getContextPath() + ("/dang-nhap?action=login&message=username_password_invalid&alert=danger"));
                }else{
                    response.sendRedirect(request.getContextPath() + ("/dang-nhap?action=login&message=error_recapcha&alert=danger"));
                }
            }
        } else if (action != null && action.equals("register")) {
            UserModel model = FormUtil.toModel(UserModel.class, request);
            String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
            boolean verify = VerifyRecaptcha.verify(gRecaptchaResponse);

            if(verify){
                SendMail sm = new SendMail();
                String code = sm.getRandom();
                model.setCode(code);
                boolean check = sm.sendMail(model);
                if(check){
                    SessionUtil.getInstance().putValue(request, "authcode", model);
                    response.sendRedirect(request.getContextPath() + ("/verify"));
                }else{
                    response.sendRedirect(request.getContextPath() + ("/dang-ky?action=register&message=error_send&alert=danger"));
                }
            }else{
                response.sendRedirect(request.getContextPath() + ("/dang-ky?action=register&message=error_recapcha&alert=danger"));

            }

        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        request.setCharacterEncoding("UTF-8");


        if (action != null && action.equals("login")) {
            String message = request.getParameter("message");
            String alert = request.getParameter("alert");
            if (message != null && alert != null) {
                request.setAttribute("message", resourceBundle.getString(message));
                request.setAttribute("alert", alert);
            }
            request.setAttribute(SystemConstant.INFO, informationService.find());
            request.setAttribute(SystemConstant.CATEGORIES, categoryService.findAll() );
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/login.jsp");
            rd.forward(request, response);
        } else if (action != null && action.equals("logout")) {
            SessionUtil.getInstance().removeValue(request, "USERMODEL");
            response.sendRedirect(request.getContextPath() + "/trang-chu");
        } else if (action != null && action.equals("register")) {
            String message = request.getParameter("message");
            String alert = request.getParameter("alert");
            if (message != null && alert != null) {
                request.setAttribute("message", resourceBundle.getString(message));
                request.setAttribute("alert", alert);
            }
            request.setAttribute(SystemConstant.CATEGORIES, categoryService.findAll() );
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/register.jsp");
            rd.forward(request, response);
        }else {
            request.setAttribute(SystemConstant.INFO, informationService.find());
            request.setAttribute(SystemConstant.BESTSALE, productService.findOneBestSale());
            request.setAttribute(SystemConstant.MANUFACTURER, manfacturerService.findAll());
            request.setAttribute(SystemConstant.SALE, productService.findSale(8));
            request.setAttribute(SystemConstant.POPULAR, productService.findPopular(8));
            request.setAttribute(SystemConstant.CATEGORIES, categoryService.findAll() );
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
            rd.forward(request, response);

        }

    }
}
 