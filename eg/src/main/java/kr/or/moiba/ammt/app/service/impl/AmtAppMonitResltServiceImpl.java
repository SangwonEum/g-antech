package kr.or.moiba.ammt.app.service.impl;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import kr.or.moiba.ammt.app.service.AmtAppMonitResltService;
import kr.or.moiba.ammt.app.service.AmtAppMonitResltVO;
import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AmtAppMonitResltServiceImpl extends EgovAbstractServiceImpl implements AmtAppMonitResltService{
    private static final Logger LOGGER = LoggerFactory.getLogger(AmtAppMonitResltServiceImpl.class);

    @Autowired
    AmtAppMonitResltMapper amtAppMonitResltMapper;

    @Override
    public AmtAppMonitResltVO selectAppMonitResltOne(SearchPageNavigationVO searchPageNavigationVO) throws Exception {
        return amtAppMonitResltMapper.selectAppMonitResltOne(searchPageNavigationVO);
    }

    @Override
    public List<?> selectAppMonitResltList(SearchPageNavigationVO searchPageNavigationVO) throws Exception {
        return amtAppMonitResltMapper.selectAppMonitResltList(searchPageNavigationVO);
    }

    @Override
    public int insertAppMonitReslt(AmtAppMonitResltVO amtAppMonitResltVO) throws Exception {
        if (true) {
            throw new Exception("에러");
        }
        return amtAppMonitResltMapper.insertAppMonitReslt(amtAppMonitResltVO);
    }
}
