package kr.or.moiba.ammt.common;

import com.google.common.base.Strings;
import kr.or.moiba.ammt.management.service.AmtUserInfoService;
import kr.or.moiba.ammt.management.service.AmtUserInfoVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springmodules.validation.commons.DefaultBeanValidator;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class PasswordController {

    private static final Logger LOGGER = LoggerFactory.getLogger(PasswordController.class);

    @Resource
    Validator validator;

    @InitBinder
    public void initBinder(WebDataBinder dataBinder){
        dataBinder.setValidator(this.validator);
    }

    /** Validator */
    @Resource(name = "beanValidator")
    protected DefaultBeanValidator beanValidator;

    @Autowired
    AmtUserInfoService amtUserInfoService;

    @RequestMapping("/password/check.do")
    public String passwordCheck(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
        model.addAttribute("amtUserInfoVO", new AmtUserInfoVO());
        return "password/check";
    }

    @RequestMapping("/password/change.do")
    public String passwordChange(@ModelAttribute("amtUserInfoVO") AmtUserInfoVO amtUserInfoVO, HttpSession session, Model model) throws Exception {
        LOGGER.info("{}", amtUserInfoVO);
        if (Strings.isNullOrEmpty(amtUserInfoVO.getUserNm())) {
            return "redirect:password/check.do";
        }
        AmtUserInfoVO loginVO = (AmtUserInfoVO)session.getAttribute("loginVO");
        amtUserInfoVO.setUserId(loginVO.getUserId());
        AmtUserInfoVO resultAmtUserInfoVO = amtUserInfoService.selectUserInfoOne(amtUserInfoVO);
        if (null != resultAmtUserInfoVO) {
            return "password/change";
        } else {
            model.addAttribute("error", "정보가 일치 하지 않습니다.");
            return "password/check";
        }
    }

    @RequestMapping("/password/changeAction.do")
    public String passwordChangeAction (@ModelAttribute("amtUserInfoVO") AmtUserInfoVO amtUserInfoVO, HttpSession session, Model model) throws Exception {
        AmtUserInfoVO loginVO = (AmtUserInfoVO)session.getAttribute("loginVO");
        LOGGER.info("{}", amtUserInfoVO);
        amtUserInfoVO.setUserId(loginVO.getUserId());
        amtUserInfoVO.setUserPw(new BCryptPasswordEncoder().encode(amtUserInfoVO.getUserPw()));
        LOGGER.info("{}", amtUserInfoVO);
        amtUserInfoService.updateUserInfoPassword(amtUserInfoVO);
        return "redirect:/j_spring_security_logout";
    }
}
