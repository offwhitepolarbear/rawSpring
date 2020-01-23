package board.raw.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

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
			loginResult = "to 클라이언트: 로그인 됐어요";
		}
		return loginResult;
	}
}
