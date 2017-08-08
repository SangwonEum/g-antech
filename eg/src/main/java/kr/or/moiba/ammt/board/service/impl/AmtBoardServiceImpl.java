package kr.or.moiba.ammt.board.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import kr.or.moiba.ammt.board.service.AmtBrdAtchFileVO;
import kr.or.moiba.ammt.board.service.AmtBrdTblService;
import kr.or.moiba.ammt.board.service.AmtBrdTblVO;
import kr.or.moiba.ammt.board.service.SearchPageNavigationBoardVO;



@Service
public class AmtBoardServiceImpl extends EgovAbstractServiceImpl implements AmtBrdTblService {

	@Autowired
	AmtBrdTblMapper amtBrdTblMapper;

	@Override
	public List<AmtBrdTblVO>selectBrdTblList(SearchPageNavigationBoardVO searchPageNavigationBoardVO) throws Exception {
		// TODO Auto-generated method stub
		return amtBrdTblMapper.selectBrdTblList(searchPageNavigationBoardVO);
	}

	@Override
	public int selectBrdTblTotCnt(SearchPageNavigationBoardVO searchPageNavigationBoardVO) throws Exception {
		// TODO Auto-generated method stub
		return amtBrdTblMapper.selectBrdTblTotCnt(searchPageNavigationBoardVO);
	}

	@Override
	public Map<String, Map<String, Object>> selectBrdTblInfoOne(Map map) throws Exception {
		// TODO Auto-generated method stub
		return amtBrdTblMapper.selectBrdTblInfoOne(map);
		
	}

	@Override
	public List<AmtBrdTblVO> selectBrdTblSearch(SearchPageNavigationBoardVO searchPageNavigationBoardVO)
			throws Exception {
		// TODO Auto-generated method stub
		return  amtBrdTblMapper.selectBrdTblSearch(searchPageNavigationBoardVO);
	}

	@Override
	public int insertBrdTblInfo(AmtBrdTblVO amtBrdTblVO) throws Exception {
		// TODO Auto-generated method stub
		return amtBrdTblMapper.insertBrdTblInfo(amtBrdTblVO);
	}

	@Override
	public int insertBrdAtchFileInfo(AmtBrdAtchFileVO amtBrdAtchFileVO) throws Exception {
		// TODO Auto-generated method stub
		return amtBrdTblMapper.insertBrdAtchFileInfo(amtBrdAtchFileVO);
	}



	
}