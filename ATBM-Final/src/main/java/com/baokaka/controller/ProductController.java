package com.baokaka.controller;

import com.baokaka.model.CartItem;
import com.baokaka.model.Product;
import com.baokaka.model.User;
import com.baokaka.reponsitory.ProductRepository;
import com.baokaka.service.CartService;
import com.baokaka.service.ProductServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
public class ProductController {
    @Autowired
    private ProductRepository repository;
    @Autowired
    private ProductServices productServices;
    @Autowired
    private CartService cartService;


    @GetMapping("/productDetails/{id}")
    public String productDetails(@PathVariable(value = "id") Long id, Optional<Product> products, Model model) {

        try {
            if (id != 0) {
                products = productServices.getProductById(id);

                if (products.isPresent()) {
                    model.addAttribute("id", products.get().getId());
                    model.addAttribute("description", products.get().getDescription());
                    model.addAttribute("name", products.get().getName());
                    model.addAttribute("price", products.get().getPrice());

                    return "productDetails";
                }
                return "redirect:/danh-sach-san-pham";
            }
            return "redirect:/danh-sach-san-pham";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/danh-sach-san-pham";
        }

    }

    @GetMapping("/image/display/{id}")
    @ResponseBody
    void showImage(@PathVariable("id") Long id, HttpServletResponse response, Optional<Product> product)
            throws ServletException, IOException {
        product = productServices.getProductById(id);
        response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
        response.getOutputStream().write(product.get().getImage());
        response.getOutputStream().close();
    }

    @RequestMapping("/add-to-cart")
    public @ResponseBody  Integer addProductToCart(@RequestParam("pid") Long productId,
                                   @RequestParam("qty") Integer quantity,
                                    HttpServletRequest request, Model model) {
        User customer = (User) request.getSession().getAttribute("user");

        cartService.addProduct(productId, quantity, customer);
       return cartService.listCartItems(customer).size();
    }


}
