package board.raw.article.service;

import java.util.Map;

import board.raw.domain.Article;
import common.domain.ArticleSearch;

public interface ArticleService {
	public int addArticle(Article article); 
	
	public int updateArticle(Article article);
	
	public int deleteArticle(Article article);
	
	public Article getArticle(int articleId);
	
	public Map<String,Object> getArticleList(ArticleSearch articleSearch);
}
