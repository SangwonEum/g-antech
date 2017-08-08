package kr.or.moiba.ammt.app.service.impl;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import kr.or.moiba.ammt.app.service.AmtAppCollInfoVO;
import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by crom on 2017-07-12.
 */
@Mapper
public interface AmtAppCollInfoMapper {

    List<AmtAppCollInfoVO> selectAppCollInfoList(SearchPageNavigationVO searchVO) throws Exception;

    int selectAppCollInfoListTotCnt(SearchPageNavigationVO searchVO) throws Exception;

    AmtAppCollInfoVO selectAppCollInfoOne(SearchPageNavigationVO searchVO) throws Exception;

    int insertAppCollInfo(AmtAppCollInfoVO amtAppCollInfoVO) throws Exception;
}
