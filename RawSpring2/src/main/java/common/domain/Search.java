package common.domain;

public class Search {

	private String searchCondition;
	private String searchKeyword;
	private String orderBy;

	/*
	private Search(Builder builder) {
		this.searchCondition = builder.searchCondition;
		this.searchKeyword = builder.searchKeyword;
		this.orderBy = builder.orderBy;
	}

	public static class Builder {
		private String searchCondition;
		private String searchKeyword;
		private String orderBy;
		
		public Builder searchCondition(String searchCondition) {
			this.searchCondition=searchCondition;
			return this;
		}
		public Builder searchKeyword(String searchKeyword) {
			this.searchKeyword=searchKeyword;
			return this;
		}
		public Builder orderBy(String orderBy) {
			this.orderBy=orderBy;
			return this;
		}
		
		public Search build() {
			return new Search(this);
		}
	}
	*/

	public String getSearchCondition() {
		return searchCondition;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public String getOrderBy() {
		return orderBy;
	}

	@Override
	public String toString() {
		return "Search [searchCondition=" + searchCondition + ", searchKeyword=" + searchKeyword + ", orderBy="
				+ orderBy + "]";
	}

}
