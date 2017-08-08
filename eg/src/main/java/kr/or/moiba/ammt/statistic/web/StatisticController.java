package kr.or.moiba.ammt.statistic.web;

import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StatisticController {
    private static final Logger LOGGER = LoggerFactory.getLogger(StatisticController.class);

    @RequestMapping(value = "/statistic/store.do")
    public String statisticStore(@ModelAttribute("searchPageNavigationVO") SearchPageNavigationVO searchPageNavigationVO, ModelMap model) throws Exception {
        return "statistic/store";
    }

    @RequestMapping(value = "/statistic/monitoring.do")
    public String statisticMonitoring(@ModelAttribute("searchPageNavigationVO") SearchPageNavigationVO searchPageNavigationVO, ModelMap model) throws Exception {
        return "statistic/monitoring";
    }

    @RequestMapping(value = "/statistic/violation.do")
    public String statisticViolation(@ModelAttribute("searchPageNavigationVO") SearchPageNavigationVO searchPageNavigationVO, ModelMap model) throws Exception {
        return "statistic/violation";
    }
}
