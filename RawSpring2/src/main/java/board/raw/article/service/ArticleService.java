package board.raw.article.service;

import java.util.List;

import board.raw.domain.Article;

public interface ArticleService {
	public int addArticle(); 
	
	public int updateArticle();
	
	public int deleteArticle();
	
	public Article getArticle();
	
	public List<Article> getArticleList();
}
