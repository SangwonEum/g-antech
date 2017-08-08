package kr.or.moiba.ammt.common.web;

import kr.or.moiba.ammt.common.service.EgovFileMngUtil;
import kr.or.moiba.ammt.management.service.AmtCodeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Controller
public class CommonController {
    private static final Logger LOGGER = LoggerFactory.getLogger(CommonController.class);

    @Autowired
    AmtCodeService amtCodeService;

    @Resource(name = "EgovFileMngUtil")
    private EgovFileMngUtil fileUtil;


    @RequestMapping(value = {"/index.do"}, method = RequestMethod.GET)
    public String index() throws Exception {
        return "index";
    }

    @RequestMapping(value = "/json.do", produces = MediaType.APPLICATION_JSON_VALUE, method = RequestMethod.POST)
    public @ResponseBody Map<String, Map<String, Object>> selectSeasonTeam(@RequestBody Map<String, Object> param) throws Exception {
        LOGGER.info("{}", param);
        Map<String, Map<String, Object>> map = new HashMap<>();
        map.put("param", param);
        return map;
    }

    @RequestMapping(value = "/Access_Denied.do", method = RequestMethod.GET)
    public String accessDeniedPage(ModelMap model) throws Exception {
        model.addAttribute("user", getPrincipal());
        return "accessDenied";
    }

    @RequestMapping(value = {"/file/index.do"})
    public String fileIndex() throws Exception {
        return "file/index";
    }

    @RequestMapping(value = {"/file/fileUpload.do"})
    public String commonFileUpload(final MultipartHttpServletRequest multiRequest, ModelMap model) throws Exception {
        final Map<String, MultipartFile> files = multiRequest.getFileMap();
        if (!files.isEmpty()) {
            fileUtil.parseFileInf(files, "BBS_", 0, "", "");
        }

        LOGGER.warn("{}", files.size());
        files.forEach((k, v) -> {
            LOGGER.warn("{}", k);
        });
        return "file/ok";
    }


    private String getPrincipal() {
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            userName = ((UserDetails) principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }
}
