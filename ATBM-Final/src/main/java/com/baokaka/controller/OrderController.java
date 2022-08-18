package com.baokaka.controller;

import com.baokaka.model.Order;
import com.baokaka.model.User;
import com.baokaka.service.CartService;
import com.baokaka.service.OrderServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class OrderController {
    @Autowired
    CartService cartService;
    @Autowired
    OrderServices orderServices;
 @GetMapping({"xac-nhan-don-hang","/confirmation"})

    public  String createNewOrder(HttpServletRequest request,Model model){
     User user = (User) request.getSession().getAttribute("user");
     if (user == null) {
         return "/login";
     }
     if (cartService.getListChossePay().size() == 0) {
         return "/cart";
     }
     if(cartService.getAddressChosse().getId()==null){
         return "/checkout";
     }
     if (orderServices.orderCode==null){
         return "/tracking-now";
     }
     orderServices.createOder(orderServices.codeHash,user);

        model.addAttribute("oder",orderServices.showOrderDetails(orderServices.codeHash));
        model.addAttribute("listItem",orderServices.listItemOderByCode);
        model.addAttribute("address",orderServices.addressByOrderCode);
         return "/confirmation";

 }
 @PostMapping("cancelOder")
    public @ResponseBody String cancelOder(@RequestParam("oid") Long id,HttpServletRequest request){
     if (request.getSession().getAttribute("user") == null) {
         return "redirect:/login";
     }else {
         Order order = orderServices.findOrderById(id);
         order.setOrder_status(0);
         orderServices.updateOrder(order);
         return "redirect:/my-account";
     }
 }

}
