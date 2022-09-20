<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">

<!-- Title Page-->
<title>관리페이지</title>
<script type="text/javascript">
	function showPopup(prdNo) {
		alert(prdNo);
	}
</script>

</head>

<body class="animsition">
	<div class="page-wrapper">
		<%@ include file="/WEB-INF/jsp/admin/include/header.jsp"%>


		<!-- PAGE CONTENT-->
		<div class="page-content--bgf7">
			<!-- BREADCRUMB-->
			<section class="au-breadcrumb2">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="au-breadcrumb-content">
								<div class="au-breadcrumb-left">
									<ul class="list-unstyled list-inline au-breadcrumb__list">
										<li class="list-inline-item active"><a href="#"></a>
										</li>
										<li class="list-inline-item seprate"><span>/</span></li>
										<li class="list-inline-item">메뉴관리</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- END BREADCRUMB-->

			<!-- WELCOME-->
			<section class="welcome p-t-10">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="title-4">메뉴관리</h1>
							<hr class="line-seprate">
						</div>
					</div>
				</div>
			</section>
			<!-- END WELCOME-->
			<!-- DATA TABLE-->
			<section class="p-t-20">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h3 class="title-5 m-b-35">메뉴목록</h3>
							<div class="table-data__tool">
								<div class="table-data__tool-left">
									<input id="schMenuNo" type="text" placeholder="메뉴번호" class="au-btn-filter">
									<input id="schMenuNm" type="text" placeholder="메뉴명" class="au-btn-filter">
								</div>
								<div class="table-data__tool-right">
									<button class="au-btn au-btn-icon au-btn--green au-btn--small"
										data-toggle="modal" data-target="#largeModal">
										<i class="zmdi zmdi-plus"></i>메뉴 추가
									</button>
									<button id="btnSearch" class="au-btn au-btn-icon au-btn--green au-btn--small">
										<i class="fa  fa-search"></i>검색
									</button>
								</div>
							</div>
							<div class="table-responsive table-responsive-data2">
								<table id="tblMenu" class="table table-data2">
									<thead>
										<tr>
											<th data-field="menuNo">메뉴번호</th>
											<th data-field="menuNm">메뉴명</th>
											<th data-field="menuPrc">단가</th>
											<th data-field="menuDesc">메뉴설명</th>
											<th data-field="menuStockQty">메뉴재고</th>
											<th data-field="menuDispYn">전시여부</th>
										</tr>
									</thead>
									<tbody>
										<tr class="tr-shadow" onclick='showPopup(1)'
											data-toggle="modal" data-target="#largeModal">
											<td>2</td>
											<td>춘천 국물 닭갈비 떡볶이</td>
											<td>2,000</td>
											<td class="desc">닭갈비와 떡볶이의 오묘한 조화</td>
											<td>100</td>
											<td>전시</td>
										</tr>        
										<tr class="spacer"></tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- END DATA TABLE-->

			<!-- modal large -->
				<div class="modal fade" id="largeModal" tabindex="-1" role="dialog"
					aria-labelledby="largeModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="largeModalLabel">메뉴등록/수정</h5>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<div class="card-body card-block">
									<form id="frmMenu"  class="form-horizontal">
										<div class="row form-group">
											<div class="col col-md-3">
												<label class=" form-control-label">메뉴번호</label>
											</div>
											<div class="col-12 col-md-9">
												<p class="form-control-static" id="menuNo" name="menuNo">1</p>
											</div>
										</div>
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="menuNm" class=" form-control-label">메뉴명</label>
											</div>
											<div class="col-12 col-md-9">
												<input type="text" id="menuNm" name="menuNm"
													placeholder="메뉴 명" class="form-control"> <small
													class="form-text text-muted"></small>
											</div>
										</div>
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="price" class=" form-control-label">단가</label>
											</div>
											<div class="col-3 col-md-3">
												<input type="number" id="menuPrc" name="menuPrc" placeholder="단가"
													class="form-control"> <small
													class="help-block form-text"></small>
											</div>
										</div>
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="menuDesc" class=" form-control-label">메뉴
													설명</label>
											</div>
											<div class="col-12 col-md-9">
												<textarea name="menuDesc" id="menuDesc" rows="3"
													placeholder="메뉴 설명..." class="form-control"></textarea>
												<small class="help-block form-text"></small>
											</div>
										</div>
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="menuStock" class=" form-control-label">메뉴
													재고</label>
											</div>
											<div class="col-3 col-md-3">
												<input type="number" id="menuStockQty" name="menuStockQty"
													placeholder="재고" class="form-control">
											</div>
										</div>
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="textarea-input" class=" form-control-label">전시여부</label>
											</div>
											<div class="col-12 col-md-9">
												<label><input type="radio" name="menuDispYn" value="Y" checked>전시</label>
												<label><input type="radio" name="menuDispYn" value="N">비전시</label>
											</div>
										</div>
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="file-input" class=" form-control-label">메뉴 이미지</label>
											</div>
											<div class="col-12 col-md-9">
												<input type="file" id="menuImgNm" name="menuImgNm"
													class="form-control-file">
											</div>
										</div>
									</form>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">취소</button>
								<button type="button" id="buttSave" class="btn btn-primary">저장</button>
							</div>
						</div>
					</div>
				</div>
			<!-- end modal large -->

			<%@ include file="/WEB-INF/jsp/admin/include/footer.jsp"%>
		</div>
