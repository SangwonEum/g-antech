package controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import models.commentDao;
import models.imgDao;
import models.latelyDao;
import models.mongoDao;
import models.mydeleteDao;

@Controller
@RequestMapping("/")
public class mydelete_controller {
		@Autowired
		mydeleteDao mdao;
		
		@Autowired
		imgDao iDao;
	
		@Autowired
		commentDao cdao;
		
		@Autowired
		latelyDao lDao;
		
		@Autowired
		mongoDao monDao;

		
	@RequestMapping("/mydelete")
	@ResponseBody
		public String mydelete(@RequestParam Map map, HttpSession session, @RequestParam(name="delpass")String password,
				HttpServletRequest req){
		Map dMap = new HashMap();
		ModelAndView mav = new ModelAndView();
		
		String Eemail = (String)session.getAttribute("email");
		dMap.put("Eemail", Eemail);
		dMap.put("password", password);
		Map bMap = new HashMap();
		bMap.put("email", Eemail);
		int r = mdao.mydelete(dMap);	
		String yesNo = "";
		File file2 = new File("/images/사진/");
		String file22 = file2.getPath();
		String realpath2 = (String)req.getRealPath(file22);
		Cookie[] cookies = req.getCookies();
		Map latelymap = new HashMap<>();
		List latelylist = new ArrayList<>();
		if (cookies != null) {
			int rr = cookies.length;
			System.out.println(rr);
			if (rr > 1) {
				for (Cookie cc : cookies) {
					if (!(cc.getName().equals("JSESSIONID"))) {
						int regNum = Integer.parseInt(cc.getValue());
						latelymap = lDao.getLatelyList(regNum);
						if(latelymap==null)
							latelymap = new HashMap<>();
						System.out.println(cc.getValue());

						String ar = monDao.OneImage(String.valueOf(regNum));
						latelymap.put("url", ar);
						System.out.println(ar);
						latelylist.add(latelymap);
					}
				}
			}

		}
		mav.addObject("size", latelylist.size());
		mav.addObject("list", latelylist);
		if(r == 1){
			iDao.imageDelete2(realpath2, Eemail);
			int bye = cdao.Byecomment(bMap);
			
			int b = mdao.mydeleteRoom(Eemail);
		System.out.println("딜리트 room  ===> "+b);
		session.removeAttribute("email");
		session.removeAttribute("id");
	
			yesNo ="YY";
		}else if(r == 0){
			
			yesNo = "NN";
		}
		return yesNo;
	
		
	}
		
}

















