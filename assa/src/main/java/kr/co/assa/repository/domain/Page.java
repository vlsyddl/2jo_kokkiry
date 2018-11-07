package kr.co.assa.repository.domain;

public class Page {
	private int pageNo;
	private int category;
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	
	//#{begin}
	public int getBegin() {
		return (pageNo -1) * 10;
	}
	
	//#{end}
	public int getEnd() {
		return pageNo*10;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
}
