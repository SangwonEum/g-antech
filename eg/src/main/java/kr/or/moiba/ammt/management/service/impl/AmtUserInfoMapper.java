package kr.or.moiba.ammt.management.service.impl;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import kr.or.moiba.ammt.management.service.AmtUserInfoVO;

import java.util.List;

@Mapper
public interface AmtUserInfoMapper {

    List<AmtUserInfoVO> selectUserInfoList(SearchPageNavigationVO searchPageNavigationVO) throws Exception;

    AmtUserInfoVO selectUserInfoOne(AmtUserInfoVO amtUserInfoVO) throws Exception;

    void updateUserInfoPassword(AmtUserInfoVO amtUserInfoVO) throws Exception;
}
