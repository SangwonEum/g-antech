package kr.or.moiba.ammt.common.service.impl;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import kr.or.moiba.ammt.common.service.CommonService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
public class CommonServiceImpl extends EgovAbstractServiceImpl implements CommonService {

    private static final Logger LOGGER = LoggerFactory.getLogger(CommonServiceImpl.class);
}
