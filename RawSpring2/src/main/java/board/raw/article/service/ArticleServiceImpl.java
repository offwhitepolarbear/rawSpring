package board.raw.article.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import board.raw.article.persistance.ArticleDAO;
import board.raw.domain.Article;
import common.domain.ArticleSearch;

@Service
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	@Qualifier("articleDAOImpl")
	ArticleDAO articleDAOImpl;

	@Override
	public int addArticle(Article article) {
		return articleDAOImpl.addArticle(article);
	}

	@Override
	public int updateArticle(Article article) {
		return 0;
	}

	@Override
	public int deleteArticle(Article article) {
		return 0;
	}

	@Override
	public Article getArticle(int articleId) {
		// TODO Auto-generated method stub
		return articleDAOImpl.getArticle(articleId);
	}

	@Override
	public Map<String, Object> getArticleList(ArticleSearch articleSearch) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("articleList", articleDAOImpl.getArticleList(articleSearch));
		return map;
	}

}
