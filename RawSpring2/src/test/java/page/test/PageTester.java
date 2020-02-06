package page.test;

import org.junit.Test;

import common.domain.Page;

public class PageTester {
	@Test
	public void testPage() {
		int recentPage = 39;
		int pageNavigationSize = 10;
		int contentSizePerPage = 20;
		int totalSize = 90023;
		Page page = new Page.Builder()
				.recentPage(recentPage)
				.pageNavigationSize(pageNavigationSize)
				.contentSizePerPage(contentSizePerPage)
				.totalSize(totalSize)
				.build();
		
		System.out.println(page.getFirstPageIndex());
		System.out.println(page.getLastPageIndex());

	}
}
