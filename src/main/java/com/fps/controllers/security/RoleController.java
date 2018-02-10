package com.fps.controllers.security;

import com.fps.entities.Role;
import com.fps.services.security.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/role")
public class RoleController {

    @Autowired
    private RoleService roleService;

    @RequestMapping(value = {"","listAll"})
    public String listRoles(Model model){
        model.addAttribute("listRoles",roleService.listRoles());
        return "admin/role/listAll";
    }
    @PostMapping("/save")
    public String save(@ModelAttribute("role") Role role, BindingResult result){
        roleService.saveRole(role);
        return "redirect:listAll";
    }
}
