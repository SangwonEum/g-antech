package kr.or.moiba.ammt.board.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import kr.or.moiba.ammt.management.service.AmtCodeService;
import kr.or.moiba.ammt.management.service.AmtUserInfoVO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import kr.or.moiba.ammt.app.service.AppDetailCommand;
import kr.or.moiba.ammt.app.web.AppController;
import kr.or.moiba.ammt.board.service.AmtBrdTblService;
import kr.or.moiba.ammt.board.service.AmtBrdTblVO;
import kr.or.moiba.ammt.board.service.SearchPageNavigationBoardVO;
import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;

@Controller
public class BoardController {
	private static final Logger LOGGER = LoggerFactory.getLogger(AppController.class);

	@Autowired
	AmtBrdTblService amtBrdTbleService;

	@Autowired

	AmtCodeService amtCodeService;

	// 자료실
	@RequestMapping(value = "/board/pds.do")
	public String announce(
			@ModelAttribute("SearchPageNavigationBoardVO") SearchPageNavigationBoardVO searchPageNavigationBoardVO,
			ModelMap model, HttpServletRequest request) throws Exception {
		LOGGER.info("{}", searchPageNavigationBoardVO);

		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchPageNavigationBoardVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(searchPageNavigationBoardVO.getPageUnit());
		paginationInfo.setPageSize(searchPageNavigationBoardVO.getPageSize());

		searchPageNavigationBoardVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchPageNavigationBoardVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchPageNavigationBoardVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

		List<AmtBrdTblVO> datas = amtBrdTbleService.selectBrdTblList(searchPageNavigationBoardVO);

		if (null != datas) {
			model.addAttribute("resultList", datas);
		}
		int totCnt = amtBrdTbleService.selectBrdTblTotCnt(searchPageNavigationBoardVO);
		paginationInfo.setTotalRecordCount(totCnt);

		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("boardSN", amtCodeService.selectCdSubListByMstCd("BRD_SN"));
		model.addAttribute("boardConts", amtCodeService.selectCdSubListByMstCd("BRD_CONTS"));
		return "board/list";
	}

	@RequestMapping(value = "/board/notice.do")
	public String announce(
			@ModelAttribute("SearchPageNavigationBoardVO") SearchPageNavigationBoardVO searchPageNavigationBoardVO,
			ModelMap model
			,	@ModelAttribute("AmtBrdTblVO") AmtBrdTblVO amtBrdTblVO
			) throws Exception {
		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchPageNavigationBoardVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(searchPageNavigationBoardVO.getPageUnit());
		paginationInfo.setPageSize(searchPageNavigationBoardVO.getPageSize());

		searchPageNavigationBoardVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchPageNavigationBoardVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchPageNavigationBoardVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

		List<AmtBrdTblVO> datas = amtBrdTbleService.selectBrdTblList(searchPageNavigationBoardVO);
		List<AmtBrdTblVO> searchDatas = amtBrdTbleService.selectBrdTblSearch(searchPageNavigationBoardVO);
		if (null != datas) {
			model.addAttribute("resultList", datas);
		}
		if (null != searchDatas) {
			model.addAttribute("resultList", searchDatas);
		}
		int totCnt = amtBrdTbleService.selectBrdTblTotCnt(searchPageNavigationBoardVO);
		paginationInfo.setTotalRecordCount(totCnt);
		
		
		LOGGER.info("datas {}", datas);
		LOGGER.info("datas size {}", datas.size());
		LOGGER.info("searchDatas  {}", searchDatas);
		LOGGER.info("searchDatas size {}", searchDatas.size());
		LOGGER.info("{}", searchPageNavigationBoardVO);
		LOGGER.info("{}", amtBrdTblVO);
		LOGGER.info("{}", searchDatas);
		LOGGER.info("{}", paginationInfo);

		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("boardSN", amtCodeService.selectCdSubListByMstCd("BRD_SN"));
		model.addAttribute("boardConts", amtCodeService.selectCdSubListByMstCd("BRD_CONTS"));

		return "board/list";

	}

