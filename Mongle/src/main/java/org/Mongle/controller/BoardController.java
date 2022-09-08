package org.Mongle.controller;

import org.Mongle.model.CommBoardVo;
import org.Mongle.model.CommCriterionVo;
import org.Mongle.model.CommPageVo;
import org.Mongle.model.NoticeVo;
import org.Mongle.model.ReviewVo;
import org.Mongle.Service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class BoardController {
	@Autowired
	BoardService bs;
	
	@RequestMapping(value = "/community/list", method = RequestMethod.GET)
	// 게시판 목록 리스트
	public String list(Model model,CommCriterionVo cri) {
		model.addAttribute("list", bs.list(cri));
		int total=bs.total(cri);
		model.addAttribute("paging", new CommPageVo(cri,total));
		return "/community/list";
	}
	
	// 게시판 상세 페이지
	@RequestMapping(value = "/community/detail", method = RequestMethod.GET)
	public String detail(CommBoardVo bvo, Model model) {
		System.out.println(bvo);
		model.addAttribute("detail", bs.detail(bvo));
		return "/community/detail";
	}
	@RequestMapping(value="/community/detailmd", method=RequestMethod.POST)
	public String detailmd(CommBoardVo bvo, Model model) {
		System.out.println(bvo);
		model.addAttribute("detailmd",bs.detail(bvo));
		return "/community/detailmd";
	}
	// 게시판 수정 및 삭제 페이지
	@RequestMapping(value = "/community/update", method = RequestMethod.POST)
	public String update(CommBoardVo bvo,RedirectAttributes rttr) {
		bs.update(bvo);
		rttr.addAttribute("bno", bvo.getBno());
		return "redirect:/community/detail";
	}
	@RequestMapping(value = "/community/delete", method = RequestMethod.POST)
	public String delete(CommBoardVo bvo) {
		bs.delete(bvo);
		return "redirect:/community/list";
	}
	
	// 게시판 글쓰기 페이지(화면)
	@RequestMapping(value="/community/write", method=RequestMethod.GET)
	public String write() {
		return "/community/write";
	}
	// 게시판 글쓰기 페이지(insert가 이루어짐)
	/*@RequestMapping(value="/board/write", method=RequestMethod.POST)
	public void writePost(String title,String content) {
		System.out.println(title);
		System.out.println(content);
		return content;////
	}*/
	@RequestMapping(value="/community/write", method=RequestMethod.POST)
	public String writePost(CommBoardVo bvo) {
		bs.write(bvo);
		return "redirect:/community/list";
	}
	//상품후기 게시판
	@RequestMapping(value="/community/review", method=RequestMethod.GET)
	public String rvlist(ReviewVo rev, Model model) {
		model.addAttribute("rvlist",bs.rvlist(rev));
		return "/community/review";
	}
	//공지목록
	@RequestMapping(value="/community/notice", method=RequestMethod.GET)
	public String notice(Model model, NoticeVo nv) {
		model.addAttribute("notice", bs.notice(nv));
		return "/community/notice";
	}
	@RequestMapping(value="/community/noticewrt", method=RequestMethod.GET)
	public String ntwrt() {
		return "/community/noticewrt";
	}
	@RequestMapping(value="/community/noticewrt", method=RequestMethod.POST)
	public String noticepo(NoticeVo nv) {
		bs.noticewrt(nv);
		return "redirect:/community/notice";
	}
	@RequestMapping(value = "/community/ntdetail", method = RequestMethod.GET)
	public String ntdetail(NoticeVo nv, Model model) {
		System.out.println(nv);
		model.addAttribute("ntdetail", bs.ntdetail(nv));
		return "/community/ntdetail";
	}
}
