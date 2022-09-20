package edu.sungil.foods.web.domain.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class SchMenuInfo {
	private Long menuNo; // 소문자 long은 프리미어 타입이라 null값을 가질 수 없음
	private String menuNm; // class 타입이라 null값을 가질 수 있음
	
}