	@RequestMapping(value = "/board/insert.do", method = RequestMethod.POST)
	public String insertBoard(
			@ModelAttribute("SearchPageNavigationBoardVO") SearchPageNavigationBoardVO searchPageNavigationBoardVO,
			@ModelAttribute("AmtBrdTblVO") AmtBrdTblVO amtBrdTblVO,
			HttpSession session,
//			, final MultipartHttpServletRequest multiRequest,
			ModelMap model) throws Exception{
	
		
		AmtUserInfoVO loginVO = (AmtUserInfoVO)session.getAttribute("loginVO");
		loginVO.getUserId();
	
		
		PaginationInfo paginationInfo = new PaginationInfo();
		paginationInfo.setCurrentPageNo(searchPageNavigationBoardVO.getPageIndex());
		paginationInfo.setRecordCountPerPage(searchPageNavigationBoardVO.getPageUnit());
		paginationInfo.setPageSize(searchPageNavigationBoardVO.getPageSize());

		searchPageNavigationBoardVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
		searchPageNavigationBoardVO.setLastIndex(paginationInfo.getLastRecordIndex());
		searchPageNavigationBoardVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
		
		amtBrdTblVO.setInptId(loginVO.getUserId());

		List<AmtBrdTblVO> datas = amtBrdTbleService.selectBrdTblList(searchPageNavigationBoardVO);
		List<AmtBrdTblVO> searchDatas = amtBrdTbleService.selectBrdTblSearch(searchPageNavigationBoardVO);

		if (null != datas) {
			model.addAttribute("resultList", datas);
		}
		if (null != searchDatas) {
			model.addAttribute("resultList", searchDatas);
		}
		int totCnt = amtBrdTbleService.selectBrdTblTotCnt(searchPageNavigationBoardVO);
		paginationInfo.setTotalRecordCount(totCnt);

		model.addAttribute("paginationInfo", paginationInfo);
		model.addAttribute("boardSN", amtCodeService.selectCdSubListByMstCd("BRD_SN"));
		model.addAttribute("boardConts", amtCodeService.selectCdSubListByMstCd("BRD_CONTS"));
		
		int result =  amtBrdTbleService.insertBrdTblInfo(amtBrdTblVO);
		
		LOGGER.info("{}", searchDatas);
		LOGGER.info("{}", "/board/insert.do");
		LOGGER.info("{}", searchPageNavigationBoardVO);
		LOGGER.info("{}", amtBrdTblVO);
		LOGGER.info("result :{} ", result);
		LOGGER.info("loginVO : {}", loginVO.getUserId());
		

		return "redirect:/board/notice.do";

	}

	@RequestMapping(value = "/board/detail.do", produces = MediaType.APPLICATION_JSON_VALUE, method = RequestMethod.POST)
	public @ResponseBody Map<String, Map<String, Object>> selectBoardDetail(@RequestBody Map<String, Object> param)
			throws Exception {

		Map<String, Map<String, Object>> map = new HashMap<>();
		map = amtBrdTbleService.selectBrdTblInfoOne(param);

		
		LOGGER.info("param{}", param);
		LOGGER.info("map: {}", map);	

		return map;
	}
//
//	@RequestMapping(value = "/board/search.do")
//	public String search(
//			@ModelAttribute("SearchPageNavigationBoardVO") SearchPageNavigationBoardVO searchPageNavigationBoardVO,
//			@ModelAttribute("") ModelMap model) throws Exception {
//
//		PaginationInfo paginationInfo = new PaginationInfo();
//		paginationInfo.setCurrentPageNo(searchPageNavigationBoardVO.getPageIndex());
//		paginationInfo.setRecordCountPerPage(searchPageNavigationBoardVO.getPageUnit());
//		paginationInfo.setPageSize(searchPageNavigationBoardVO.getPageSize());
//
//		searchPageNavigationBoardVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
//		searchPageNavigationBoardVO.setLastIndex(paginationInfo.getLastRecordIndex());
//		searchPageNavigationBoardVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());
//
//		return null;
//
//	}

}
