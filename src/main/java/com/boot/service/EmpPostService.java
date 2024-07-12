package com.boot.service;

import java.util.HashMap;
import java.util.List;

import com.boot.dto.CompanyListDTO;
import com.boot.dto.EmpPostDTO;

public interface EmpPostService {
	
	//2. 추가
	public  List<EmpPostDTO> MainEmpPost(HashMap<String, String> param);

//	public CompanyListDTO getCompanyById(int id);
	
}