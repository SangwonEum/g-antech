package kr.or.moiba.ammt.common.service;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.ibatis.type.Alias;

import java.io.Serializable;

@Alias("SearchPageNavigationVO")
public class SearchPageNavigationVO extends DefaultVO implements Serializable {

    private static final long serialVersionUID = -138828578081266357L;

    /**
     * Search 시작
     */

    /**
     * 검색Keyword
     */
    private String searchKeyword = "";

    /**
     * 검색사용여부
     */
    private String searchUseYn = "";

    /**
     * 담당자ID
     */
    private String directorId = "";

    /**
     * 마켓타입
     */
    private String mkType = "";

    /**
     * 카테고리
     */
    private String clasType = "";

    /**
     * 개발사명
     */
    private String devNm = "";

    /**
     * 개발사이메일
     */
    private String devEmail = "";

    /**
     * 수집시작 일자
     */
    private String inptDtStart = "";

    /**
     * 수집종료 일자
     */
    private String inptDtEnd = "";

    /**
     * 업데이트 시작일자
     */
    private String appUpdDateStart = "";

    /**
     * 업데이트 종료일자
     */
    private String appUpdDateEnd = "";

    /**
     * 개발사연락처
     */
    private String devPhone = "";

    /**
     *
     */
    private String mstCd = "";
    /**
     *
     */
    private String subCd = "";

    private String appS = "";

    private String appUseGrade = "";

    private Long appSn = null;

    private String userId = "";

    /**
     * Search 끝
     */


    /**
     * PageNavigation 시작
     */

    /**
     * 현재페이지
     */
    private int pageIndex = 1;

    /**
     * 페이지갯수
     */
    private int pageUnit = 10;

    /**
     * 페이지사이즈
     */
    private int pageSize = 10;

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
    private int recordCountPerPage = 10;

    /**
     * PageNavigation 끝
     */

    public SearchPageNavigationVO() {
        super.setDelYn(false);
        super.setUseYn(true);
    }

    public String getSearchKeyword() {
        return searchKeyword;
    }

    public void setSearchKeyword(String searchKeyword) {
        this.searchKeyword = searchKeyword;
    }

    public String getSearchUseYn() {
        return searchUseYn;
    }

    public void setSearchUseYn(String searchUseYn) {
        this.searchUseYn = searchUseYn;
    }

    public String getDirectorId() {
        return directorId;
    }

    public void setDirectorId(String directorId) {
        this.directorId = directorId;
    }

    public String getMkType() {
        return mkType;
    }

    public void setMkType(String mkType) {
        this.mkType = mkType;
    }

    public String getClasType() {
        return clasType;
    }

    public void setClasType(String clasType) {
        this.clasType = clasType;
    }

    public String getDevNm() {
        return devNm;
    }

    public void setDevNm(String devNm) {
        this.devNm = devNm;
    }

    public String getDevEmail() {
        return devEmail;
    }

    public void setDevEmail(String devEmail) {
        this.devEmail = devEmail;
    }

    public String getInptDtStart() {
        return inptDtStart;
    }

    public void setInptDtStart(String inptDtStart) {
        this.inptDtStart = inptDtStart;
    }

    public String getInptDtEnd() {
        return inptDtEnd;
    }

    public void setInptDtEnd(String inptDtEnd) {
        this.inptDtEnd = inptDtEnd;
    }

    public String getAppUpdDateStart() {
        return appUpdDateStart;
    }

    public void setAppUpdDateStart(String appUpdDateStart) {
        this.appUpdDateStart = appUpdDateStart;
    }

    public String getAppUpdDateEnd() {
        return appUpdDateEnd;
    }

    public void setAppUpdDateEnd(String appUpdDateEnd) {
        this.appUpdDateEnd = appUpdDateEnd;
    }

    public String getDevPhone() {
        return devPhone;
    }

    public void setDevPhone(String devPhone) {
        this.devPhone = devPhone;
    }

    public String getMstCd() {
        return mstCd;
    }

    public void setMstCd(String mstCd) {
        this.mstCd = mstCd;
    }

    public String getSubCd() {
        return subCd;
    }

    public void setSubCd(String subCd) {
        this.subCd = subCd;
    }

    public String getAppS() {
        return appS;
    }

    public void setAppS(String appS) {
        this.appS = appS;
    }

    public String getAppUseGrade() {
        return appUseGrade;
    }

    public void setAppUseGrade(String appUseGrade) {
        this.appUseGrade = appUseGrade;
    }

    public Long getAppSn() {
        return appSn;
    }

    public void setAppSn(Long appSn) {
        this.appSn = appSn;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
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
