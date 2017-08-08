package kr.or.moiba.ammt.management.web;

import kr.or.moiba.ammt.app.service.AmtAppMonitResltService;
import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ManagementController {
    private static final Logger LOGGER = LoggerFactory.getLogger(ManagementController.class);

    @Autowired
    AmtAppMonitResltService amtAppMonitResltService;

    @RequestMapping(value = "/management/user.do")
    public String managementUser(@ModelAttribute("searchPageNavigationVO") SearchPageNavigationVO searchPageNavigationVO, ModelMap model) throws Exception {
        return "management/user";
    }

    @RequestMapping(value = "/management/menu.do")
    public String managementMenu(@ModelAttribute("searchPageNavigationVO") SearchPageNavigationVO searchPageNavigationVO, ModelMap model) throws Exception {
        return "management/menu";
    }

    @RequestMapping(value = "/management/code.do")
    public String managementCode(@ModelAttribute("searchPageNavigationVO") SearchPageNavigationVO searchPageNavigationVO, ModelMap model) throws Exception {
        return "management/code";
    }

    @RequestMapping(value = "/management/collection.do")
    public String managementCollection(@ModelAttribute("searchPageNavigationVO") SearchPageNavigationVO searchPageNavigationVO, ModelMap model) throws Exception {
        return "management/collection";
    }

    @RequestMapping(value = "/management/crawler.do")
    public String managementCrawler(@ModelAttribute("searchPageNavigationVO") SearchPageNavigationVO searchPageNavigationVO, ModelMap model) throws Exception {
        return "management/crawler";
    }
}
