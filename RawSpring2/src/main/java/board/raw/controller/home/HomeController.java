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
		System.out.println("기본컨트롤러 호출됨");
		System.out.println(tester);
		return new ModelAndView("/view/index.jsp");
		
	}
	
	@RequestMapping(value="/home")
	public ModelAndView home() {
		System.out.println("컨트롤러 호출됨");
//		return new ModelAndView("home");
		return new ModelAndView("/view/spring/home.jsp");
		
	}
	
	@RequestMapping(value="/testtest")
	public ModelAndView test() {
		System.out.println("test컨트롤러 호출됨");
//		return new ModelAndView("home");
		return new ModelAndView("/view/test/test.jsp");
		
	}
}
