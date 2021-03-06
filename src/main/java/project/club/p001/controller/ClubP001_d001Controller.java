package project.club.p001.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

public interface ClubP001_d001Controller {
	public ModelAndView clubMain(HttpSession session) throws Exception;
	public ModelAndView detailClub(String c_id, HttpSession session, HttpServletRequest request) throws Exception;
	public ModelAndView searchClubListHashTag(String searchWord) throws Exception;
	public ModelAndView searchClubList(String searchWord, int curPage) throws Exception;
	public ModelAndView searchClubCategory(String c_category, int curPage) throws Exception;
}
