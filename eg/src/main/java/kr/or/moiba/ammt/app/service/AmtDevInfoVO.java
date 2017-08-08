package kr.or.moiba.ammt.app.service;

import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.ibatis.type.Alias;

import java.io.Serializable;

/**
 * Created by crom on 2017-07-12.
 */
// 개발자정보
@Alias("AmtDevInfoVO")
public class AmtDevInfoVO extends SearchPageNavigationVO implements Serializable {
    private static final long serialVersionUID = 1L;

    //  개발자이메일
    private String devEmail;

    //  개발자명
    private String devNm;

    //  개발자연락처
    private String devPhone;

    //  개발자주소
    private String devAddr;

    //  개발자홈페이지
    private String devHomepy;

    public String getDevEmail() {
        return devEmail;
    }

    public void setDevEmail(String devEmail) {
        this.devEmail = devEmail;
    }

    public String getDevNm() {
        return devNm;
    }

    public void setDevNm(String devNm) {
        this.devNm = devNm;
    }

    public String getDevPhone() {
        return devPhone;
    }

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

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}