package kr.or.moiba.ammt.app.service;

import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;

import java.util.List;

public interface AmtViolHisService {

    List<AmtViolHisVO> selectAmtVioHisList(SearchPageNavigationVO searchPageNavigationVO) throws Exception;

    void insertViolHis (AmtViolHisVO amtViolHisVO) throws Exception;
}
