package kr.or.moiba.ammt.board.service;

import org.apache.ibatis.type.Alias;

@Alias("AmtBrdAtchFileVO")
public class AmtBrdAtchFileVO {
	
	//첨부파일 일련 번호 
	private Long  atchFileSn;
	
	//보드 일련 번호 
	private Long  brdSn;
	
	//첨부 파일 위치 
	private String atchFileLoct;
	
	// 원본 파일명
	private String orgFileNm;
	
	// 파일 확장자 
	private String fileFExt;
	
	// 저장 파일명
	private String saveFileNm;
	
	// 삭제 여부 
	private int delYn;
	
	// 살제 일시 
	private String delDt;
	
	
	public Long getAtchFileSn() {
		return atchFileSn;
	}

	public void setAtchFileSn(Long atchFileSn) {
		this.atchFileSn = atchFileSn;
	}

	public Long getBrdSn() {
		return brdSn;
	}

	public void setBrdSn(Long brdSn) {
		this.brdSn = brdSn;
	}

	public String getAtchFileLoct() {
		return atchFileLoct;
	}

	public void setAtchFileLoct(String atchFileLoct) {
		this.atchFileLoct = atchFileLoct;
	}

	public String getOrgFileNm() {
		return orgFileNm;
	}

	public void setOrgFileNm(String orgFileNm) {
		this.orgFileNm = orgFileNm;
	}

	public String getFileFExt() {
		return fileFExt;
	}

	public void setFileFExt(String fileFExt) {
		this.fileFExt = fileFExt;
	}

	public String getSaveFileNm() {
		return saveFileNm;
	}

	public void setSaveFileNm(String saveFileNm) {
		this.saveFileNm = saveFileNm;
	}

	public int getDelYn() {
		return delYn;
	}

	public void setDelYn(int delYn) {
		this.delYn = delYn;
	}

	public String getDelDt() {
		return delDt;
	}

	public void setDelDt(String delDt) {
		this.delDt = delDt;
	}

	public String getDelId() {
		return delId;
	}

	public void setDelId(String delId) {
		this.delId = delId;
	}

	public String getInptDt() {
		return inptDt;
	}

	public void setInptDt(String inptDt) {
		this.inptDt = inptDt;
	}

	public String getInptId() {
		return inptId;
	}

	public void setInptId(String inptId) {
		this.inptId = inptId;
	}

	public String getUpdDt() {
		return updDt;
	}

	public void setUpdDt(String updDt) {
		this.updDt = updDt;
	}

	public String getUpdId() {
		return updId;
	}

	public void setUpdId(String updId) {
		this.updId = updId;
	}

	// 삭제 아이디 
	private String delId;
	
	// 입력 일시 
	private String inptDt;
	
	// 입력  ID
	private String inptId;
	
	// 수정 일시 
	private String updDt;
	
	// 수정 ID
	private String updId;

}
