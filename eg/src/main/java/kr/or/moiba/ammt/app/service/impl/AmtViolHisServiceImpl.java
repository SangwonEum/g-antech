package kr.or.moiba.ammt.app.service.impl;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import kr.or.moiba.ammt.app.service.AmtViolHisService;
import kr.or.moiba.ammt.app.service.AmtViolHisVO;
import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AmtViolHisServiceImpl extends EgovAbstractServiceImpl implements AmtViolHisService {

    private static final Logger LOGGER = LoggerFactory.getLogger(AmtViolHisServiceImpl.class);

    @Autowired
    AmtViolHisMapper amtViolHisMapper;

    @Override
    public List<AmtViolHisVO> selectAmtVioHisList(SearchPageNavigationVO searchPageNavigationVO) throws Exception {
        return amtViolHisMapper.selectViolHisList(searchPageNavigationVO);
    }

    @Override
    public void insertViolHis(AmtViolHisVO amtViolHisVO) throws Exception {
        amtViolHisMapper.insertViolHis(amtViolHisVO);
    }
}
