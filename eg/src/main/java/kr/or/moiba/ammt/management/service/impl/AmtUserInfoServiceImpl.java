package kr.or.moiba.ammt.management.service.impl;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import kr.or.moiba.ammt.management.service.AmtUserInfoService;
import kr.or.moiba.ammt.management.service.AmtUserInfoVO;
import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AmtUserInfoServiceImpl extends EgovAbstractServiceImpl implements AmtUserInfoService {

    private static final Logger LOGGER = LoggerFactory.getLogger(AmtUserInfoServiceImpl.class);

    @Autowired
    AmtUserInfoMapper amtUserInfoMapper;

    @Override
    public List<AmtUserInfoVO> selectUserInfoList(SearchPageNavigationVO searchPageNavigationVO) throws Exception {
        return amtUserInfoMapper.selectUserInfoList(searchPageNavigationVO);
    }

    @Override
    public AmtUserInfoVO selectUserInfoOne(AmtUserInfoVO amtUserInfoVO) throws Exception {
        LOGGER.info("{}", amtUserInfoVO);
        return amtUserInfoMapper.selectUserInfoOne((amtUserInfoVO));
    }

    @Override
    public void updateUserInfoPassword(AmtUserInfoVO amtUserInfoVO) throws Exception {
        amtUserInfoMapper.updateUserInfoPassword(amtUserInfoVO);
    }
}
