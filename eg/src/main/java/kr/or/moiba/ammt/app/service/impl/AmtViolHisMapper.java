package kr.or.moiba.ammt.app.service.impl;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import kr.or.moiba.ammt.app.service.AmtViolHisVO;
import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;

import java.util.List;

@Mapper
public interface AmtViolHisMapper {

    List<AmtViolHisVO> selectViolHisList(SearchPageNavigationVO searchPageNavigationVO) throws Exception;

    void insertViolHis (AmtViolHisVO amtViolHisVO) throws Exception;
}
