package board.raw.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;

import board.raw.domain.User;
import board.raw.user.service.UserService;

@RestController
@RequestMapping("/user/rest/*")
public class UserRestController {
	
	@Autowired
	@Qualifier("userServiceImpl")
	UserService userService;
	
	@ResponseBody
	@PostMapping(value="login")
	public String login(HttpSession session, @RequestBody User user) {
		String loginResult = "login Failed";
		User userFromDB = userService.getUser(user);
		if( userFromDB != null) {
			session.setAttribute("user", userFromDB);
			loginResult = userFromDB.getEmail()+"님 접속";
		}
		return loginResult;
	}
	
	@ResponseBody
	@PostMapping(value="sessionUserCheck")
	public User sessionCheck(HttpSession session) {
		return (User)session.getAttribute("user");
	}
	
}
