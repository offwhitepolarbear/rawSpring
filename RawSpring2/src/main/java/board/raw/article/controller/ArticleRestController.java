package board.raw.article.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import board.raw.article.service.ArticleService;
import board.raw.board.service.BoardService;
import board.raw.domain.Article;
import board.raw.domain.Board;
import common.domain.ArticleSearch;

@RestController
@RequestMapping("/article/rest/*")
public class ArticleRestController {
	@Autowired
	private ArticleService articleService;
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("getBoardInfo")
	public List<Board> getBoardsInfo(){
		return boardService.getBoardList();
	}
	
	@RequestMapping("getArticle")
	public Article getArticle(@RequestBody Article article) {
		return articleService.getArticle(article.getId());
	}
	
	
	@RequestMapping("getArticleList")
	public Map getArticleList(@RequestBody ArticleSearch articleSearch) {
		return articleService.getArticleList(articleSearch);
	}
	
}
