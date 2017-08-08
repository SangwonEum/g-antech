package kr.or.moiba.ammt.management.service.impl;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import kr.or.moiba.ammt.management.service.AmtCdMstVO;
import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;

import java.util.List;

@Mapper
public interface AmtCdMstMapper {
    List<AmtCdMstVO> selectCdMstList(SearchPageNavigationVO searchPageNavigationVO) throws Exception;;
}
