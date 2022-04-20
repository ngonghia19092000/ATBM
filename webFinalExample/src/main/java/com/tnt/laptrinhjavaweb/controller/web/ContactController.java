package com.tnt.laptrinhjavaweb.controller.web;

import com.tnt.laptrinhjavaweb.Constant.SystemConstant;
import com.tnt.laptrinhjavaweb.service.ICategoryService;
import com.tnt.laptrinhjavaweb.service.IInformationService;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/lien-he")
public class ContactController extends HttpServlet {
    @Inject
    private ICategoryService categoryService;
    @Inject
    private IInformationService informationService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute(SystemConstant.INFO, informationService.find());
        request.setAttribute(SystemConstant.CATEGORIES, categoryService.findAll() );
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/contact.jsp");
        rd.forward(request, response);
    }
}
 