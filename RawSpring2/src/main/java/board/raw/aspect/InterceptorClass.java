package board.raw.aspect;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import board.raw.board.controller.BoardController;
import board.raw.board.service.BoardService;

public class InterceptorClass implements HandlerInterceptor {
	
	@Autowired
	BoardService boardService;
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object arg2, ModelAndView modelAndView)
			throws Exception {
		String tester = "/board/boardListTestr";
		System.out.println("����Ʈ �ڵ鷯 ��û"+request.getRequestURI());
		if(request.getRequestURI().equals(tester)) {
			Map model = modelAndView.getModel();
			model.put("boardList", boardService.getBoardList());
			modelAndView.addAllObjects(model);
			System.out.println("�Ƴ�");
		}
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse arg1, Object arg2) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		System.out.println(session.getId());
		System.out.println("���������� �ּ� �˷���"+request.getHeader("REFERER"));
		System.out.println("��û �ּ� �˷���"+request.getRequestURL());
		return true;
	}

}
