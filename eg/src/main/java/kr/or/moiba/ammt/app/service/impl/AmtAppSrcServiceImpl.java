package kr.or.moiba.ammt.app.service.impl;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import kr.or.moiba.ammt.app.service.AmtAppScrShotVO;
import kr.or.moiba.ammt.app.service.AmtAppSrcShotService;
import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AmtAppSrcServiceImpl extends EgovAbstractServiceImpl implements AmtAppSrcShotService {
    private static final Logger LOGGER = LoggerFactory.getLogger(AmtAppSrcServiceImpl.class);

    @Autowired
    AmtAppScrShotMapper amtAppScrShotMapper;

    @Override
    public List<AmtAppScrShotVO> selectAppScrShotList(SearchPageNavigationVO searchPageNavigationVO) throws Exception {
        return amtAppScrShotMapper.selectAppSrcShotList(searchPageNavigationVO);
    }
}
