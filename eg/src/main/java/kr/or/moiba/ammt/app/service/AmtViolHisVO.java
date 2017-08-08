package kr.or.moiba.ammt.app.service;

import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.ibatis.type.Alias;

import java.io.Serializable;

// 위반이력
@Alias("AmtViolHisVO")
public class AmtViolHisVO extends SearchPageNavigationVO implements Serializable {

    private static final long serialVersionUID = 1L;

    //  앱일련번호
    private Long appSn;

    //  위반조항코드
    private String violClausCd;

    //  위반조항명
    private String violClausNm;

    public Long getAppSn() {
        return appSn;
    }

    public void setAppSn(Long appSn) {
        this.appSn = appSn;
    }

    public String getViolClausCd() {
        return violClausCd;
    }

    public void setViolClausCd(String violClausCd) {
        this.violClausCd = violClausCd;
    }

    public String getViolClausNm() {
        return violClausNm;
    }

    public void setViolClausNm(String violClausNm) {
        this.violClausNm = violClausNm;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}