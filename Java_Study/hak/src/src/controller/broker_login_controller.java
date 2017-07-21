package src.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import models.brokerchangeDao;
import models.informationDao;
import models.latelyDao;
import models.loginDao;
import models.massageDao;
import models.mongoDao;
import models.newsDao;


@Controller
@RequestMapping("/")
public class broker_login_controller {
	@Autowired
	latelyDao lDao;
	@Autowired
	mongoDao mDao;
	@Autowired
	newsDao nDao;
	@Autowired
	loginDao loDao;
	@Autowired	
	brokerchangeDao bDao;
	
	@Autowired
	informationDao infoDao;
	
	@Autowired
	massageDao msgdao;
	
	@RequestMapping("/brokerlogin")
	public ModelAndView brokerlogin(HttpSession session, @RequestParam Map map,
			HttpServletRequest req){
		ModelAndView mav = new ModelAndView();
		Map map1 = new HashMap<>();
		
		map1 = loDao.brokerLogin(map);
		
		System.out.println(map.toString());
		if(map1 !=null){
			session.setAttribute("id1", map1.get("BK_REGNAME"));
			session.setAttribute("brokerid", map1.get("ID"));
			// 履쎌�.=========================
						List list1 = new ArrayList();
						Map msgmap = new HashMap();
					
						msgmap.put("email", map1.get("ID"));
						list1 = msgdao.msgfind(msgmap);
						if(list1 != null){
							
							mav.addObject("msglist1",list1);
							
						}else{
							
						}
						
						// 履쎌�....=========================
//						mav.addObject("msg","濡쒓렇�씤�씠 �릺�뀲�뒿�땲�떎.");
			
			
		//	mav.addObject("msg","嚥≪뮄�젃占쎌뵥占쎈퓠 占쎄쉐�⑤벏六쏙옙�뮸占쎈빍占쎈뼄.");
			mav.setViewName("t_main");

			}else{
				
				mav.addObject("msg","占쎌뵠筌롫뗄�뵬占쎌뵠占쎄돌 �뜮袁⑨옙甕곕뜇�깈�몴占� 占쎈뼄占쎈뻻 占쎌뿯占쎌젾占쎈릭占쎄쉭占쎌뒄.");
				mav.setViewName("t_main");
				
			}
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

						String ar = mDao.OneImage(String.valueOf(regNum));
						latelymap.put("url", ar);
						System.out.println(ar);
						latelylist.add(latelymap);
					}
				}
			}

		}
		List information = infoDao.getTitle();
		mav.addObject("infolist",information);
		List news = nDao.get_news();
		mav.addObject("news",news);
		mav.addObject("size", latelylist.size());
		mav.addObject("list", latelylist);
		return mav;
		}
	
		
	
	
	
}
