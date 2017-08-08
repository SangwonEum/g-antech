package kr.or.moiba.ammt.app.web;

import egovframework.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import kr.or.moiba.ammt.app.service.*;
import kr.or.moiba.ammt.common.service.*;
import kr.or.moiba.ammt.management.service.AmtCodeService;
import kr.or.moiba.ammt.management.service.AmtUserInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AppController {
    private static final Logger LOGGER = LoggerFactory.getLogger(AppController.class);

    @Autowired
    AmtAppCollInfoService amtAppCollInfoService;

    @Autowired
    AmtCodeService amtCodeService;

    @Autowired
    AmtAppSrcShotService amtAppSrcShotService;

    @Autowired
    AmtUserInfoService amtUserInfoService;

    @Autowired
    AppService appService;

    @Autowired
    AmtDevInfoService amtDevInfoService;

    @Resource(name = "EgovFileMngUtil")
    private EgovFileMngUtil fileUtil;

    @RequestMapping(value = "/app/list.do")
    public String listGet(@ModelAttribute("SearchPageNavigationVO") SearchPageNavigationVO searchPageNavigationVO, Model model) throws Exception {
        LOGGER.info("{}", searchPageNavigationVO);

       
        PaginationInfo paginationInfo = new PaginationInfo();
        paginationInfo.setCurrentPageNo(searchPageNavigationVO.getPageIndex());
        paginationInfo.setRecordCountPerPage(searchPageNavigationVO.getPageUnit());
        paginationInfo.setPageSize(searchPageNavigationVO.getPageSize());

        searchPageNavigationVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
        searchPageNavigationVO.setLastIndex(paginationInfo.getLastRecordIndex());
        searchPageNavigationVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

        List<AmtAppCollInfoVO> datas = amtAppCollInfoService.selectAppCollInfoList(searchPageNavigationVO);
        if (null != datas) {
            model.addAttribute("resultList", datas);
        }
        int totCnt = amtAppCollInfoService.selectAppCollInfoListTotCnt(searchPageNavigationVO);
        paginationInfo.setTotalRecordCount(totCnt);
        model.addAttribute("paginationInfo", paginationInfo);

        //마켓
        model.addAttribute("mktMap", amtCodeService.selectCdSubListByMstCd("MK_T"));
        //카테고리
        model.addAttribute("clatMap", amtCodeService.selectCdSubListByMstCd("CLA_T"));
        //등급
        model.addAttribute("appgMap", amtCodeService.selectCdSubListByMstCd("APP_G"));
        //앱상태
        model.addAttribute("appsMap", amtCodeService.selectCdSubListByMstCd("APP_S"));
        //담당자
        model.addAttribute("userList", amtUserInfoService.selectUserInfoList(new SearchPageNavigationVO()));
        return "app/list";
    }

    @RequestMapping(value = "/app/detail.do", method = RequestMethod.GET)
    public String detailGet(@ModelAttribute("SearchPageNavigationVO") SearchPageNavigationVO searchPageNavigationVO, Model model) throws Exception {
        LOGGER.info(searchPageNavigationVO.toString());

        //마켓
        model.addAttribute("mktMap", amtCodeService.selectCdSubListByMstCd("MK_T"));
        //카테고리
        model.addAttribute("clatMap", amtCodeService.selectCdSubListByMstCd("CLA_T"));
        //등급
        model.addAttribute("appgMap", amtCodeService.selectCdSubListByMstCd("APP_G"));
        //결제방법
        model.addAttribute("paytMap", amtCodeService.selectCdSubListByMstCd("PAY_T"));
        //앱상태
        model.addAttribute("appsMap", amtCodeService.selectCdSubListByMstCd("APP_S"));
        //통화
        model.addAttribute("priuMap", amtCodeService.selectCdSubListByMstCd("PRI_U"));
        //위반사항
        model.addAttribute("viotMap", amtCodeService.selectCdSubListByMstCd("VIO_T"));
        //담당자
        model.addAttribute("userList", amtUserInfoService.selectUserInfoList(new SearchPageNavigationVO()));


        AmtAppCollInfoVO amtAppCollInfoVO = new AmtAppCollInfoVO();
        amtAppCollInfoVO.setCollType("USER");
        amtAppCollInfoVO.setCollDate(new SimpleDateFormat("yyyyMMdd").format(new Date()));

        AppDetailCommand appDetailCommand = new AppDetailCommand();
        appDetailCommand.setAmtAppCollInfoVO(amtAppCollInfoVO);

        model.addAttribute("appDetailCommand", appDetailCommand);
        return "app/detail";
    }

    @RequestMapping(value = "/app/detail.do", method = RequestMethod.POST)
    public String detailPost(@ModelAttribute("SearchPageNavigationVO") SearchPageNavigationVO searchPageNavigationVO, Model model) throws Exception {
        LOGGER.info("{}", searchPageNavigationVO);

        PaginationInfo paginationInfo = new PaginationInfo();
        paginationInfo.setCurrentPageNo(searchPageNavigationVO.getPageIndex());
        paginationInfo.setRecordCountPerPage(searchPageNavigationVO.getPageUnit());
        paginationInfo.setPageSize(searchPageNavigationVO.getPageSize());

        searchPageNavigationVO.setFirstIndex(paginationInfo.getFirstRecordIndex());
        searchPageNavigationVO.setLastIndex(paginationInfo.getLastRecordIndex());
        searchPageNavigationVO.setRecordCountPerPage(paginationInfo.getRecordCountPerPage());

        //마켓
        model.addAttribute("mktMap", amtCodeService.selectCdSubListByMstCd("MK_T"));
        //카테고리
        model.addAttribute("clatMap", amtCodeService.selectCdSubListByMstCd("CLA_T"));
        //등급
        model.addAttribute("appgMap", amtCodeService.selectCdSubListByMstCd("APP_G"));
        //결제방법
        model.addAttribute("paytMap", amtCodeService.selectCdSubListByMstCd("PAY_T"));
        //앱상태
        model.addAttribute("appsMap", amtCodeService.selectCdSubListByMstCd("APP_S"));
        //통화
        model.addAttribute("priuMap", amtCodeService.selectCdSubListByMstCd("PRI_U"));
        //위반사항
        model.addAttribute("viotMap", amtCodeService.selectCdSubListByMstCd("VIO_T"));
        //담당자
        model.addAttribute("userList", amtUserInfoService.selectUserInfoList(new SearchPageNavigationVO()));

        AppDetailCommand appDetailCommand = new AppDetailCommand();
        AmtAppCollInfoVO amtAppCollInfoVO = amtAppCollInfoService.selectAppCollInfoOne(searchPageNavigationVO);
        //수집된 앱, 개발사 정보
        appDetailCommand.setAmtAppCollInfoVO(amtAppCollInfoVO);
        //스크린샷
        appDetailCommand.setAmtAppScrShotVOList(amtAppSrcShotService.selectAppScrShotList(searchPageNavigationVO));

        model.addAttribute("appDetailCommand", appDetailCommand);

        return "app/detail";
    }

    @RequestMapping(value = "/app/insert.do", method = RequestMethod.POST)
    public String insertPost(@ModelAttribute("SearchPageNavigationVO") SearchPageNavigationVO searchPageNavigationVO, 
    		@ModelAttribute("appDetailCommand") AppDetailCommand appDetailCommand, final MultipartHttpServletRequest multiRequest, ModelMap model) throws Exception {

        LOGGER.info("{}", appDetailCommand.getAmtAppCollInfoVO());
        LOGGER.info("{}", appDetailCommand.getAmtAppMonitResltVO());
        LOGGER.info("{}", appDetailCommand.getViolClausCds());
        LOGGER.info("{}", searchPageNavigationVO);

        final Map<String, MultipartFile> files = multiRequest.getFileMap();

        LOGGER.info("size : {}", files.size());


        List<FileVO> fileVOList = null;
        if (!files.isEmpty()) {
            fileVOList = fileUtil.parseFileInf(files, "SCR_", 0, "ASD", "StorePath.APP");
            fileVOList.forEach(x -> {
                LOGGER.info("{}", x);
            });
        }

        appService.insertPost(appDetailCommand);
        return "redirect:/app/list.do";
    }

    @RequestMapping(value = "/app/update.do", method = RequestMethod.POST)
    public String updatePost(@ModelAttribute("SearchPageNavigationVO") SearchPageNavigationVO searchPageNavigationVO, final MultipartHttpServletRequest multiRequest, Model model) throws Exception {
        LOGGER.info("{}", searchPageNavigationVO);
        return "redirect:/app/list.do";
    }

    @RequestMapping(value = "/app/mail.do")
    public String appMail(@ModelAttribute("SearchPageNavigationVO") SearchPageNavigationVO searchPageNavigationVO, Model model) throws Exception {
        return "app/mail";
    }


    @RequestMapping(value = "/app/devInfo.do", produces = MediaType.APPLICATION_JSON_VALUE, method = RequestMethod.POST)
    public @ResponseBody List<?> selectSeasonTeam(@RequestBody Map<String, Object> map) throws Exception {
        LOGGER.info("{}", map);
        List<?> result = amtDevInfoService.selectDevInfoList(map);
        return result;
    }
}
