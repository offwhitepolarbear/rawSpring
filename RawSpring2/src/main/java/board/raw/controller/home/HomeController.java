package board.raw.controller.home;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@Value("${db.user}")
	private String tester;

	@RequestMapping(value="/")
	public ModelAndView first() {
		return new ModelAndView("/view/index.jsp");
		
	}
}
