package kr.or.moiba.ammt.app.service.impl;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import kr.or.moiba.ammt.app.service.AmtAppScrShotVO;
import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;

import java.util.List;

@Mapper
public interface AmtAppScrShotMapper {

    List<AmtAppScrShotVO> selectAppSrcShotList(SearchPageNavigationVO searchPageNavigationVO) throws Exception;
}
