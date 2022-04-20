package com.tnt.laptrinhjavaweb.controller.admin;

import com.tnt.laptrinhjavaweb.Constant.SystemConstant;
import com.tnt.laptrinhjavaweb.model.OrderModel;
import com.tnt.laptrinhjavaweb.model.UserModel;
import com.tnt.laptrinhjavaweb.service.IOrderService;
import com.tnt.laptrinhjavaweb.service.IProductService;
import com.tnt.laptrinhjavaweb.utils.FormUtil;
import com.tnt.laptrinhjavaweb.utils.SessionUtil;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@WebServlet(urlPatterns = "/admin-order")
public class OrderController extends HttpServlet {
    @Inject
    private IOrderService iOrderService;
@Inject
private IProductService iProductService;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        OrderModel orderModel = FormUtil.toModel(OrderModel.class, request);
        String view = "";
        if (orderModel.getType().equalsIgnoreCase(SystemConstant.LIST)) {

            orderModel.setListResult(iOrderService.findAllByAdmin());
            view = "/views/admin/order/list.jsp";
        } else if (orderModel.getType().equalsIgnoreCase(SystemConstant.EDIT)) {
            if (orderModel.getId() != null) {
                orderModel = iOrderService.findOneByAdmin(orderModel.getId());
            } else {

            }

            view = "/views/admin/order/edit.jsp";

        }
        request.setAttribute("PRODUCT",iProductService.findAll());
        request.setAttribute("ORDER", orderModel);
        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);

    }
}