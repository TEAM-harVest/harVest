package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.BoardDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.service.BoardService;

@Controller
public class BoardController {
	
	@Inject
	private BoardService boardService;
	
	// 하단 푸터 목록
	
	// 공지사항 리스트
	@RequestMapping(value = "/board/notices", method = RequestMethod.GET)
	public String list(Model model, HttpServletRequest request) {
		int pageSize=5;
		String pageNum=request.getParameter("pageNum");
		if(pageNum==null) {
			pageNum="1";
		}
		int currentPage=Integer.parseInt(pageNum);
		
		PageDTO pageDTO=new PageDTO();
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);
		pageDTO.setCurrentPage(currentPage);
		
		List<BoardDTO> boardList = boardService.getBoardList(pageDTO);
		
		int count=boardService.getBoardCount();
		int pageBlock=5;
		int startPage=(currentPage-1)/pageBlock*pageBlock+1;
		int endPage=startPage+pageBlock-1;
		int pageCount=count/pageSize+(count%pageSize== 0 ? 0 : 1);
		if(endPage>pageCount) {
			endPage=pageCount;
		}
		pageDTO.setCount(pageCount);
		pageDTO.setPageBlock(pageBlock);
		pageDTO.setStartPage(startPage);
		pageDTO.setEndPage(endPage);
		pageDTO.setPageCount(pageCount);
		
		model.addAttribute("boardList", boardList);
		model.addAttribute("pageDto",pageDTO);
		return "board/notice";
	} 
	
	// 공지사항 상세보기
	@RequestMapping(value = "/board/content", method = RequestMethod.GET)
	public String content(Model model, HttpServletRequest request) {
		int idx=Integer.parseInt(request.getParameter("idx"));
		BoardDTO boardDTO=boardService.getBoard(idx);
		model.addAttribute("boardDTO", boardDTO);
		return "center/content";
	} 
	
	// 창작자 가이드
	@RequestMapping(value = "/footer/guide", method = RequestMethod.GET)
	public String guide() {
		return "board/guide";
	}
	
	// 수수료 안내
	@RequestMapping(value = "/footer/feeInfo", method = RequestMethod.GET)
	public String info() {
		return "board/feeInfo";
	}
	
//	// 이용약관
//	@RequestMapping(value = "/footer/agreement", method = RequestMethod.GET)
//	public String agreement() {
//		return "board/agreement";
//	}
//	
//	// 개인정보 처리방침
//	@RequestMapping(value = "/footer/agreement", method = RequestMethod.GET)
//	public String agreement() {
//		return "board/agreement";
//	}

}
