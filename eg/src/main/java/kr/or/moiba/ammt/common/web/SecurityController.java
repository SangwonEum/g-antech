package kr.or.moiba.ammt.common.web;

import egovframework.rte.fdl.security.userdetails.util.EgovUserDetailsHelper;
import kr.or.moiba.ammt.management.service.AmtUserInfoVO;
import kr.or.moiba.ammt.common.service.EgovUserUtil;
import kr.or.moiba.ammt.common.service.SearchPageNavigationVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@SessionAttributes(types=AmtUserInfoVO.class)
public class SecurityController {
    private static final Logger LOGGER = LoggerFactory.getLogger(SecurityController.class);

    /**
     * 로그인 화면으로 들어간다
     */
    @RequestMapping(value = "/security/login.do")
    public String securityLogin(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
        AmtUserInfoVO amtUserInfoVO = EgovUserUtil.getAmtUserInfo();
        if (amtUserInfoVO != null) {
            model.addAttribute("SearchPageNavigationVO", new SearchPageNavigationVO());
            return "app/list";
        } else {
            model.addAttribute("error", request.getParameter("error"));
            return "security/login";
        }
    }

    @RequestMapping(value = "/security/accessDenied.do")
    public String securityAccessDenied(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
        return "security/accessDenied";
    }



    @RequestMapping(value = "/security/logoutSuccess.do")
    public String securityLogoutSuccess(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
        return "security/logoutSuccess";
    }

    @RequestMapping(value = "/security/loginFailure.do")
    public String securityLoginFailure(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
        return "security/loginFailure";
    }

    @RequestMapping(value = "/security/concurrentExpired.do")
    public String securityConcurrentExpired(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
        return "security/concurrentExpired";
    }

    @RequestMapping(value = "/security/loginSuccess.do")
    public String securityLoginSuccess(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
        Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
        AmtUserInfoVO loginVO = EgovUserUtil.getAmtUserInfo();
        if (!isAuthenticated) {
            return "security/login";
        } else {
            model.addAttribute("loginVO", loginVO);
            return "/";
        }
    }
}
