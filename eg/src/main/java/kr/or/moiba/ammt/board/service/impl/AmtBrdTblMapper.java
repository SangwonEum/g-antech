package kr.or.moiba.ammt.board.service.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.MapKey;

import egovframework.rte.psl.dataaccess.mapper.Mapper;
import kr.or.moiba.ammt.board.service.AmtBrdAtchFileVO;
import kr.or.moiba.ammt.board.service.AmtBrdTblVO;
import kr.or.moiba.ammt.board.service.SearchPageNavigationBoardVO;

@Mapper
public interface AmtBrdTblMapper {

	List<AmtBrdTblVO> selectBrdTblList(SearchPageNavigationBoardVO searchPageNavigationBoardVO) throws Exception;

	int selectBrdTblTotCnt(SearchPageNavigationBoardVO searchPageNavigationBoardVO) throws Exception;

	// AmtAppBoardVO selectAppBoardInfoOne (@Param("num") int num) throws
	// Exception;
	// AmtBoardVO selectBoardInfoOne (AmtBoardVO amtBoardVO) throws Exception;
	Map<String, Map<String, Object>> selectBrdTblInfoOne(Map map) throws Exception;

	@MapKey("brdSn")
	List<AmtBrdTblVO> selectBrdTblSearch(SearchPageNavigationBoardVO searchPageNavigationBoardVO) throws Exception;

	int insertBrdTblInfo(AmtBrdTblVO amtBrdTblVO) throws Exception;
	
	int insertBrdAtchFileInfo(AmtBrdAtchFileVO amtBrdAtchFileVO) throws Exception;

}