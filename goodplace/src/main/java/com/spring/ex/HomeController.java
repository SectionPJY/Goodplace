package com.spring.ex;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.ex.command.CampDeleteCommand;
import com.spring.ex.command.CampListCommand;
import com.spring.ex.command.CampRegisterCommand;
import com.spring.ex.command.CampSelectCommand;
import com.spring.ex.command.CampUpdateCommand;
import com.spring.ex.command.EquipDeleteCommand;
import com.spring.ex.command.EquipListCommand;
import com.spring.ex.command.EquipRegisterCommand;
import com.spring.ex.command.IdDuplicationCheckCommand;
import com.spring.ex.command.LoginCheckCommand;
import com.spring.ex.command.QnADeleteCommand;
import com.spring.ex.command.QnAInsertCommand;
import com.spring.ex.command.QnAListCommand;
import com.spring.ex.command.QnaUpdateCommand;
import com.spring.ex.command.RegistrationCommand;
import com.spring.ex.command.EquipSelectCommand;
import com.spring.ex.command.EquipUpdateCommand;
import com.spring.ex.command.QnASelectCommand;
import com.spring.ex.command.QnASelectUserCommand;
import com.spring.ex.command.SignUpCheckCommand;
import com.spring.ex.command.UserDeleteCommand;
import com.spring.ex.command.UserInformationCommand;
import com.spring.ex.command.UserListCommand;
import com.spring.ex.command.UserUpdateCommand;
import com.spring.ex.dto.UserDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

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

	@Autowired
	private UserInformationCommand userInfoCommand;

	@Autowired
	private IdDuplicationCheckCommand idDupCheckCommand;

	@Autowired
	private QnAListCommand qnaListCommand;

	@Autowired
	private QnASelectCommand selectQnaCommand;

	@Autowired
	private EquipListCommand equipListCommand;

	@Autowired
	private EquipSelectCommand selectEquipCommand;

	@Autowired
	private UserDeleteCommand userDeleteCommand;

	@Autowired
	private QnaUpdateCommand qnaUpdateCommand;

	@Autowired
	private CampListCommand campListCommand;

	@Autowired
	private CampSelectCommand campSelectCommand;

	@Autowired
	private UserUpdateCommand userUpdateCommand;

	@Autowired
	private EquipDeleteCommand equipDeleteCommand;

	@Autowired
	private CampDeleteCommand campDeleteCommand;

	@Autowired
	private EquipUpdateCommand equipUpdateCommand;

	@Autowired
	private CampUpdateCommand campUpdateCommand;

	@Autowired
	private RegistrationCommand registrationCommand;

	@Autowired
	private EquipRegisterCommand equipRegisterCommand;

	@Autowired
	private CampRegisterCommand campRegisterCommand;

	@Autowired
	private QnAInsertCommand qnaInsertCommand;

	@Autowired
	private QnASelectUserCommand userQnaListCommand;

	@Autowired
	private QnADeleteCommand qnaDeleteCommand;

	@Autowired
	private HttpSession session;

	// DB �뿰寃� �솗�씤�슜 由ъ뒪�듃 異쒕젰
	@RequestMapping("/list")
	public String list(Model model) {
		System.out.println("========== List Printing ==========");
		listCommand.execute(model);

		return "/test/list";
	}

	// Test
	@RequestMapping("/getTest")
	public String getTest() {

		return "/test/getTest";
	}

	@RequestMapping("/getValueTest")
	public String getValueTest(HttpServletRequest request, Model model) {
		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");

		model.addAttribute("u_id", u_id);
		model.addAttribute("u_pw", u_pw);

		return "/test/getValueTest";
	}

	@RequestMapping("/index")
	public String index() {

		return "/index";
	}

	@RequestMapping("/login")
	public String login() {
		return "/login";
	}

	@RequestMapping("/login2")
	public String login2() {
		return "/login2";
	}

	@RequestMapping("/passwordfind")
	public String passwordfind() {
		return "/passwordfind";
	}

	@RequestMapping("/register")
	public String register() {
		return "/register";
	}

	@RequestMapping("/idfind")
	public String idfind() {
		return "/idfind";
	}

	@RequestMapping("/itempage")
	public ModelAndView itempage(HttpServletRequest request, Model model) {
		System.out.println("========== Product Detail Page ==========");
		int p_id = Integer.parseInt(request.getParameter("p_id"));
		System.out.println("Equipment ID : " + p_id);

		selectEquipCommand.execute(model, p_id);

		ModelAndView mv = new ModelAndView("itempage");
		mv.addObject("data", selectEquipCommand.execute(model, p_id));

		return mv;
	}

	@RequestMapping("/question")
	public String question() {
		return "/question";
	}

	@RequestMapping("/question2")
	public String question2() {
		return "/question2";
	}

	@RequestMapping("/connection")
	public String connection() {
		return "/connection";
	}

	@RequestMapping("/rentalguide")
	public String rentalguide() {
		return "/rentalguide";
	}

	@RequestMapping("/admin")
	public ModelAndView admin(Model model) {
		System.out.println("========== Admin Page Loading ==========");
		System.out.println("========== QnA List Command Running ==========");
		qnaListCommand.execute(model);

		ModelAndView mv = new ModelAndView("admin");
		mv.addObject("data", qnaListCommand.execute(model));

		return mv;
	}

	@RequestMapping("/chart")
	public String chart() {
		return "/chart";
	}

	@RequestMapping("/table")
	public String table() {
		return "/table";
	}

	@RequestMapping("/namesearch")
	public ModelAndView namesearch(Model model) {
		System.out.println("========== Camp List Page Running ==========");
		campListCommand.execute(model);

		ModelAndView mv = new ModelAndView("namesearch");
		mv.addObject("data", campListCommand.execute(model));

		return mv;
	}

	@RequestMapping("/order")
	public ModelAndView order(HttpServletRequest request, Model model) {
		System.out.println("========== Order Page ==========");
		int p_id = Integer.parseInt(request.getParameter("p_id"));
		System.out.println("Equipment ID : " + p_id);

		String u_id = (String) session.getAttribute("u_id");
		String u_pw = (String) session.getAttribute("u_pw");
		model.addAttribute("u_id", u_id);
		model.addAttribute("u_pw", u_pw);

		selectEquipCommand.execute(model, p_id);
		userInfoCommand.execute(model);

		ModelAndView mv = new ModelAndView("order");
		mv.addObject("data", selectEquipCommand.execute(model, p_id));
		mv.addObject("data", userInfoCommand.execute(model));

		return mv;
	}

	@RequestMapping("/exchange")
	public String exchange() {
		return "/exchange";
	}

	@RequestMapping("/reservation")
	public ModelAndView reservation(Model model) {
		System.out.println("========== Camp Detail Page ==========");
		int c_id = 1;
		System.out.println("Camp ID : " + c_id);

		ModelAndView mv = new ModelAndView("reservation");
		mv.addObject("data", campSelectCommand.execute(model, c_id));

		return mv;
	}

	@RequestMapping("/mapsearch")
	public String mapsearch() {
		return "/mapsearch";
	}

	@RequestMapping("/deliverytracking")
	public String deliverytracking() {
		return "/deliverytracking";
	}

	@RequestMapping("/orderdetail")
	public String orderdetail() {
		return "/orderdetail";
	}

	@RequestMapping("/loginhome")
	public String loginhome() {
		return "/loginhome";
	}

	@RequestMapping("/error")
	public String error() {
		return "/error";
	}

	@RequestMapping("/adreg")
	public String adreg() {
		return "/adreg";
	}

	@RequestMapping("/adlist")
	public String adlist() {
		return "/adlist";
	}

	@RequestMapping("/adprofile")
	public String adprofile() {
		return "/adprofile";
	}

	@RequestMapping("/registration")
	public String registration() {

		return "/registration";
	}

	@RequestMapping("/registrationCheck")
	public String registration(HttpServletRequest request, Model model) {
		System.out.println("========== Registration Checking ==========");

		model.addAttribute("request", request);

		int result = registrationCommand.execute(model);
		if (1 == result) {
			System.out.println("========== SignUp Success ==========");

			return "redirect:admin";
		} else {
			System.out.println("========== SignUp Failed ==========");

			return "redirect:registration";
		}
	}

	@RequestMapping("/equipRegister")
	public String equipRegister(HttpServletRequest request, Model model) {
		System.out.println("========== Equip Register ==========");
		model.addAttribute("request", request);

		int result = equipRegisterCommand.execute(model);
		if (1 == result) {
			System.out.println("========== Regist Success ==========");

			return "redirect:admin";
		} else {
			System.out.println("========== Regist Failed ==========");

			return "redirect:equipRegister";
		}
	}

	@RequestMapping("/campRegister")
	public String campRegister(HttpServletRequest request, Model model) {
		System.out.println("========== Equip Register ==========");
		model.addAttribute("request", request);

		int result = campRegisterCommand.execute(model);
		if (1 == result) {
			System.out.println("========== Regist Success ==========");

			return "redirect:camplist";
		} else {
			System.out.println("========== Regist Failed ==========");

			return "redirect:campRegister";
		}
	}

	@RequestMapping(value = "/memberdetails", method = RequestMethod.GET)
	public ModelAndView memberdetails(HttpServletRequest request, Model model) {
		System.out.println("========== MemberList Page Loading ==========");
		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");
		System.out.println("User ID : " + u_id + ", PW : " + u_pw);

		model.addAttribute("u_id", u_id);
		model.addAttribute("u_pw", u_pw);
		userInfoCommand.execute(model);

		ModelAndView mv = new ModelAndView("memberdetails");
		mv.addObject("data", userInfoCommand.execute(model));

		return mv;
	}

	@RequestMapping("/campingprofile")
	public ModelAndView campingprofile(HttpServletRequest request, Model model) {
		System.out.println("========== Camp Detail Page ==========");
		int c_id = Integer.parseInt(request.getParameter("c_id"));
		System.out.println("Camp ID : " + c_id);

		ModelAndView mv = new ModelAndView("campingprofile");
		mv.addObject("data", campSelectCommand.execute(model, c_id));

		return mv;
	}

	@RequestMapping("/equipTemp")
	public String equipTemp(HttpServletRequest request, Model model) {
		System.out.println("========== Temp Page Loading ==========");
		int p_id = Integer.parseInt(request.getParameter("p_id"));
		System.out.println("Equipment ID : " + p_id);
		model.addAttribute("p_id", p_id);

		return "/equipTemp";
	}

	@RequestMapping("/userTemp")
	public String userTemp(HttpServletRequest request, Model model) {
		System.out.println("========== Temp Page Loading ==========");
		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");
		System.out.println("User ID : " + u_id + ", PW : " + u_pw);
		model.addAttribute("u_id", u_id);
		model.addAttribute("u_pw", u_pw);

		return "/userTemp";
	}

	@RequestMapping("/deleteUserTemp")
	public String deleteUserTemp(HttpServletRequest request, Model model) {
		System.out.println("========== Temp Page Loading ==========");
		String u_id = request.getParameter("u_id");
		System.out.println("Delete ID : " + u_id);
		model.addAttribute("u_id", u_id);

		return "/deleteUserTemp";
	}

	@RequestMapping("/deleteEquipTemp")
	public String deleteEquipTemp(HttpServletRequest request, Model model) {
		System.out.println("========== Temp Page Loading ==========");
		int p_id = Integer.parseInt(request.getParameter("p_id"));
		System.out.println("Delete ID : " + p_id);
		model.addAttribute("p_id", p_id);

		return "/deleteEquipTemp";
	}

	@RequestMapping("/deleteCampTemp")
	public String deleteCampTemp(HttpServletRequest request, Model model) {
		System.out.println("========== Temp Page Loading ==========");
		int c_id = Integer.parseInt(request.getParameter("c_id"));
		System.out.println("Delete ID : " + c_id);
		model.addAttribute("c_id", c_id);

		return "/deleteCampTemp";
	}

	@RequestMapping("/campListTemp")
	public String campListTemp(HttpServletRequest request, Model model) {
		System.out.println("========== Temp Page Loading ==========");
		int c_id = Integer.parseInt(request.getParameter("c_id"));
		System.out.println("Camp ID : " + c_id);
		model.addAttribute("c_id", c_id);

		return "/campListTemp";
	}

	@RequestMapping("/updateUserTemp")
	public String updateUserTemp(HttpServletRequest request, Model model) {
		System.out.println("========== Temp Page Loading ==========");
		String u_id = request.getParameter("u_id");
		String u_pw = request.getParameter("u_pw");
		String u_name = request.getParameter("u_name");
		String u_email = request.getParameter("u_email");
		String u_address = request.getParameter("u_address");
		String u_phone = request.getParameter("u_phone");

		model.addAttribute("u_id", u_id);
		model.addAttribute("u_pw", u_pw);
		model.addAttribute("u_name", u_name);
		model.addAttribute("u_email", u_email);
		model.addAttribute("u_address", u_address);
		model.addAttribute("u_phone", u_phone);

		return "/updateUserTemp";
	}

	@RequestMapping("/equidetails")
	public ModelAndView equidetails(HttpServletRequest request, Model model) {
		System.out.println("========== EquipDetails Page Loading ==========");
		int p_id = Integer.parseInt(request.getParameter("p_id"));
		System.out.println("Equipment ID : " + p_id);

		selectEquipCommand.execute(model, p_id);

		ModelAndView mv = new ModelAndView("equidetails");
		mv.addObject("data", selectEquipCommand.execute(model, p_id));

		return mv;
	}

	@RequestMapping("/updateUser")
	public String updateUser(HttpServletRequest request, Model model) {
		System.out.println("========== Update User Page Loading ==========");
		model.addAttribute("request", request);

		int result = userUpdateCommand.execute(model);
		if (1 == result) {
			System.out.println("========== Update Complete, Reload ==========");
			model.addAttribute("result", result);

			return "/updateUser";
		} else {
			System.out.println("========== Update Failed, Reload ==========");
			model.addAttribute("result", result);

			return "/updateUser";
		}
	}

	@RequestMapping("/updateEquip")
	public String updateEquip(HttpServletRequest request, Model model) {
		System.out.println("========== Update Equipment Page Loading ==========");
		model.addAttribute("request", request);

		int result = equipUpdateCommand.execute(model);
		if (1 == result) {
			System.out.println("========== Update Complete, Reload ==========");
			model.addAttribute("result", result);

			return "/updateEquip";
		} else {
			System.out.println("========== Update Failed, Reload ==========");
			model.addAttribute("result", result);

			return "/updateEquip";
		}
	}

	@RequestMapping("/updateCamp")
	public String updateCamp(HttpServletRequest request, Model model) {
		System.out.println("========== Update Camp Page Loading ==========");
		model.addAttribute("request", request);

		int result = campUpdateCommand.execute(model);
		if (1 == result) {
			System.out.println("========== Update Complete, Reload ==========");
			model.addAttribute("result", result);

			return "/updateCamp";
		} else {
			System.out.println("========== Update Failed, Reload ==========");
			model.addAttribute("result", result);

			return "/updateCamp";
		}
	}

	@RequestMapping("/income")
	public String income() {
		return "/income";
	}

	@RequestMapping("/review")
	public String review() {
		return "/review";
	}

	@RequestMapping("/equip")
	public String equip() {
		return "/equip";
	}

	@RequestMapping("/campingreg")
	public String campingreg() {
		return "/campingreg";
	}

	@RequestMapping("/footer")
	public String footer() {
		return "/footer";
	}

	@RequestMapping("/camplist")
	public ModelAndView campList(Model model) {
		System.out.println("========== Camp List Page Running ==========");
		campListCommand.execute(model);

		ModelAndView mv = new ModelAndView("camplist");
		mv.addObject("data", campListCommand.execute(model));

		return mv;
	}

	@RequestMapping("/memberlist")
	public ModelAndView memberlist(Model model) {
		System.out.println("========== Member List Page Running ==========");
		listCommand.execute(model);

		ModelAndView mv = new ModelAndView("memberlist");
		mv.addObject("data", listCommand.execute(model));

		return mv;
	}

	@RequestMapping("/equiplist")
	public ModelAndView equiplist(Model model) {
		System.out.println("========== Equipment List Page Running ==========");
		equipListCommand.execute(model);

		ModelAndView mv = new ModelAndView("equiplist");
		mv.addObject("data", equipListCommand.execute(model));

		return mv;
	}

	@RequestMapping("/shopcart")
	public ModelAndView shopcart(Model model) {
		System.out.println("========== Equipment List Page Running ==========");
		equipListCommand.execute(model);

		ModelAndView mv = new ModelAndView("shopcart");
		mv.addObject("data", equipListCommand.execute(model));

		return mv;
	}

	// 濡쒓렇�씤 �솗�씤
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

	@RequestMapping("/logout")
	public String logout() {
		session.invalidate();

		return "redirect:index";
	}

	@RequestMapping("/mypage")
	public ModelAndView mypage(Model model) {
		System.out.println("========== Loading MyPage ==========");

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

	// �쉶�썝媛��엯 �솗�씤
	@RequestMapping("/signupInsert")
	public String signupCheck(HttpServletRequest request, Model model) {
		System.out.println("========== SignUp Checking ==========");
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

	@RequestMapping("/idDupCheck")
	public int idDupCheck(HttpServletRequest request, RedirectAttributes re) {
		System.out.println("========== ID Duplication Start ==========");
		String id = request.getParameter("id");
		System.out.println("ID : " + id);

		return 0;
	}

	@RequestMapping("/adminQna")
	public String adminQna(HttpServletRequest request, Model model) {
		System.out.println("========== Admin QnA Page Loading ==========");
		int q_id = Integer.parseInt(request.getParameter("q_id"));
		System.out.println("Question ID : " + q_id);

		selectQnaCommand.execute(model, q_id);

		ModelAndView mv = new ModelAndView("adminQna");
		mv.addObject("data", selectQnaCommand.execute(model, q_id));
		return "/adminQna";
	}

	@RequestMapping("/deleteUser")
	public String deleteUser(HttpServletRequest request, Model model) {
		System.out.println("========== Delete User ==========");
		String u_id = request.getParameter("u_id");
		System.out.println("Delete ID : " + u_id);

		int result = userDeleteCommand.execute(u_id);
		if (1 == result) {
			System.out.println("========== Delete Complete ==========");

			return "redirect:memberlist";
		} else {
			System.out.println("========== Delete Failed ==========");

			ModelAndView mv = new ModelAndView("memberlist");
			return "redirect:memberlist";
		}
	}

	@RequestMapping("/deleteEquip")
	public String deleteEquip(HttpServletRequest request, Model model) {
		System.out.println("========== Delete User ==========");
		int p_id = Integer.parseInt(request.getParameter("p_id"));
		System.out.println("Delete ID : " + p_id);

		int result = equipDeleteCommand.execute(p_id);
		if (1 == result) {
			System.out.println("========== Delete Complete ==========");

			return "redirect:equiplist";
		} else {
			System.out.println("========== Delete Failed ==========");

			return "redirect:equiplist";
		}
	}

	@RequestMapping("/deleteCamp")
	public String deleteCamp(HttpServletRequest request, Model model) {
		System.out.println("========== Delete User ==========");
		int c_id = Integer.parseInt(request.getParameter("c_id"));
		System.out.println("Delete ID : " + c_id);

		int result = campDeleteCommand.execute(c_id);
		if (1 == result) {
			System.out.println("========== Delete Complete ==========");

			return "redirect:camplist";
		} else {
			System.out.println("========== Delete Failed ==========");

			return "redirect:camplist";
		}
	}

	@RequestMapping("/updateQna")
	public String updateQna(HttpServletRequest request) {
		System.out.println("========== Update QnA ==========");
		String q_id = request.getParameter("q_id");
		String q_reply = request.getParameter("q_reply");
		System.out.println("Question ID : " + q_id);
		System.out.println("Reply Value : " + q_reply);

		int result = qnaUpdateCommand.execute(q_id, q_reply);
		if (1 == result) {
			System.out.println("========== Update Success ==========");

			return "updateQna";
		} else {
			System.out.println("========== Update Failed ==========");

			return "updateQna";
		}
	}

	@RequestMapping("/questionInsert")
	public String questionInsert(HttpServletRequest request, Model model) {
		System.out.println("========== Insert Question ==========");
		model.addAttribute("request", request);

		int result = qnaInsertCommand.execute(model);
		if (1 == result) {
			System.out.println("========== Insert Success ==========");

			return "qnaInsertOk";
		} else {
			System.out.println("========== Update Failed ==========");

			return "updateQna";
		}
	}

	@RequestMapping("/deleteQuestion")
	public String deleteQuestion(HttpServletRequest request) {
		System.out.println("========== Delete Question ==========");
		int q_id = Integer.parseInt(request.getParameter("q_id"));

		int result = qnaDeleteCommand.execute(q_id);
		if (1 == result) {
			System.out.println("========== Delete Success ==========");

			return "redirect:deleteOk";
		} else {
			System.out.println("========== Delete Failed ==========");

			return "redirect:mypage";
		}
	}

	@RequestMapping("/deleteOk")
	public String deleteOk() {
		return "/deleteOk";
	}

	@ResponseBody
	@RequestMapping("/searchPage")
	public HashMap<String, String> searchPage(HttpServletRequest request) {
		System.out.println("========= Search Page =========");
		String word = request.getParameter("searchWord");
		System.out.println("Search Word : " + word);

		HashMap<String, String> result = new HashMap<String, String>();
		result.put("url", "searchPage");

		return result;
	}
}
