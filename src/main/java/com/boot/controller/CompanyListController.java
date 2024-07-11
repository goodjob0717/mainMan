package com.boot.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.boot.dto.CompanyListDTO;
import com.boot.service.CompanyListService;

@Controller
public class CompanyListController {

	@Autowired 
//	@Autowired: Spring의 의존성 주입(DI) 기능을 사용하여 
//	CompanyListService 객체를 주입받습니다.
	private CompanyListService service;

//	2. 변경
//	@GetMapping("/company_list")
	//2. 변경
	@RequestMapping("/company_list")
	public String company_list(@RequestParam HashMap<String, String> param , Model model) {
		 // 요청 파라미터를 HashMap 형태로 받습니다.
		
		 List<CompanyListDTO> dto = service.company_list(param);
		 // 서비스 레이어의 company_list 메서드를 호출하여 DTO 객체를 반환받습니다.
		model.addAttribute("company_list", dto);
		// 반환받은 DTO 객체를 "company_list"라는 이름으로 모델에 추가합니다.
		
		return "company_list"; 
		 // "company_list"라는 뷰 이름을 반환합니다. 
		//이는 /WEB-INF/views/company_list.jsp 파일을 가리킵니다.
	}
	
	
//	1. 기존
//    @GetMapping("/company_list")
//    public String showCompanyList(Model model) {
//    	
//    	ArrayList<CompanyListDTO> list = service.list();
//		model.addAttribute("list", list);
//		
//        return "company_list"; 
//        // returns /WEB-INF/views/company_list.jsp
//    }
	
    
//	@RequestMapping("/content_view")
//	public String content_view(@RequestParam HashMap<String, String> param , Model model) {
//		log.info("@# content_view");
//		
//		
//		BoardDTO dto = service.contentView(param);
//		
//		
//		  model.addAttribute("content_view", dto);
//		
//		return "content_view";
//	}
    
}