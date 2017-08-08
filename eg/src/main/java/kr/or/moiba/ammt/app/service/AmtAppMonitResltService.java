package kr.or.moiba.ammt.app.service;

import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;

import java.util.List;

public interface AmtAppMonitResltService {

    List<?> selectAppMonitResltList(SearchPageNavigationVO searchPageNavigationVO) throws Exception;

    AmtAppMonitResltVO selectAppMonitResltOne(SearchPageNavigationVO searchPageNavigationVO) throws Exception;

    int insertAppMonitReslt(AmtAppMonitResltVO amtAppMonitResltVO) throws Exception;
}
