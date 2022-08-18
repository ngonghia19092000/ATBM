package com.baokaka.controller;

import com.baokaka.common.CreateKey;
import com.baokaka.common.Md5;
import com.baokaka.common.RSA;
import com.baokaka.model.Address;
import com.baokaka.model.Key;
import com.baokaka.model.Product;
import com.baokaka.model.User;
import com.baokaka.reponsitory.AddressRepository;
import com.baokaka.reponsitory.ProductRepository;
import com.baokaka.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    private UserService userService;
    @Autowired
    private ProductServices productServices;
    @Autowired
    private KeyService keyService;

    @Autowired
    private CartService cartService;

    @Autowired
    private OrderServices orderServices;

    @Autowired
    private AddressRepository addressRepository;


    @RequestMapping({"danh-sach-san-pham", "/productList"})
    public String getAllProduct(Model model) {
        List<Product> list = productServices.listProduct();
        if (list.size() > 0) {
            model.addAttribute("listP", list);
            model.addAttribute("countP", list.size());
            return "productList";
        }
        return "/";
    }

    @RequestMapping({"", "/home"})
    public String showHome(Model model) {
//        return "home";
        return "home";
    }

    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }

    @PostMapping("/login")
    public String login(@RequestParam("userName") String userName, @RequestParam("passWord") String passWord, HttpServletRequest request, Model model) {
        User user = userService.findByUserName(userName);
        if (user != null) {
            if (userService.checkLogin(userName, passWord)) {
                request.getSession().setAttribute("user", user);
                if (user.getIsAdmin() == 0) {
                    return "redirect:/";
                } else if (user.getIsAdmin() == 1) {
                    return "redirect:/adminPage";
                } else return "login";

            }
        }

        model.addAttribute("errorMessage", "error");
        return "login";
    }

    @GetMapping("/register")
    public String registerPage(Model model) {
        model.addAttribute("registerForm", new User());
        return "register";
    }

    @GetMapping("/adminPage")
    public String adminPage(Model model, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        if (user != null) {
            if (user.getIsAdmin() == 1) {
                model.addAttribute("user", user);
                return "adminPage";
            } else return "redirect:/";
        }
        return "redirect:/login";
    }

    @PostMapping("/register")
    public String addUser(@ModelAttribute("registerForm") User user) {
        user.setIsAdmin(0);
        userService.addUser(user);
        return "redirect:/login";
    }

    @GetMapping("/account")
    public String myAccountPage(Model model, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        if (request.getSession().getAttribute("user") == null) {
            return "redirect:/login";
        }
        model.addAttribute("listAddress", addressRepository.findByCustomer(user));
        model.addAttribute("user", user);
        model.addAttribute("listOrder", orderServices.getOderItem(user));

        return "my-account";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        request.getSession().invalidate();
        return "redirect:/login";
    }

    @PostMapping("/createkey")
    public @ResponseBody
    String createKey(@RequestParam("idUser") Long idUser) throws NoSuchAlgorithmException {
        if (idUser != null) {
            CreateKey create = new CreateKey();
            create.createKey();
            //neu da co trong csdl thi update key moi
            if (keyService.checkExist(idUser)) {
                Key k = keyService.findByUserId(idUser);
                k.setPublicKey(create.getPublickey());
                keyService.updateKey(k);
                return create.getPrivatekey();
            }
            //neu chua co trong csdl thi tao cai moi
            Key key = new Key();
            key.setUserId(idUser);
            key.setPublicKey(create.getPublickey());
            keyService.addKey(key);
            return create.getPrivatekey();
        }

        return null;
    }


    @GetMapping("/tracking-now")
    public String toTtracking(HttpServletRequest request, Model model) throws Exception {
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            return "redirect:/login";
        }
        if (cartService.getListChossePay().size() == 0) {
            return "redirect:/cart";
        }
        if (cartService.getAddressChosse().getId() == null) {
            return "redirect:/checkout";
        }
        if (keyService.checkExist(user.getId())==false) {
            return "redirect:account#payment-tab";
        }
        CreateKey keyCreate = new CreateKey();
        orderServices.createOderCode();
        orderServices.createCodeHash();

        String code = RSA.encryptText(orderServices.codeHash,
                keyCreate.convertPublicKey("RSA",
                        keyService.findPublicKeyByUserId(user.getId())
                )
        );
        String hashCode = Md5.md5(orderServices.codeHash);
        model.addAttribute("codeoder", code);
        model.addAttribute("hashcode", hashCode);
        System.out.println(hashCode);
        return "tracking-now";
    }

    @GetMapping("/tracking-order")
    @ResponseBody
    public String trackingOrder(@RequestParam("decodeText") String decodeText, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        if (decodeText.equalsIgnoreCase(orderServices.codeHash)) {
            return "true";
        }
        return "false";
    }

    @PostMapping("/add-address")

    public @ResponseBody List<Address> addNewAddress(HttpServletRequest request, Model model, @RequestParam("phone") String phone, @RequestParam("province") String provice,
                                                     @RequestParam("districts") String districts, @RequestParam("wards") String wards, @RequestParam("addressDetails") String addressDetails) {
//       if (request.getSession().getAttribute("user")==null){
//           "redirect:/login"
//         return   ;
//       }
        Address address = new Address((User) request.getSession().getAttribute("user"), phone, provice, districts, wards, addressDetails);
        if (address != null) {
            addressRepository.save(address);
            return addressRepository.findByCustomer((User) request.getSession().getAttribute("user"));
        }
        return null;
    }

    @PostMapping("/delete-address")
    public @ResponseBody String deleteNewAddress(HttpServletRequest request, Model model, @RequestParam("adId") Long id) {
        if (request.getSession().getAttribute("user") == null) {
            return "redirect:/login";

        }
        addressRepository.deleteById(id);
        return "OK";
    }


}
