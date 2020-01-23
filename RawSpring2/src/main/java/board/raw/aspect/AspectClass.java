package board.raw.aspect;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class AspectClass {
	
	@Pointcut ("execution(* * *(..)")
	public void pointCutTester() {
	}
	
	@Before("within (board.raw.user.controller.UserController)")
	public void aopTesting() {
		System.out.println("ºñÆ÷aop ½ÇÇàµÊ?");
	}
	
}