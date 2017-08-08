package kr.or.moiba.ammt.app.service;

import com.google.common.base.Strings;
import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.ibatis.type.Alias;

import java.io.Serializable;

/**
 * Created by crom on 2017-07-12.
 */
// 앱수집정보
@Alias("AmtAppCollInfoVO")
public class AmtAppCollInfoVO extends SearchPageNavigationVO implements Serializable {

    private static final long serialVersionUID = 1L;

    //  앱일련번호
    private Long appSn;

    //  수집유형
    private String collType;

    private String collDate;

    //  배치이력번호
    private Long bacthHistoryNo;

    //  마켓유형
    private String mkType;

    //  분류유형
    private String clasType;

    //  앱ID
    private String appId;

    //  앱명
    private String appNm;

    //  수집URL
    private String collUrl;

    //  앱가격
    private String appPrice;

    private String inAppYn;

    //  가격단위
    private String priceUnit;

    //  수집정보명
    private String collInfoNm;

    //  앱이용등급
    private String appUseGrade;

    //  앱사이즈
    private String appSize;

    //  앱버전
    private String appVer;

    //  앱수정일자
    private String appUpdDate;

    //  개발자명
    private String devNm;

    //  개발자이메일
    private String devEmail;

    //  개발자연락처
    private String devPhone;

    //  개발자주소
    private String devAddr;

    //  개발자홈페이지
    private String devHomepy;

    //  앱이미지
    private String appLeaderImg;

    //  비고
    private String note;

    @Override
    public Long getAppSn() {
        return appSn;
    }

    @Override
    public void setAppSn(Long appSn) {
        this.appSn = appSn;
    }

    public String getCollType() {
        return collType;
    }

    public void setCollType(String collType) {
        this.collType = collType;
    }

    public String getCollDate() {
        return collDate;
    }

    public void setCollDate(String collDate) {
        this.collDate = collDate;
    }

    public Long getBacthHistoryNo() {
        return bacthHistoryNo;
    }

    public void setBacthHistoryNo(Long bacthHistoryNo) {
        this.bacthHistoryNo = bacthHistoryNo;
    }

    @Override
    public String getMkType() {
        return mkType;
    }

    @Override
    public void setMkType(String mkType) {
        this.mkType = mkType;
    }

    @Override
    public String getClasType() {
        return clasType;
    }

    @Override
    public void setClasType(String clasType) {
        this.clasType = clasType;
    }

    public String getAppId() {
        return appId;
    }

    public void setAppId(String appId) {
        this.appId = appId;
    }

    public String getAppNm() {
        return appNm;
    }

    public void setAppNm(String appNm) {
        this.appNm = appNm;
    }

    public String getCollUrl() {
        return collUrl;
    }

    public void setCollUrl(String collUrl) {
        this.collUrl = collUrl;
    }

    public String getAppPrice() {
        return appPrice;
    }

    public void setAppPrice(String appPrice) {
        this.appPrice = appPrice;
    }

    public String getInAppYn() {
        return inAppYn;
    }

    public void setInAppYn(String inAppYn) {
        this.inAppYn = inAppYn;
    }

    public String getPriceUnit() {
        return priceUnit;
    }

    public void setPriceUnit(String priceUnit) {
        this.priceUnit = priceUnit;
    }

    public String getCollInfoNm() {
        return collInfoNm;
    }

    public void setCollInfoNm(String collInfoNm) {
        this.collInfoNm = collInfoNm;
    }

    @Override
    public String getAppUseGrade() {
        return appUseGrade;
    }

    @Override
    public void setAppUseGrade(String appUseGrade) {
        this.appUseGrade = appUseGrade;
    }

    public String getAppSize() {
        return appSize;
    }

    public void setAppSize(String appSize) {
        this.appSize = appSize;
    }

    public String getAppVer() {
        return appVer;
    }

    public void setAppVer(String appVer) {
        this.appVer = appVer;
    }

    public String getAppUpdDate() {
        return appUpdDate;
    }

    public void setAppUpdDate(String appUpdDate) {
        if (appUpdDate.contains("/")){
            this.appUpdDate = StringUtils.replace(appUpdDate, "/", "");
        } else {
            this.appUpdDate = appUpdDate;
        }
    }

    @Override
    public String getDevNm() {
        return devNm;
    }

    @Override
    public void setDevNm(String devNm) {
        this.devNm = devNm;
    }

    @Override
    public String getDevEmail() {
        return devEmail;
    }

    @Override
    public void setDevEmail(String devEmail) {
        this.devEmail = devEmail;
    }

    @Override
    public String getDevPhone() {
        return devPhone;
    }

    @Override
    public void setDevPhone(String devPhone) {
        this.devPhone = devPhone;
    }

    public String getDevAddr() {
        return devAddr;
    }

    public void setDevAddr(String devAddr) {
        this.devAddr = devAddr;
    }

    public String getDevHomepy() {
        return devHomepy;
    }

    public void setDevHomepy(String devHomepy) {
        this.devHomepy = devHomepy;
    }

    public String getAppLeaderImg() {
        return appLeaderImg;
    }

    public void setAppLeaderImg(String appLeaderImg) {
        this.appLeaderImg = appLeaderImg;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}