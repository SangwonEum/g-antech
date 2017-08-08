package kr.or.moiba.ammt.app.service;

import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;

import java.util.List;

public interface AmtAppSrcShotService {

    List<AmtAppScrShotVO> selectAppScrShotList(SearchPageNavigationVO searchPageNavigationVO) throws Exception;


}
