package kr.or.moiba.ammt.common.service;

import org.apache.commons.lang3.builder.ToStringBuilder;

import java.sql.Date;

/**
 * Created by crom on 2017-07-12.
 */
public class DefaultVO {

    // 사용여부
    private Boolean useYn;

    // 삭제여부
    private Boolean delYn;

    //  삭제일시
    private Date delDt;

    //  삭제ID
    private String delId;

    //  입력일시
    private Date inptDt;

    //  입력ID
    private String inptId;

    //  수정일시
    private Date updDt;

    //  수정ID
    private String updId;

    public Boolean getUseYn() {
        return useYn;
    }

    public void setUseYn(Boolean useYn) {
        this.useYn = useYn;
    }

    public Boolean getDelYn() {
        return delYn;
    }

    public void setDelYn(Boolean delYn) {
        this.delYn = delYn;
    }

    public Date getDelDt() {
        return delDt;
    }

    public void setDelDt(Date delDt) {
        this.delDt = delDt;
    }

    public String getDelId() {
        return delId;
    }

    public void setDelId(String delId) {
        this.delId = delId;
    }

    public Date getInptDt() {
        return inptDt;
    }

    public void setInptDt(Date inptDt) {
        this.inptDt = inptDt;
    }

    public String getInptId() {
        return inptId;
    }

    public void setInptId(String inptId) {
        this.inptId = inptId;
    }

    public Date getUpdDt() {
        return updDt;
    }

    public void setUpdDt(Date updDt) {
        this.updDt = updDt;
    }

    public String getUpdId() {
        return updId;
    }

    public void setUpdId(String updId) {
        this.updId = updId;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}
