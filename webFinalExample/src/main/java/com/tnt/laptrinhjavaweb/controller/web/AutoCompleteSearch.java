package com.tnt.laptrinhjavaweb.controller.web;

import com.google.gson.Gson;
import com.tnt.laptrinhjavaweb.service.IProductService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/auto-search")
public class AutoCompleteSearch extends HttpServlet {
    @Inject
    private IProductService productService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        Gson gson = new Gson();
        String key = request.getParameter("q");
        List<String> result = productService.findNameAllByKeyWord(key);
        PrintWriter out = response.getWriter();
        out.print(gson.toJson(result));
        out.flush();
        out.close();
    }
}
 