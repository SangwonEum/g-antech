package kr.or.moiba.ammt.app.service.impl;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import kr.or.moiba.ammt.app.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AppServiceImpl extends EgovAbstractServiceImpl implements AppService {

    @Autowired
    AmtAppCollInfoService amtAppCollInfoService;

    @Autowired
    AmtAppMonitResltService amtAppMonitResltService;

    @Override
    public void insertPost(AppDetailCommand appDetailCommand) throws Exception {
        AmtAppCollInfoVO amtAppCollInfoVO = appDetailCommand.getAmtAppCollInfoVO();
        amtAppCollInfoService.insertAppCollInfo(amtAppCollInfoVO);

        AmtAppMonitResltVO amtAppMonitResltVO = appDetailCommand.getAmtAppMonitResltVO();
        amtAppMonitResltVO.setAppSn(amtAppCollInfoVO.getAppSn());

        amtAppMonitResltService.insertAppMonitReslt(amtAppMonitResltVO);
    }
}
