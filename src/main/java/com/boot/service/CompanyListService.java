package com.boot.service;

import java.util.HashMap;
import java.util.List;

import com.boot.dto.CompanyListDTO;

public interface CompanyListService {
//	CompanyListService 인터페이스는 서비스 계층의 역할을 정의합니다.

	
	
	
//	public void write( HashMap<String, String> param);	
	
	//1. 기존
//	public ArrayList<CompanyListDTO> list();
//	public CompanyListDTO contentView(HashMap<String , String> param) ;
	
	//2. 추가
	public  List<CompanyListDTO> company_list(HashMap<String, String> param);

	public CompanyListDTO getCompanyById(int id);
	
	public  List<CompanyListDTO> RankedBySalary(HashMap<String, String> param);
	
}