</body>
<script type="text/javascript">

var menuData=[];

$(document).ready(function(){
	$('#tblMenu').bootstrapTable({ // 부트스트랩(프론트엔드 프레임워크) 테이블(tblMenu) -> 바인딩 작업 자동 수행(위에 도큐먼트가 다 만들어 진 다음에 작업 진행)
		data: menuData
	});
	$('#tblMenu').bootstrapTable('load', menuData);
	
	$('#tblMenu').delegate("tr", "click", function(){
		var tr = $(this);
		var td = tr.children();
		var menuNo = td.eq(0).text();
		alert(menuNo);
	});
});


	$("#buttSave").click(function(){
		event.preventDefault();
		
		if(!isValidated()){
			return;
		}
		
		alert("저장됐습니다..");
		var from = $('#frmMenu')[0];
		var paramData = new FormData(from);
		console.log(paramData);
		$.ajax({
			url	: '/admin/menu/add',
			data : paramData,
			method : 'POST', // data 단순 조회 : get, data 수정/삭제 : post
			enctype : 'multipar/from-data', //파일전송
			contentType : false,
			processData : false,
			
			success : function(data){
				alert("성공!!");
			},
			error : function(data){
				alert("에러");
			},
			complete : function(data){ // 최종
				console.log(data.responseText);
			} 
		})
	});
	
	isValidated = function(){
		if($('#menuNm').val()==""){
			alert("메뉴이름을 입력해주세요.");
			$('#menuNm').focus();
			return false;
		}
		
		if($('#menuPrc').val()==""){
			alert("단가를 입력해주세요.");
			$('#menuPrc').focus();
			return false;
		}
		return true;
	}
	
	$("#btnSearch").click(function(){
		event.preventDefault();
		
		$.ajax({
			url : '/admin/menu',
			method : 'GET',
			data : {
				menuNo : $('#schMenuNo').val(),
			    menuNm : $('#schMenuNm').val()
			},
			success : function(data){
				if(data ===""){ //(공백(undefind)까지 같이 체크해줌 / '='보다 더 안전함)
					alert("메뉴가 존재하지 않습니다.");
				} else {
					//메뉴가 있으면 테이블에 데이터 바인딩
					menuData = data;
				}
			},
			complete : function(data){
				$('#tblMenu').bootstrapTable('load', menuData);
				console.log(data);
			}
		});
	});
	
/* 	 function check(){
		if(!document.frmCheck.menuNm.value()){
			alert("메뉴명이 입력되지 않았습니다.");
			document.frmCheck.menuNm.focus();
			return false;
		} else if(!document.frmCheck.menuPrc.value()){
			alert("단가가 입력되지 않았습니다.");
			document.frmCheck.menuPrc.focus();
			return false;
		} else if(!document.frmCheck.menuDesc.value()){
			alert("메뉴설명이 입력되지 않았습니다.");
			document.frmCheck.menuDesc.focus();
			return false;
		}  else if(!document.frmCheck.menuStock.value()){
			alert("메뉴재고가 입력되지 않았습니다.");
			document.frmCheck.menuStock.focus();
			return false;
		}  else if(!document.frmCheck.menuDispYn.value()){
			alert("전시여부가 입력되지 않았습니다.");
			document.frmCheck.menuDispYn.focus();
			return false;
		} else if(!document.frmCheck.menuImgNm.value()){
			alert("메뉴이미지가 입력되지 않았습니다.");
			document.frmCheck.menuImgNm.focus();
			return false;
		} 
		alert("전부 입력됐습니당!!");
		return true;
		save();
	}
		
	function save(){
		$("#buttSave").click(function(){
			event.preventDefault();
			alert("저장됐습니다..");
			var from = $('#frmMenu')[0];
			var paramData = new FormData(from);
			
			$.ajax({
				url	: '/admin/menu/add',
				data : paramData,
				method : 'post', // data 단순 조회 : get, data 수정/삭제 : post
				enctype : 'multipar/from-data', //파일전송
				contentType : false,
				processData : false,
				
				success : function(data){
					alert("성공!!");
				},
				error : function(data){
					alert("에러");
				},
				complete : function(data){ // 최종
					console.log(data.responseText);
				} 
			})
		});
	} */
</script>
</html>