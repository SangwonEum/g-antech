package kr.or.moiba.ammt.management.service;

import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.ibatis.type.Alias;

import java.io.Serializable;

// 코드마스터
@Alias("AmtCdMstVO")
public class AmtCdMstVO extends SearchPageNavigationVO implements Serializable {

    private static final long serialVersionUID = 1L;

    //  마스터코드
    private String mstCd;

    //  마스터코드명
    private String mstCdNm;

    //  설명
    private String cdDc;

    public String getMstCd() {
        return mstCd;
    }

    public void setMstCd(String mstCd) {
        this.mstCd = mstCd;
    }

    public String getMstCdNm() {
        return mstCdNm;
    }

    public void setMstCdNm(String mstCdNm) {
        this.mstCdNm = mstCdNm;
    }

    public String getCdDc() {
        return cdDc;
    }

    public void setCdDc(String cdDc) {
        this.cdDc = cdDc;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}