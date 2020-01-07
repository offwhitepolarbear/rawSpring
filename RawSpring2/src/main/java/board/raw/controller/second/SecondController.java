package board.raw.controller.second;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/test/*")
public class SecondController {
	
	@RequestMapping(value="test")
	public String test() {
		System.out.println("/test/test¿”");
		return ("/WEB-INF/test/testtest.jsp");
	}
	
}
