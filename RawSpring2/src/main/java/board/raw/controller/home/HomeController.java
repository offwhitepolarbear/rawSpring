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
		System.out.println("�⺻��Ʈ�ѷ� ȣ���");
		System.out.println(tester);
		return new ModelAndView("/WEB-INF/index.jsp");
		
	}
	
	@RequestMapping(value="/home")
	public ModelAndView home() {
		System.out.println("��Ʈ�ѷ� ȣ���");
//		return new ModelAndView("home");
		return new ModelAndView("/WEB-INF/spring/home.jsp");
		
	}
	
	@RequestMapping(value="/testtest")
	public ModelAndView test() {
		System.out.println("test��Ʈ�ѷ� ȣ���");
//		return new ModelAndView("home");
		return new ModelAndView("/WEB-INF/test/test.jsp");
		
	}
}