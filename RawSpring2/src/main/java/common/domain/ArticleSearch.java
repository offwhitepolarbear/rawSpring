package common.domain;

public class ArticleSearch {
	private String boardURL;
	private String searchCondition;
	private String searchKeyword;
	private String orderBy;
	
	private int currentPage = 1;
	private int contentsPerPage = 10;
	
	public String getBoardURL() {
		return boardURL;
	}
	public void setBoardURL(String boardURL) {
		this.boardURL = boardURL;
	}
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	public String getOrderBy() {
		return orderBy;
	}
	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getContentsPerPage() {
		return contentsPerPage;
	}
	public void setContentsPerPage(int contentsPerPage) {
		this.contentsPerPage = contentsPerPage;
	}
	
	@Override
	public String toString() {
		return "ArticleSearch [searchCondition=" + searchCondition + ", searchKeyword=" + searchKeyword + ", orderBy="
				+ orderBy + ", currentPage=" + currentPage + ", contentsPerPage=" + contentsPerPage + "]";
	}
	
	
}
