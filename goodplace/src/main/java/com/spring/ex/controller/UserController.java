package com.spring.ex.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.ex.command.LoginCheckCommand;
import com.spring.ex.command.QnASelectUserCommand;
import com.spring.ex.command.SignUpCheckCommand;
import com.spring.ex.command.UserInformationCommand;

@Controller
public class UserController {

	@Autowired
	private SqlSession sqlSession;
	@Autowired
	private HttpSession session;

	// Command Autowired
	@Autowired
	private LoginCheckCommand loginCheckCommand;
	@Autowired
	private UserInformationCommand userInfoCommand;
	@Autowired
	private QnASelectUserCommand userQnaListCommand;
	@Autowired
	private SignUpCheckCommand signupCheckCommand;

	// Main Page
	@RequestMapping("/index")
	public String index() {
		System.out.println("========== Index Page Loading ==========");

		return "/index";
	}

	// Login Page
	@RequestMapping("/login2")
	public String login2() {
		System.out.println("========== Login Page Loading ==========");

		return "/login2";
	}

	// Login Check Function
	@RequestMapping("/loginCheck")
	public String loginCheck(HttpServletRequest request, Model model) {
		System.out.println("========== Login Checking ==========");
		String mode = request.getParameter("mode");
		model.addAttribute("request", request);

		if (mode.equals("admin")) {
			int result = loginCheckCommand.executeAdmin(model);

			if (1 == result) {

				return "redirect:admin";
			} else {

				return "redirect:login2";
			}
		} else if (mode.equals("member")) {
			int result = loginCheckCommand.executeMember(model);

			if (1 == result) {

				return "/index";
			} else {

				return "redirect:login2";
			}
		} else {

			return "/error";
		}

	}

	// Sign Up Page
	@RequestMapping("/register")
	public String register() {
		System.out.println("========== Sign Up Page Loading ==========");

		return "/register";
	}
	
	// Sign Up Check Function
	@RequestMapping("/signupInsert")
	public String signupCheck(HttpServletRequest request, Model model) {
		System.out.println("========== Sign Up Checking ==========");
		model.addAttribute("request", request);
		String u_id = request.getParameter("u_id");
		System.out.println("Regist ID : " + u_id);

		int result = signupCheckCommand.execute(model);
		if (1 == result) {
			System.out.println("========== SignUp Success ==========");

			return "redirect:login2";
		} else {
			System.out.println("========== SignUp Failed ==========");

			return "redirect:register";
		}

	}

	// ID Find Page
	@RequestMapping("/idfind")
	public String idfind() {
		System.out.println("========== ID Find Page Loading ==========");

		return "/idfind";
	}

	// PW Find Page
	@RequestMapping("/passwordfind")
	public String passwordfind() {
		System.out.println("========== Password Find Page Loading ==========");

		return "/passwordfind";
	}

	// User Mypage
	@RequestMapping("/mypage")
	public ModelAndView mypage(Model model) {
		System.out.println("========== MyPage Loading ==========");

		String u_id = (String) session.getAttribute("u_id");
		String u_pw = (String) session.getAttribute("u_pw");
		System.out.println("ID : " + u_id + ", PW : " + u_pw);

		model.addAttribute("u_id", u_id);
		model.addAttribute("u_pw", u_pw);

		userInfoCommand.execute(model);
		userQnaListCommand.execute(model, u_id);

		ModelAndView mv = new ModelAndView("mypage");
		mv.addObject("userInfo", userInfoCommand.execute(model));
		mv.addObject("qnaList", userQnaListCommand.execute(model, u_id));

		System.out.println("========== Get UserInfo ==========");

		return mv;
	}

}
