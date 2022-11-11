package com.spring.ex.command;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.ex.dao.UserDAO;
import com.spring.ex.dto.UserDTO;

@Service
public class UserListCommand {
	
	@Autowired
	UserDAO dao;

	public List<UserDTO> execute(Model model) {
		System.out.println("========== List Command Running ==========");
		List<UserDTO> dtos = dao.userList();
		model.addAttribute("dtos", dtos);
		
		return dtos;
	}
}
