package com.example.ECom.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.ECom.controller.dto.Dto;
import com.example.ECom.entity.EcomEntity;
import com.example.ECom.repo.EcomRepo;

@Service
public class EcomService {
@Autowired
     private  EcomRepo ecomrepo; 
	 public String saveEcom(EcomEntity eentity) {
		 
		 ecomrepo.save(eentity);
		 return "data saved successfully";
		 
	 }
	public boolean checkLoginCredential(Dto dto) {
		Optional <EcomEntity> userOptional=ecomrepo.findByUsername(dto.getUsername());
		String password=dto.getPassword();
		if(userOptional.isEmpty()) {
			System.out.println("User is not found");
		return false;
	}
		else if(userOptional.get().getPassword().equals(password)) {
			System.out.println("Password is Correct");
			return true;
		}
		else {
			System.out.println("Password is wrong");
			return false;
		}
	}
	public List<EcomEntity> getAllUser() {
		
		return ecomrepo.findAll();
	}
	

}
