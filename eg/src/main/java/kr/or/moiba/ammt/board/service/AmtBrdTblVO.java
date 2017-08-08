package kr.or.moiba.ammt.board.service;

import java.io.Serializable;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.ibatis.type.Alias;

@Alias("AmtBrdTblVO")
public class AmtBrdTblVO extends SearchPageNavigationBoardVO implements Serializable {

	private static final long serialVersionUID = 1L;

	// 일렬 번호
	private Long brdSn;

	// 보드 유형
	private String brdType;

	// 보드 제목
	private String brdTitle;

	// 보드 내용
	private String brdConts;

	// 조회수
	private int viewCnt;

	public Long getBrdSn() {
		return brdSn;
	}

	public void setBrdSn(Long brdSn) {
		this.brdSn = brdSn;
	}

	public String getBrdType() {
		return brdType;
	}

	public void setBrdType(String brdType) {
		this.brdType = brdType;
	}

	public String getBrdTitle() {
		return brdTitle;
	}

	public void setBrdTitle(String brdTitle) {
		this.brdTitle = brdTitle;
	}

	public String getBrdConts() {
		return brdConts;
	}

	public void setBrdConts(String brdConts) {
		this.brdConts = brdConts;
	}

	public int getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

}
