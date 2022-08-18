package com.baokaka.controller;


import com.baokaka.model.*;
import com.baokaka.reponsitory.AddressRepository;
import com.baokaka.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Paths;
import java.util.Date;
import java.util.List;

@Controller
public class AdminController {

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

    @Value("/resources")
    private String uploadFolder;

    @RequestMapping({"product-admin", "/productmanager"})
    public String getAllProduct(Model model, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        if (user== null) {
            return "redirect:/login";
        }
        if (user.getIsAdmin()==1) {
            List<Product> products = productServices.listProduct();
            model.addAttribute("listP", products);
            return "productmanager";
        } else {
            return "redirect:/";
        }

    }
    @PostMapping("/new_product_process")
    public @ResponseBody String createProduct(@RequestParam("name") String name,
                                                         @RequestParam("price") int price, @RequestParam("description") String description, Model model,
                                                         HttpServletRequest request, final @RequestParam("image") MultipartFile file) {
        try {
            String uploadDirectory = request.getServletContext().getRealPath(uploadFolder);
            String fileName = file.getOriginalFilename();
            String filePath = Paths.get(uploadDirectory, fileName).toString();
            if (fileName == null || fileName.contains("..")) {
                model.addAttribute("invalid", "Sorry! Filename contains invalid path sequence \" + fileName");
                return "redirect:/product-admin";
            }
            String[] names = name.split(",");
            String[] descriptions = description.split(",");
            Date createDate = new Date();
            try {
                File dir = new File(uploadDirectory);
                if (!dir.exists()) {
                    dir.mkdirs();
                }
                BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(new File(filePath)));
                stream.write(file.getBytes());
                stream.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
            byte[] imageData = file.getBytes();
            Product product = new Product();
            product.setName(names[0]);
            product.setImage(imageData);
            product.setPrice(price);
            product.setDescription(descriptions[0]);
            product.setCreateDate(createDate);
            productServices.saveProduct(product);
            return "redirect:/product-admin";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/product-admin";
        }
    }
    @RequestMapping({"/product-admin/edit"})
    public String editProduct(Model model) {
        return "editProduct";
    }
    @RequestMapping({"/product-admin/delete"})
    public String deleteProduct(Model model, @RequestParam("id") Long id, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        if (user.getIsAdmin()==1){
            productServices.deleteByID(id);
            return "redirect:/product-admin";
        } else {
            return "redirect:/product-admin";
        }

    }
    @GetMapping("/usermanager")
    public String userManager(Model model, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        if (user != null) {
            if (user.getIsAdmin() == 1) {
                model.addAttribute("user", user);
                List<User> list = userService.getAllUser();
                List<Key> listKey = keyService.getAllKey();
                if (list.size() > 0) {
                    model.addAttribute("listU", list);
                    model.addAttribute("listK", listKey);
                    model.addAttribute("countU", list.size());
                    return "usermanager";
                }
            } else return "redirect:/";
        }
        return "redirect:/";
    }




    @GetMapping("usermanager/delete")
    public  String deleteUser(Model model, @RequestParam("uid") Long id,HttpServletRequest request) {
            User user = userService.findById(id);
            User user1 = (User) request.getSession().getAttribute("user");
          if (user1 != null&& user1.getIsAdmin() == 1) {

            if (user != null) {
             List<CartItem> lisst=   cartService.listCartItems(user);
              if (lisst.size() > 0) {
                  for (CartItem cartItem : lisst) {
                      cartService.deleteCart(cartItem.getId());
                  }
              }
                List<Order> lissOrder=   orderServices.getAllOrderByUser(user);
               if (lissOrder.size() > 0) {
                   for (Order order : lissOrder) {
                       orderServices.deleteOrder(order.getId());
                   }
               }
                List<Address> lissAddress=   addressRepository.findByCustomer(user);
             if (lissAddress.size() > 0) {
                 for (Address address : lissAddress) {
                     addressRepository.deleteById(address.getId());
                 }
             }
                userService.deleteUser(user.getId());
                return "redirect:/usermanager";
            }

            return "redirect:/usermanager";
    }
          return "redirect:/";
    }
    @GetMapping("usermanager/setAdmin")
    public String setAdmin(Model model, @RequestParam("uid") Long id,HttpServletRequest request) {
        User user = userService.findById(id);
        User user1 = (User) request.getSession().getAttribute("user");
        if (user1 != null&& user1.getIsAdmin() == 1) {
            if (user != null) {
                user.setIsAdmin(1);
              userService.setAdmin(user.getId());
                return "redirect:/usermanager";
            }
            return "redirect:/usermanager";
        }
        return "redirect:/";
    }
    @GetMapping("usermanager/setUser")
    public String setUser(Model model, @RequestParam("uid") Long id,HttpServletRequest request) {
        User user = userService.findById(id);
        User user1 = (User) request.getSession().getAttribute("user");
        if (user1 != null&& user1.getIsAdmin() == 1) {
            if (user != null) {
                user.setIsAdmin(0);
                userService.setUser(user.getId());
                return "redirect:/usermanager";
            }
            return "redirect:/usermanager";
        }
        return "redirect:/";
    }


    @PostMapping("/add-user")
    public String addUser(Model model, @RequestParam("fullName") String fullName,
                            @RequestParam("userName") String userName,
                          @RequestParam("passWord") String passWord,
                          @RequestParam("birthday") String birthday)
                       {
        User user = new User();
        user.setFullName(fullName);
        user.setUserName(userName);
        user.setPassWord(passWord);
        user.setBirthday(birthday);
        user.setIsAdmin(0);
        userService.addUser(user);
        return "redirect:/usermanager";
    }




    @GetMapping("/ordermanager")
    public String orderManager(Model model, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        if (user != null) {
            if (user.getIsAdmin() == 1) {
                model.addAttribute("user", user);
                List<OrderItem> list = orderServices.getAllOrderStore();
                if (list.size() > 0) {
                    model.addAttribute("listO", list);
                    model.addAttribute("countO", list.size());
                    return "ordermanager";
                }
            } else return "redirect:/";
        }
        return "redirect:/";
    }
    @PostMapping("/admin/order/updateStatus")
    public String updateStatus(Model model,
                               @RequestParam("status") int status,@RequestParam("oid") Long id) {
        Order order = orderServices.findOrderById(id);
        if (order != null) {
            order.setOrder_status(status);
            orderServices.updateOrder(order);
            return "redirect:/ordermanager";
        }
        return "redirect:/ordermanager";
    }
}
