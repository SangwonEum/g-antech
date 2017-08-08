package kr.or.moiba.ammt.management.service.impl;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import kr.or.moiba.ammt.management.service.AmtCdSubVO;
import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;

import java.util.List;

@Mapper
public interface AmtCdSubMapper {
    List<AmtCdSubVO> selectCdSubList(SearchPageNavigationVO searchPageNavigationVO) throws Exception;;

    AmtCdSubVO selectCdSubOne(SearchPageNavigationVO searchPageNavigationVO) throws Exception;;
}
