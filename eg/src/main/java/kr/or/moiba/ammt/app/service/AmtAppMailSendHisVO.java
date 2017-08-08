package kr.or.moiba.ammt.app.service;

import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.ibatis.type.Alias;

import java.io.Serializable;
import java.sql.Date;

// 앱메일발송이력
@Alias("AmtAppMailSendHisVO")
public class AmtAppMailSendHisVO extends SearchPageNavigationVO implements Serializable {

    private static final long serialVersionUID = 1L;

    //  메일발송일련번호
    private Integer mailSendSn;

    //  앱모니터링일련번호
    private Integer appMonitSn;

    //  앱일련번호
    private Long appSn;

    //  수신이메일
    private String recvEmail;

    //  요청내용
    private String reqmConts;

    //  요청일시
    private Date reqmDt;

    //  발송성공여부
    private Boolean sendSucsYn;

    public Integer getMailSendSn() {
        return mailSendSn;
    }

    public void setMailSendSn(Integer mailSendSn) {
        this.mailSendSn = mailSendSn;
    }

    public Integer getAppMonitSn() {
        return appMonitSn;
    }

    public void setAppMonitSn(Integer appMonitSn) {
        this.appMonitSn = appMonitSn;
    }

    @Override
    public Long getAppSn() {
        return appSn;
    }

    public void setAppSn(Long appSn) {
        this.appSn = appSn;
    }

    public String getRecvEmail() {
        return recvEmail;
    }

    public void setRecvEmail(String recvEmail) {
        this.recvEmail = recvEmail;
    }

    public String getReqmConts() {
        return reqmConts;
    }

    public void setReqmConts(String reqmConts) {
        this.reqmConts = reqmConts;
    }

    public Date getReqmDt() {
        return reqmDt;
    }

    public void setReqmDt(Date reqmDt) {
        this.reqmDt = reqmDt;
    }

    public Boolean getSendSucsYn() {
        return sendSucsYn;
    }

    public void setSendSucsYn(Boolean sendSucsYn) {
        this.sendSucsYn = sendSucsYn;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}