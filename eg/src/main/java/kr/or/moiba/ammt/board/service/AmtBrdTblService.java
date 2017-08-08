package kr.or.moiba.ammt.board.service;

import java.util.List;
import java.util.Map;



public interface AmtBrdTblService {
	
	List<AmtBrdTblVO> selectBrdTblList(SearchPageNavigationBoardVO searchPageNavigationBoardVO) throws Exception;
	
	int selectBrdTblTotCnt(SearchPageNavigationBoardVO searchPageNavigationBoardVO) throws Exception;
	
	//AmtBrdTblVO selectBoardInfoOne (AmtBrdTblVO AmtBrdTblVO) throws Exception;
	Map<String, Map<String, Object>> selectBrdTblInfoOne (Map map) throws Exception;
	
	List<AmtBrdTblVO> selectBrdTblSearch (SearchPageNavigationBoardVO searchPageNavigationBoardVO) throws Exception;

	
	int insertBrdTblInfo(AmtBrdTblVO amtBrdTblVO) throws Exception;
	
	int insertBrdAtchFileInfo(AmtBrdAtchFileVO amtBrdAtchFileVO) throws Exception;



}
