package common.domain;

public class Search {

	private String searchCondition;
	private String searchKeyword;
	private String orderBy;
	
	private int currentPage = 1;
	
	//@value 해서 가져오고 싶은데 따로 바인딩이 안되어서 그런지 못받아 오는 거 같음 어떻게 방법이 없나
	//@Value("#{pageProperties['contentSizePerPage']}")
	private int contentsPerPage = 10;
	
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
