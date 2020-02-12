package board.raw.article.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import board.raw.article.service.ArticleService;
import board.raw.domain.Article;
import board.raw.domain.User;
import common.domain.ArticleSearch;

@Controller
public class ArticleController {
	
	@Autowired
	@Qualifier ("articleServiceImpl")
	private ArticleService articleServiceImpl;
	
	@RequestMapping(value="/article/{articleNumber}")
	public String getArticle() {
		return "/view/article/getArticle.jsp";
	}
	@RequestMapping(value="/article/addArticleView")
	public String addArticleView() {
		return "/view/article/addArticle.jsp";
	}
	
	@RequestMapping(value="/article/addArticle")
	public String addArticle(@ModelAttribute Article article, HttpSession session) {
		User user = (User)session.getAttribute("user");
		article.setUserId(user.getId());
		articleServiceImpl.addArticle(article);
		String articleURL = article.getId()+"";
		return "redirect:/article/"+articleURL;
	}
	
}
