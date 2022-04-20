package com.tnt.laptrinhjavaweb.controller.web;

import com.tnt.laptrinhjavaweb.Constant.SystemConstant;
import com.tnt.laptrinhjavaweb.service.ICategoryService;
import com.tnt.laptrinhjavaweb.service.IInformationService;
import com.tnt.laptrinhjavaweb.service.IUserService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/about")
public class AboutController extends HttpServlet {
    @Inject
    private ICategoryService categoryService;

    @Inject
    private IInformationService informationService;

    @Inject
    private IUserService userService;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute(SystemConstant.MODEL, userService.findAllByRole());
        request.setAttribute(SystemConstant.INFO, informationService.find());
        request.setAttribute(SystemConstant.CATEGORIES, categoryService.findAll() );
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/about.jsp");
        rd.forward(request, response);
    }
}
 