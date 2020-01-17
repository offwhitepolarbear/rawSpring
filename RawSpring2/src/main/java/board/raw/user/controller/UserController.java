package board.raw.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		System.out.println("애드유저임");
		return "/view/user/addUser.jsp";
	}
	
	@RequestMapping(value="addUser", method=RequestMethod.POST)
	public String addUser(@ModelAttribute User user) {
		System.out.println(user.getName());
		System.out.println(user);
		System.out.println("애드유저포스트임");
		user.setProfileImg("none.jpg");
		userService.addUser(user);
		return "redirect:/";
	}
	
}
