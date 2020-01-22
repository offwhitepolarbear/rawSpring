package board.raw.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import board.raw.domain.User;
import board.raw.user.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
	@Autowired
	@Qualifier("userServiceImpl")
	UserService userService;

	@RequestMapping(value="adduser", method=RequestMethod.GET)
	public String addUserView() {
		return "/view/user/addUser.jsp";
	}
	
	@RequestMapping(value="addUser", method=RequestMethod.POST)
	public String addUser(@ModelAttribute User user) {
		System.out.println(user);
		user.setProfileImg("none.jpg");
		userService.addUser(user);
		return "redirect:/";
	}
	
	@RequestMapping("getUser")
	public String getUser() {
		return"/view/user/getUser.jsp";
	}
	
	@RequestMapping(value="modifyUser", method=RequestMethod.GET)
	public String modifyUserView(HttpSession session,Model model) {
		User user = (User)session.getAttribute("user");
		System.out.println("유저있나 알려줘"+user);
		model.addAttribute("user",user);
		return"/view/user/modifyUser.jsp";
	}
	
	@RequestMapping(value="modifyUser", method=RequestMethod.POST)
	public String modifyUser(HttpSession session, @ModelAttribute User user) {
		System.out.println("수정요청들어옴");
		User sessionUser = (User)session.getAttribute("user");
		sessionUser.setEmail(user.getEmail());
		sessionUser.setNickname(user.getNickname());
		sessionUser.setPhoneHead(user.getPhoneHead());
		sessionUser.setPhoneBody(user.getPhoneBody());
		sessionUser.setPhoneTail(user.getPhoneTail());
		System.out.print(sessionUser);
		user.setProfileImg("이미지업데이트됨.jpg");
		if(userService.updateUser(sessionUser)) {
			System.out.println("업데이트 됨");
			session.setAttribute("user", sessionUser);
		}
		else {
			System.out.println("업데이트 안됨");
		}
		return"/user/getUser";
	}
	
	@RequestMapping (value="login", method=RequestMethod.GET)
	public String loginView() {
		System.out.println("로그인 뷰 요청");
		return "/view/user/login.jsp";
	}
	
	@RequestMapping(value="findEmail", method = RequestMethod.GET)
	public String findEmailView() {
		return "/view/user/findEmail.jsp";
		
	}
	
	@RequestMapping(value="findEmail", method = RequestMethod.POST)
	public String findEmail(@ModelAttribute User user,Model model) {
		user.setEmail(userService.findEmailByNameAndPhoneNumber(user));
		model.addAttribute("email", user.getEmail());
		return "/view/user/findEmailResult.jsp";
	}
	
	@RequestMapping(value="findPassword", method = RequestMethod.GET)
	public String findPasswordView() {
		return "/view/user/findPassword.jsp";
	}
	
	@RequestMapping(value="findPassword", method = RequestMethod.POST)
	public String Password(@ModelAttribute User user,Model model) {
		user.setPassword(userService.findPassword(user));
		model.addAttribute("password", user.getPassword());
		return "/view/user/findPasswordResult.jsp";
	}

	
}
