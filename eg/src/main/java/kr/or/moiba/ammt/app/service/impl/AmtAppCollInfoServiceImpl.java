package kr.or.moiba.ammt.app.service.impl;


import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import kr.or.moiba.ammt.app.service.AmtAppCollInfoService;
import kr.or.moiba.ammt.app.service.AmtAppCollInfoVO;
import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by crom on 2017-07-12.
 */
@Service
public class AmtAppCollInfoServiceImpl extends EgovAbstractServiceImpl implements AmtAppCollInfoService {
    private static final Logger LOGGER = LoggerFactory.getLogger(AmtAppCollInfoServiceImpl.class);

    @Autowired
    AmtAppCollInfoMapper amtAppCollInfoMapper;


    @Override
    public List<AmtAppCollInfoVO> selectAppCollInfoList(SearchPageNavigationVO searchPageNavigationVO) throws Exception {
        return amtAppCollInfoMapper.selectAppCollInfoList(searchPageNavigationVO);
    }

    @Override
    public int selectAppCollInfoListTotCnt(SearchPageNavigationVO searchPageNavigationVO) throws Exception {
        return amtAppCollInfoMapper.selectAppCollInfoListTotCnt(searchPageNavigationVO);
    }

    @Override
    public AmtAppCollInfoVO selectAppCollInfoOne(SearchPageNavigationVO searchPageNavigationVO) throws Exception {
        return amtAppCollInfoMapper.selectAppCollInfoOne(searchPageNavigationVO);
    }

    @Override
    public int insertAppCollInfo(AmtAppCollInfoVO amtAppCollInfoVO) throws Exception {
        return amtAppCollInfoMapper.insertAppCollInfo(amtAppCollInfoVO);
    }
}
