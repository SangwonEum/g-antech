package kr.or.moiba.ammt.app.service;

import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.ibatis.type.Alias;

import java.io.Serializable;
import java.sql.Date;

// 앱스크린샷
@Alias("AmtAppScrShotVO")
public class AmtAppScrShotVO extends SearchPageNavigationVO implements Serializable {
    private static final long serialVersionUID = 1L;

    //  스크린샷일련번호
    private Integer scrShotSn;

    //  앱일련번호
    private Long appSn;

    //  앱모니터링일련번호
    private Integer appMonitSn;

    //  첨부파일위치
    private String atchFileLoct;

    //  원본파일명
    private String orgFileNm;

    //  파일확장자
    private String fileFExt;

    //  저장파일명
    private String saveFileNm;

    public Integer getScrShotSn() {
        return scrShotSn;
    }

    public void setScrShotSn(Integer scrShotSn) {
        this.scrShotSn = scrShotSn;
    }

    @Override
    public Long getAppSn() {
        return appSn;
    }

    public void setAppSn(Long appSn) {
        this.appSn = appSn;
    }

    public Integer getAppMonitSn() {
        return appMonitSn;
    }

    public void setAppMonitSn(Integer appMonitSn) {
        this.appMonitSn = appMonitSn;
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

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}