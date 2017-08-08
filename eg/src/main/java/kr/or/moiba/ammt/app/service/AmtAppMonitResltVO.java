package kr.or.moiba.ammt.app.service;

import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.ibatis.type.Alias;

import java.io.Serializable;
import java.sql.Date;

// 앱모니터링결과
@Alias("AmtAppMonitResltVO")
public class AmtAppMonitResltVO extends SearchPageNavigationVO implements Serializable {

    private static final long serialVersionUID = 1L;

    //  앱모니터링일련번호
    private Long appMonitSn;

    //  모니터링상태
    private String monitStat;

    //  담당자ID
    private String directorId;

    //  결제방법
    private String paymMethd;

    //  해외개발자여부
    private Boolean focntDevYn;

    //  결과등록일시
    private Date resltRegDt;

    //  메일발송여부
    private Boolean mailSendYn;

    //  최종메일발송일시
    private Date lastMailSendDt;

    //  조치결과내용
    private String dispsResltConts;

    //  비고
    private String note;

    public String getMonitStat() {
        return monitStat;
    }

    public void setMonitStat(String monitStat) {
        this.monitStat = monitStat;
    }

    public String getDirectorId() {
        return directorId;
    }

    public void setDirectorId(String directorId) {
        this.directorId = directorId;
    }

    public String getPaymMethd() {
        return paymMethd;
    }

    public void setPaymMethd(String paymMethd) {
        this.paymMethd = paymMethd;
    }

    public Boolean getFocntDevYn() {
        return focntDevYn;
    }

    public void setFocntDevYn(Boolean focntDevYn) {
        this.focntDevYn = focntDevYn;
    }

    public Date getResltRegDt() {
        return resltRegDt;
    }

    public void setResltRegDt(Date resltRegDt) {
        this.resltRegDt = resltRegDt;
    }

    public Boolean getMailSendYn() {
        return mailSendYn;
    }

    public void setMailSendYn(Boolean mailSendYn) {
        this.mailSendYn = mailSendYn;
    }

    public Date getLastMailSendDt() {
        return lastMailSendDt;
    }

    public void setLastMailSendDt(Date lastMailSendDt) {
        this.lastMailSendDt = lastMailSendDt;
    }

    public String getDispsResltConts() {
        return dispsResltConts;
    }

    public void setDispsResltConts(String dispsResltConts) {
        this.dispsResltConts = dispsResltConts;
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