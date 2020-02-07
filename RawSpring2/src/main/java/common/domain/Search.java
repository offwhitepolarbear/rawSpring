package common.domain;

public class Search {

	private String searchCondition;
	private String searchKeyword;
	private String orderBy;
	
	private int currentPage = 1;
	
	//@Value("#{pageProperties['contentSizePerPage']}")
	int contentsPerPage = 1;
	
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

	public int getFirstRow() {
		return (this.currentPage - 1) * this.contentsPerPage + 1;
	}

	public int getLastRow() {
		return (this.currentPage) * (this.contentsPerPage);
	}

	@Override
	public String toString() {
		return "Search [searchCondition=" + searchCondition + ", searchKeyword=" + searchKeyword + ", orderBy="
				+ orderBy + ", recentPage=" + currentPage + ", contentsPerPage=" + contentsPerPage + "]";
	}

}
