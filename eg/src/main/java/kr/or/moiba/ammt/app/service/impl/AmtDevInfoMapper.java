package kr.or.moiba.ammt.app.service.impl;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;

import java.util.List;
import java.util.Map;

@Mapper
public interface AmtDevInfoMapper {

    List<?> selectDevInfoList(Map<String, Object> map) throws Exception;
}
