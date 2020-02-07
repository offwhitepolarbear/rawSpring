package common.domain;

public class Page {
	
	private final int recentPage;
	private final int lastPage;
	private final int totalSize;
	private final int pageNavigationSize;
	private final int firstPageIndex;
	private final int lastPageIndex;
	
	private Page(Builder builder){
		this.recentPage = builder.recentPage;
		this.pageNavigationSize = builder.pageNavigationSize;
		this.totalSize = builder.totalSize;
		this.lastPage = (totalSize-1)/builder.contentSizePerPage +1;
		this.firstPageIndex = (recentPage-1)/pageNavigationSize*pageNavigationSize+1;
		this.lastPageIndex = firstPageIndex+pageNavigationSize-1;
	}
		
	public static class Builder {
		private int recentPage;
		private int contentSizePerPage;
		private int pageNavigationSize;
		private int totalSize;
		
		public Builder recentPage(int recentPage) {
			this.recentPage=recentPage;
			return this;
		}
		public Builder contentSizePerPage(int contentSizePerPage) {
			this.contentSizePerPage=contentSizePerPage;
			return this;
		}
		public Builder pageNavigationSize(int pageNavigationSize) {
			this.pageNavigationSize=pageNavigationSize;
			return this;
		}
		public Builder totalSize(int totalSize) {
			this.totalSize=totalSize;
			return this;
		}
		
		public Page build() {
			return new Page(this);
		}
	}

	public int getRecentPage() {
		return recentPage;
	}

	public int getLastPage() {
		return lastPage;
	}

	public int getTotalSize() {
		return totalSize;
	}

	public int getPageNavigationSize() {
		return pageNavigationSize;
	}

	public int getFirstPageIndex() {
		return firstPageIndex;
	}

	public int getLastPageIndex() {
		return lastPageIndex;
	}

	@Override
	public String toString() {
		return "Page [recentPage=" + recentPage + ", lastPage=" + lastPage + ", totalSize=" + totalSize
				+ ", pageNavigationSize=" + pageNavigationSize
				+ ", firstPageIndex=" + firstPageIndex + ", lastPageIndex=" + lastPageIndex + "]";
	}
	
}
