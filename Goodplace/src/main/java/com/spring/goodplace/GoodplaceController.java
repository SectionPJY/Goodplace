package com.spring.goodplace;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.goodplace.command.LoginCheckCommand;
import com.spring.goodplace.command.SignUpCheckCommand;
import com.spring.goodplace.command.UserListCommand;
import com.spring.goodplace.dao.UserDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class GoodplaceController {

	private static final Logger logger = LoggerFactory.getLogger(GoodplaceController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@Autowired
	private SqlSession sqlSession;

	@Autowired
	private UserListCommand listCommand;

	@Autowired
	private LoginCheckCommand loginCheckCommand;

	@Autowired
	private SignUpCheckCommand signupCheckCommand;

	// 메인페이지
	@RequestMapping("/index")
	public String index(Model model) {
		System.out.println("========== Load Index Page ==========");

		return "/index";
	}

	// DB 연결 확인용 리스트 출력
	@RequestMapping("/list")
	public String list(Model model) {
		System.out.println("========== List Printing ==========");
		listCommand.execute(model);

		return "/list";
	}

	// 로그인 페이지
	@RequestMapping("/login")
	public String login() {

		return "/login";
	}

	// 로그인 확인
	@RequestMapping("/loginCheck")
	public String loginCheck(HttpServletRequest request, Model model) {
		System.out.println("========== Login Checking ==========");
		model.addAttribute("request", request);

		int result = loginCheckCommand.execute(model);

		if (1 == result) {
			return "redirect:loginOk";
		} else {
			return "redirect:login";
		}
	}

	// 로그인 완료
	@RequestMapping("/loginOk")
	public String loginOk() {

		return "/loginOk";
	}

	// 회원가입 페이지
	@RequestMapping("/signup")
	public String signup() {
		System.out.println("========== SignUp ==========");

		return "/signup";
	}

	// 회원가입 확인
	@RequestMapping("/signupCheck")
	public String signupCheck(HttpServletRequest request, Model model) {
		System.out.println("========== SignUp Checking ==========");
		model.addAttribute("request", request);

		int result = signupCheckCommand.execute(model);

		if (1 == result) {
			return "redirect:login";
		} else {
			return "redirect:signup";
		}
	}

}
