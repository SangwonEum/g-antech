package kr.or.moiba.ammt.app.service;

import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


public interface AmtDevInfoService {

    List<?> selectDevInfoList(Map<String, Object> map) throws Exception;
}
