package kr.or.moiba.ammt.app.service;

import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;

import java.util.List;

/**
 * Created by crom on 2017-07-12.
 */
public interface AmtAppCollInfoService {

    List<AmtAppCollInfoVO> selectAppCollInfoList(SearchPageNavigationVO searchPageNavigationVO) throws Exception;

    int selectAppCollInfoListTotCnt(SearchPageNavigationVO searchPageNavigationVO) throws Exception;

    AmtAppCollInfoVO selectAppCollInfoOne(SearchPageNavigationVO searchPageNavigationVO) throws Exception;

    int insertAppCollInfo(AmtAppCollInfoVO amtAppCollInfoVO) throws Exception;
}
