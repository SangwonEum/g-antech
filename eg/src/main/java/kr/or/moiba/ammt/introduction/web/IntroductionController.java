package kr.or.moiba.ammt.introduction.web;

import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IntroductionController {
    private static final Logger LOGGER = LoggerFactory.getLogger(IntroductionController.class);

    @RequestMapping("/introduction/guide.do")
    public String introductionGuide(@ModelAttribute("searchPageNavigationVO") SearchPageNavigationVO searchPageNavigationVO, ModelMap model) throws Exception {
        return "introduction/guide";
    }

    @RequestMapping("/introduction/clause.do")
    public String introductionClause(@ModelAttribute("searchPageNavigationVO") SearchPageNavigationVO searchPageNavigationVO, ModelMap model) throws Exception {
        return "introduction/clause";
    }
}
