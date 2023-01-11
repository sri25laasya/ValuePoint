package com.example.ECom.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.ECom.controller.dto.Dto;
import com.example.ECom.entity.EcomEntity;
import com.example.ECom.service.EcomService;


@Controller
public class EcomController {
@Autowired
    private EcomService ecomserv;
	@GetMapping("/login")
    public String loginPage() {
		return "login";
	}
	
	@PostMapping("/login")
	public String loginData(Dto dto,Model model)
	{
		boolean isValidCredential=ecomserv.checkLoginCredential(dto);
		System.out.println("User name is:"+dto.getUsername());
		if(isValidCredential) {
			model.addAttribute("Username",dto.getUsername());
			return "Home";
		}
		System.out.println("User name is invalid");
		model.addAttribute("message","the user is invalid");
		return "login";
	}
		@GetMapping("/signup")
	    public String signup() {
			return "signup";
	}
		@PostMapping("/signup")
		public String saveData(EcomEntity eentity,Model model)
		{
			System.out.println(eentity);
			ecomserv.saveEcom(eentity);
			model.addAttribute("msg","User registered successfully");
			return "login";
		}
		@GetMapping("/Home")
	    public String home() {
			return "Home";
	}
		@GetMapping("/DealToday")
	    public String dealToday() {
			return "DealToday";
	}
		@GetMapping("/UserDetail")
        public String getUser(Model model) {
           
            List<EcomEntity> userList = ecomserv.getAllUser();
           
            model.addAttribute("userList",userList);
           
            return "userdetail";
        }
		@GetMapping("/MyProfile")
	    public String myProfile() {
			return "MyProfile";
	}
		@GetMapping("/ValueSpecial")
	    public String valueSpecial() {
			return "ValueSpecial";
	}
		
		
		
}
	    
