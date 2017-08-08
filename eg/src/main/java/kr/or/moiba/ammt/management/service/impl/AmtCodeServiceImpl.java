package kr.or.moiba.ammt.management.service.impl;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import kr.or.moiba.ammt.management.service.AmtCdMstVO;
import kr.or.moiba.ammt.management.service.AmtCdSubVO;
import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import kr.or.moiba.ammt.management.service.AmtCodeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AmtCodeServiceImpl extends EgovAbstractServiceImpl implements AmtCodeService {

    private static final Logger LOGGER = LoggerFactory.getLogger(AmtCodeServiceImpl.class);

    @Autowired
    AmtCdMstMapper amtCdMstMapper;

    @Autowired
    AmtCdSubMapper amtCdSubMapper;

    @Override
    public List<AmtCdMstVO> selectCdMstList(SearchPageNavigationVO searchPageNavigationVO) throws Exception {
        return amtCdMstMapper.selectCdMstList(searchPageNavigationVO);
    }

    @Override
    public List<AmtCdSubVO> selectCdSubList(SearchPageNavigationVO searchPageNavigationVO) throws Exception {
        return amtCdSubMapper.selectCdSubList(searchPageNavigationVO);
    }

    /*public Map<String, String> selectCdSubMap(SearchPageNavigationVO searchPageNavigationVO) {
        List<EgovMap> resultList = (List<EgovMap>) selectCdSubList(searchPageNavigationVO);
        resultList.forEach(x->{
            LOGGER.warn("{}:{}", x.get("subCd"), x.get("subCdNm"));
        });
        Map<String, String> map = null;
        try {
            map = resultList.stream().collect(Collectors.toMap(x -> x.get("subCd").toString(), x -> x.get("subCdNm").toString()));
        } catch (IllegalStateException e) {
            LOGGER.error("{}", e.getMessage());
        }
        return map;
    }*/

    @Override
    public AmtCdSubVO selectCdSubOne(AmtCdSubVO amtCdSubVO) throws Exception {
        return amtCdSubMapper.selectCdSubOne(amtCdSubVO);
    }

    @Override
    public List<AmtCdSubVO> selectCdSubListByMstCd(String mstCd) throws Exception {
        SearchPageNavigationVO searchPageNavigationVO = new SearchPageNavigationVO();
        searchPageNavigationVO.setMstCd(mstCd);
        return this.selectCdSubList(searchPageNavigationVO);
    }
}
