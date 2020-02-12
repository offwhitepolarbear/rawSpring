package board.raw.article.persistance;

import java.util.List;
import board.raw.domain.Article;
import common.domain.ArticleSearch;

public interface ArticleDAO {
	
	public int addArticle(Article article);

	public int updateArticle(Article article);

	public int deleteArticle(Article article);

	public Article getArticle(int articleId);

	public int countUsersBySearchCondition(ArticleSearch articleSearch);

	public List<Article> getArticleList(ArticleSearch articleSearch);
}
