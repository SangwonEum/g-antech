package kr.or.moiba.ammt.app.service.impl;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import kr.or.moiba.ammt.app.service.AmtDevInfoService;
import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class AmtDevInfoServiceImpl extends EgovAbstractServiceImpl implements AmtDevInfoService {

    private static final Logger LOGGER = LoggerFactory.getLogger(AmtDevInfoServiceImpl.class);

    @Autowired
    AmtDevInfoMapper amtDevInfoMapper;

    @Override
    public List<?> selectDevInfoList(Map<String, Object> map) throws Exception {
        return amtDevInfoMapper.selectDevInfoList(map);
    }
}
