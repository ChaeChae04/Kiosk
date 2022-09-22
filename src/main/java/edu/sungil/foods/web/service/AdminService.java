package edu.sungil.foods.web.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.sungil.foods.web.domain.AdminMapper;
import edu.sungil.foods.web.domain.dto.MenuInfo;
import edu.sungil.foods.web.domain.dto.SchMenuInfo;

@Service
public class AdminService {
	private final Path imgPath = Paths.get("src/main/resources/static/media");
	
	@Autowired
	AdminMapper adminMapper;
	
	public void addMenu(MenuInfo menuInfo) {
		
		if(menuInfo.getMenuNo() != null) {
			//수정
			this.modMenu(menuInfo);
		} else {
			//신규등록
			this.addNewMenu(menuInfo);
		}
	}
	
	private void modMenu(MenuInfo menuInfo) {
		adminMapper.updateMenu(menuInfo);
	}
	
	private void addNewMenu(MenuInfo menuInfo) {
		// 1. 파일처리
		String fileNm = "";
		if(!(menuInfo.getMenuImgNm()==null)) {
			fileNm = String.valueOf(System.currentTimeMillis())
					+ "_" + menuInfo.getMenuImgNm().getOriginalFilename();
			try {
				Files.copy(menuInfo.getMenuImgNm().getInputStream(), imgPath.resolve(fileNm));
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}
			// 2. DB저장
			menuInfo.setFileNm(fileNm);
			adminMapper.insertMenu(menuInfo);
	}
		
	
	public List<MenuInfo> getMenuList(SchMenuInfo schMenuInfo){
		return adminMapper.selectMenuList(schMenuInfo);
	}

	public MenuInfo getMenu(Long menuNo) {
		SchMenuInfo schMenuInfo = new SchMenuInfo();
		schMenuInfo.setMenuNo(menuNo);
		return adminMapper.selectMenuList(schMenuInfo).get(0);
	}
}