package kr.or.moiba.ammt.management.service;

import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;

import java.util.List;

public interface AmtUserInfoService {

    List<AmtUserInfoVO> selectUserInfoList(SearchPageNavigationVO searchPageNavigationVO) throws Exception;

    AmtUserInfoVO selectUserInfoOne(AmtUserInfoVO amtUserInfoVO) throws Exception;

    void updateUserInfoPassword(AmtUserInfoVO amtUserInfoVO) throws Exception;
}
