package com.dino.root;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dino.root.service.MemberService;
import com.dino.root.vo.MemberVO;

@Controller
public class RootController {
    
    private static final Logger logger = LoggerFactory.getLogger(RootController.class);
    private MemberService memberService;
    
    public RootController() {
    	memberService = new MemberService(); 
	}


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home() {
        logger.info("Welcome to the home page!");
        return "game";
    }
    

    @RequestMapping(value = "/login.do", method = RequestMethod.GET)
    public String login() {
        return "login";
    }


    @RequestMapping(value = "/login.do", method = RequestMethod.POST)
    public String loginPost(@RequestParam("userid") String userid,
                            @RequestParam("password") String password, 
                            HttpServletRequest req) {

        try {
            if (memberService.login(userid, password)) {
                return "redirect:/game";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "login";
    }


    @RequestMapping(value = "/signup.do", method = RequestMethod.GET)
    public String signup() {
        return "signup";
    }


    @RequestMapping(value = "/signup.do", method = RequestMethod.POST)
    public String signupPost(HttpServletRequest req) {

        String userid = req.getParameter("userid");
        String password = req.getParameter("password");
        String username = req.getParameter("username");
        MemberVO member = new MemberVO(userid, password, username);



        try {
            memberService.signup(member);
        } catch (Exception e) {
            e.printStackTrace();
            return "signup";
        }
        return "redirect:/login.do";
    }


    @RequestMapping(value = "/ranking.do", method = RequestMethod.GET)
    public String ranking() {
        return "ranking";
    }


    @RequestMapping(value = "/game", method = RequestMethod.GET)
    public String game() {
        return "game";
    }
}
