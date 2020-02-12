package board.raw.article.persistance;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import board.raw.domain.Article;
import common.domain.ArticleSearch;
@Repository
public class ArticleDAOImpl implements ArticleDAO {

	@Autowired
	@Qualifier("sqlSession")
	private SqlSession sqlSession;
	
	@Override
	public int addArticle(Article article) {
		// TODO Auto-generated method stub
		return sqlSession.insert("articleMapper.addArticle", article);
	}

	@Override
	public int updateArticle(Article article) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteArticle(Article article) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Article getArticle(int articleId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("articleMapper.getArticle", articleId);
	}

	@Override
	public int countUsersBySearchCondition(ArticleSearch articleSearch) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Article> getArticleList(ArticleSearch articleSearch) {
		return sqlSession.selectList("articleMapper.getArticleList", articleSearch);
	}

}
