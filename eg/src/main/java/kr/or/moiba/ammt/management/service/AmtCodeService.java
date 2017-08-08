package kr.or.moiba.ammt.management.service;

import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;

import java.util.List;

public interface AmtCodeService {
    AmtCdSubVO selectCdSubOne(AmtCdSubVO amtCdSubVO) throws Exception;

    List<AmtCdMstVO> selectCdMstList(SearchPageNavigationVO searchPageNavigationVO) throws Exception;

    List<AmtCdSubVO> selectCdSubList(SearchPageNavigationVO searchPageNavigationVO) throws Exception;

    List<AmtCdSubVO> selectCdSubListByMstCd(String mstCd) throws Exception;
}
