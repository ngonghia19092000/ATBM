package com.baokaka.controller;


import com.baokaka.model.Address;
import com.baokaka.model.CartItem;
import com.baokaka.model.Product;
import com.baokaka.model.User;
import com.baokaka.reponsitory.AddressRepository;
import com.baokaka.service.CartService;
import com.baokaka.service.ProductServices;
import com.baokaka.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;

import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;
import java.util.spi.LocaleNameProvider;

@Controller
public class ShoppingCartController {

    @Autowired
    private CartService
            cartService;
    @Autowired
    private UserService userService;
	@Autowired
    AddressRepository addressRepository;
//	private OrderRepository orderRepo;


    @GetMapping({"gio-hang-cua-toi", "/cart"})
    public String showShoppingCart(Model model, HttpServletRequest request) {
        cartService.restartListItemCheckout();
        if (request.getSession().getAttribute("user") == null) {
            return "redirect:/login";
        }
        model.addAttribute("user", (User) request.getSession().getAttribute("user"));
        User customer = (User) request.getSession().getAttribute("user");
        model.addAttribute("user", customer);
        List<CartItem> cartItems = cartService.listCartItems(customer);
        model.addAttribute("cartSize", cartItems.size());
        model.addAttribute("cartItems", cartItems);
        return "cart";


    }


    @GetMapping("/cart/delete/{id}")
    public String deteleCart(Model model, HttpServletRequest request, @PathVariable("id") Long id) {
        User customer = (User) request.getSession().getAttribute("user");
        if (customer != null) {
            cartService.deleteCart(id);
            return "redirect:/cart";
        } else {
            return "redirect:/login";
        }
    }

    @PostMapping("/cart-update")
    public String updateQuantity(@RequestParam("pid") Long id, @RequestParam("qty") Integer quantity,
                                 HttpServletRequest request, Model model) {
        User customer = (User) request.getSession().getAttribute("user");
        cartService.updateQuantity(id, quantity, customer);

        return "redirect:/cart";

    }

    @PostMapping("/cart-check-out")
    public @ResponseBody List<CartItem> addItemCheckOut(@RequestParam("cartId") Long cartItemId, HttpServletRequest request, Model model) {
        User customer = (User) request.getSession().getAttribute("user");
        if (customer != null) {
            List<CartItem> cartItemList = cartService.findCartItemById(cartItemId, customer);
            if (cartItemList.size() != 0) {
                model.addAttribute("cartItemList", cartItemList);
                model.addAttribute("subTotal", cartService.totalPay());
                for (CartItem c : cartItemList
                ) {
                    System.out.println("Sản phẩm :" + c.getProduct().getName());
                }
                System.out.println("--------------------");
return cartItemList;
            }
        }
        return null;
    }

    @PostMapping("/cart-uncheck-out")
    public @ResponseBody List<CartItem> removeItemCheckOut(@RequestParam("cartId") Long cartItemId, HttpServletRequest request, Model model) {
        User customer = (User) request.getSession().getAttribute("user");
        if (customer != null) {
            List<CartItem> cartItemList = cartService.removeCartCheckout(cartItemId, customer);
            if (cartItemList.size() != 0) {
                model.addAttribute("cartItemList", cartItemList);
                model.addAttribute("listItem", cartService.getListChossePay());
                model.addAttribute("subTotal", cartService.totalPay());
                for (CartItem c : cartItemList
                ) {
                    System.out.println("Sản phẩm :" + c.getProduct().getName());
                }
                System.out.println("--------------------");
                return cartItemList;
            }
        }

        return null;
    }

    @GetMapping("/checkout")
    public String showCheckoutPage(HttpServletRequest request, Model model) {
        User customer = (User) request.getSession().getAttribute("user");
        if (customer == null) {
            return "redirect:/login";
        }
        model.addAttribute("listAddress",addressRepository.findByCustomer(customer));
        model.addAttribute("user",customer);
        model.addAttribute("listItem", cartService.getListChossePay());
        model.addAttribute("subTotal", cartService.totalPay());
        return "checkout";
    }
@GetMapping("/checkSize")
public @ResponseBody int checkStatusCart(){
    return cartService.getListChossePay().size();
}
@PostMapping("/tick-address")
    public @ResponseBody String tickAddress(@RequestParam("adId") Long id, HttpServletRequest request){
        Address address= addressRepository.findByIdAndCustomer(id,(User) request.getSession().getAttribute("user"));
        if (address!=null){
            cartService.insertDataAddress(address);
            return "Bạn đã chọn địa chỉ giao hàng tại: "+address.getAddressDetails() +" - "+address.getWards()+" - "+address.getDistricts()+" - "+address.getProvince();
        }
        return null;
    }

}
