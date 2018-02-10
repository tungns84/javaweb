package com.fps.controllers.order;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order")
public class OrderController {

    @GetMapping("/create")
    public String listOrders(Model model) {
        model.addAttribute("cmd", "Create Order");
        return "order/create";
    }

    @GetMapping("/manage")
    public String manageOrder(Model model) {
        model.addAttribute("cmd", "Manage Orders");
        return "order/manage";
    }
}
