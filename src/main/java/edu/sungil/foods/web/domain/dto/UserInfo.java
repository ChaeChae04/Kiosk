package edu.sungil.foods.web.domain.dto;

import lombok.Data;

@Data // 클래스 정의
public class UserInfo {
	  Long userNo;
	  String userNm;
	  String userBirthDt;
	  
	  public String toString() {
		  return "userNo = " + this.userNo + ", userNm = " + this.userNm +", userBirthDt = " + this.userBirthDt;
		  
	  }
}
