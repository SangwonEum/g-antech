package kr.or.moiba.ammt.management.service;

import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.ibatis.type.Alias;

import java.io.Serializable;

// 코드서브
@Alias("AmtCdSubVO")
public class AmtCdSubVO extends SearchPageNavigationVO implements Serializable {

    private static final long serialVersionUID = 1L;

    //  마스터코드
    private String mstCd;

    //  서브코드
    private String subCd;

    //  서브코드명
    private String subCdNm;

    //  정렬
    private Boolean sort;

    //  비고1
    private String bigo1;

    //  비고2
    private String bigo2;

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

    public String getSubCdNm() {
        return subCdNm;
    }

    public void setSubCdNm(String subCdNm) {
        this.subCdNm = subCdNm;
    }

    public Boolean getSort() {
        return sort;
    }

    public void setSort(Boolean sort) {
        this.sort = sort;
    }

    public String getBigo1() {
        return bigo1;
    }

    public void setBigo1(String bigo1) {
        this.bigo1 = bigo1;
    }

    public String getBigo2() {
        return bigo2;
    }

    public void setBigo2(String bigo2) {
        this.bigo2 = bigo2;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}