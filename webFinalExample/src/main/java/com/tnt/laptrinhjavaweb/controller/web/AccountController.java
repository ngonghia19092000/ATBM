package com.tnt.laptrinhjavaweb.controller.web;

import com.tnt.laptrinhjavaweb.Constant.SystemConstant;
import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.service.ICategoryService;
import com.tnt.laptrinhjavaweb.service.IInformationService;
import com.tnt.laptrinhjavaweb.service.IUserService;
import com.tnt.laptrinhjavaweb.utils.FormUtil;
import com.tnt.laptrinhjavaweb.utils.MD5Hashing;
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

@WebServlet(urlPatterns = "/my-account")
public class AccountController extends HttpServlet {
    @Inject
    private ICategoryService categoryService;

    @Inject
    private IInformationService informationService;

    @Inject
    private IUserService userService;

    ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        UserModel model = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
        if(action.equals("edit")){
            UserModel userModel = FormUtil.toModel(UserModel.class, request);
            if(userModel.getId().equals(model.getId())){
                userModel = userService.updateByUser(userModel);
                if(userModel == null){
                    response.sendRedirect(request.getContextPath() + ("/my-account?action=detail&id="+model.getId()+"&message=not_update&alert=danger"));
                }else{
                    response.sendRedirect(request.getContextPath() + ("/my-account?action=detail&id="+model.getId()+"&message=update&alert=info"));
                }
            }else {
                response.sendRedirect(request.getContextPath() + ("/my-account?action=detail&id="+model.getId()+"&message=timeout&alert=danger"));
            }
        }else if(action.equals("change")){
            UserModel userNew = FormUtil.toModel(UserModel.class, request);
            userNew.setId(model.getId());
            UserModel userOld = userService.findOne(model.getId());
            if(MD5Hashing.hash(userNew.getCurrentPassword()).equals(userOld.getPassword())){
                    userNew = userService.changePassById(userNew);
                    if(userNew != null){
                        response.sendRedirect(request.getContextPath() + ("/my-account?action=detail&id="+model.getId()+"&message=update&alert=info"));
                    }else{
                        response.sendRedirect(request.getContextPath() + ("/my-account?action=detail&id="+model.getId()+"&message=not_update&alert=danger"));

                    }
            }else{
                response.sendRedirect(request.getContextPath() + ("/my-account?action=detail&id="+model.getId()+"&message=password_invalid&alert=danger"));
            }

        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserModel model = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
        String action = request.getParameter("action");
        if(action.equalsIgnoreCase("detail")){
            String message = request.getParameter("message");
            String alert = request.getParameter("alert");
            if (message != null && alert != null) {
                request.setAttribute("message", resourceBundle.getString(message));
                request.setAttribute("alert", alert);
            }
            UserModel userModel = FormUtil.toModel(UserModel.class, request);
            request.setAttribute(SystemConstant.USER, userService.findOne(userModel.getId()) );
            request.setAttribute(SystemConstant.INFO, informationService.find());
            request.setAttribute(SystemConstant.CATEGORIES, categoryService.findAll() );
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/myaccount.jsp");
            rd.forward(request, response);
        }else if(action.equals("delete")){
            Long[] id = {model.getId()};
            userService.delete(id);
            model = userService.findOne(model.getId());
            if (model == null){
                SessionUtil.getInstance().removeValue(request, "USERMODEL");
                response.sendRedirect(request.getContextPath() + "/trang-chu");
            }else {
                response.sendRedirect(request.getContextPath() + ("/my-account?action=detail&id="+model.getId()+"&message=not_delete&alert=danger"));
            }
        }

    }
}
 