package kr.or.moiba.ammt.board.service;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.ibatis.type.Alias;

import kr.or.moiba.ammt.common.service.DefaultVO;

import java.io.Serializable;

@Alias("SearchPageNavigationBoardVO")
public class SearchPageNavigationBoardVO extends DefaultVO {
	

	/**
	 *  검색조건
	 */
	 private String searchKeyword = "";

	/**
     * 현재페이지
     */
    private int pageIndex = 1;

    /**
     * 페이지갯수
     */
    private int pageUnit = 5;

    /**
     * 페이지사이즈
     */
    private int pageSize = 5;

    /**
     * firstIndex
     */
    private int firstIndex = 1;

    /**
     * lastIndex
     */
    private int lastIndex = 1;

    /**
     * recordCountPerPage
     */
    private int recordCountPerPage = 4;
    
    

 
	
	
    public String getSearchKeyword() {
		return searchKeyword;
	}






	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}






	public int getPageIndex() {
		return pageIndex;
	}






	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}






	public int getPageUnit() {
		return pageUnit;
	}






	public void setPageUnit(int pageUnit) {
		this.pageUnit = pageUnit;
	}






	public int getPageSize() {
		return pageSize;
	}






	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}






	public int getFirstIndex() {
		return firstIndex;
	}






	public void setFirstIndex(int firstIndex) {
		this.firstIndex = firstIndex;
	}






	public int getLastIndex() {
		return lastIndex;
	}






	public void setLastIndex(int lastIndex) {
		this.lastIndex = lastIndex;
	}






	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}






	public void setRecordCountPerPage(int recordCountPerPage) {
		this.recordCountPerPage = recordCountPerPage;
	}






	@Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }


  
}
