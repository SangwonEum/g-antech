package kr.or.moiba.ammt.app.service.impl;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import kr.or.moiba.ammt.app.service.AmtAppMonitResltVO;
import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;

import java.util.List;

@Mapper
public interface AmtAppMonitResltMapper {

    List<?> selectAppMonitResltList(SearchPageNavigationVO searchPageNavigationVO) throws Exception;

    AmtAppMonitResltVO selectAppMonitResltOne(SearchPageNavigationVO searchPageNavigationVO) throws Exception;

    int insertAppMonitReslt(AmtAppMonitResltVO amtAppMonitResltVO) throws Exception;
}
