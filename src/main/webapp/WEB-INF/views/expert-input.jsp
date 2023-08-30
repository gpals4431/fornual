<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>전문가페이지-전문가의정보</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" id="montserrat-css"
      href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
<link rel="stylesheet" id="open-sans-css"
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i">

<link rel="stylesheet" id="animate-css" href="<c:url value="/css/animate.min.css?ver=3.7.2"/>" type="text/css" media="all">
<link rel="stylesheet" id="font-awesome-css" href="<c:url value="/css/font-awesome.min.css?ver=5.15.4"/>" type="text/css"
      media="all">
<link rel="stylesheet" id="bootstrap-css" href="<c:url value="/css/bootstrap.min.css?ver =4.6.0"/>" type="text/css" media="all">
<link rel="stylesheet" id="smartmenus-bootstrap-css" href="<c:url value="/css/smartmenus-bootstrap.min.css?ver=1.1.1"/>"
      type="text/css" media="all">
<link rel="stylesheet" id="swiper-css" href="<c:url value="/css/swiper.min.css?ver=4.5.3"/>" type="text/css" media="all">
<link rel="stylesheet" id="magnific-popup-css" href="<c:url value="/css/magnific-popup.min.css?ver=1.1.0"/>" type="text/css"
      media="all">
<link rel="stylesheet" id="lana-pet-icon-css" href="<c:url value="/css/lana-pet-icon.min.css?ver=1.0.0"/>" type="text/css"
      media="all">
<link rel="stylesheet" id="lana-pet-theme-css" href="<c:url value="/css/lana-pet-theme.min.css?ver=1.0.0"/>" type="text/css"
      media="all">
<link rel="stylesheet" id="lana-pet-print-css" href="<c:url value="/css/lana-pet-print.min.css?ver=1.0.0"/>" type="text/css"
       media="print">
  
<style>
#button{
   display: flex;
   justify-content: center;
   align-items center;
   padding-bottom: 2em;
}

.info {
margin-bottom: 22px;
}

/* 박스*/
.box {
 width: 100%;
 height: 50px;
 box-sizing: border-box;
 padding: 5px 0 5px 15px;
 border-radius: 4px;
 border: 1px solid #d9d6d6;
 color: #383838;
 font-weight: 400;
}

.box::placeholder {
  color: #a0a0a0;
}

.info#info__id #id-input {
  position: relative;
}

.info#info__id button {
  position: absolute;
  width: 90px;
  height: 40px;
  top: 0;
  bottom: 0;
  right: 5px;
  margin: auto 0;
  border-radius: 3px;
  font-size: 15px; 
}

h3 {
   font-size : 20px;
}

/* 카테고리 */
.info#info__category #category-flex {
  display: flex;
}

.info#info__category select {
  margin-left : 7px;
  color: #a0a0a0;
}

.info#info__category select:first-child {
  margin-left : 0px;
}

.info#info__category select::-webkit-scrollbar {
  width: 10px;
}

.info#info__category select::-webkit-scrollbar-thumb {
  background-color: #b6b6b6;
  border-radius: 3px;
}

.info#info__category select::-webkit-scrollbar-track {
  background-color: #ebe9e9;
  border-radius: 6px;
}
</style>          
</head>
<body class="archive post-type-archive post-type-archive-lana_story">
<jsp:include page="header.jsp" />

<main class="main container">
<div class="row">
   <div class="col-12 col-lg-8">
      <div class="widget">     
         <form class="story-posts" id="content" action="/modify" method="post">              
            <div class="info" id="info__category">
				<div id="category-flex">
					<!-- 여기서 expertIdx는 현재 세션에 로그인한 전문가의 expertIdx임 -->
					<input class="box" type="text" id="expertIdx" placeholder="전문가번호"${expertIdx } readonly/>
					<input class="box" type="text" id="phoneInput" placeholder="전화번호:${phone }" value="${phone }"/>
				</div>          
			</div>
			<div class="info" id="info__category">
              <div id="category-flex">
                <input class="box" type="text" placeholder="기존 카테고리:${interest }" readonly/>
                <!-- 여백 어케주드라 -->
				<select class="box" id="interestSelect" name="interest">
                  <option disabled selected>디자인</option>
                  <option value="1">그래픽</option>
                  <option value="2">제품</option>
                  <option disabled selected>번역</option>
                  <option value="3">영어</option>
                  <option value="4">중국어</option>
                  <option disabled selected>사진 편집</option>
                  <option value="5">헤어 메이크업</option>
                  <option value="6">제품 홍보 사진</option>
                  <option disabled selected>세무</option>
                  <option value="7">사업자</option>
                  <option value="8">개인</option>
                  <option disabled selected>마케팅</option>
                  <option value="9">SNS 홍보</option>
                  <option value="10">해외 마케팅</option>              
                </select>
             	<!-- 여백 어케주드라 -->            
                <input class="box" type="text" placeholder="연차:${career }" value="${career }"/>
              </div>
            </div>
            <div class="info" id="info__category">
				<div id="category-flex">
        			<input class="box" type="text" id="companyOneInput" placeholder="${companyOne }" />
					<!-- 여백 어케주드라 -->            
					<input class="box" type="text" id="companyTwoInput" placeholder="${companyTwo }"/>
					<!-- 여백 어케주드라 -->
					<input class="box" type="text" id="companyThreeInput" placeholder="${companyThree }"/>
				</div>
			</div>
			<div>
    			<textarea class="box" id="introduceInput" placeholder="자기소개:${introduce }">${introduce}</textarea>
				<section id="upload">
				    <h3>포트폴리오 등록</h3>
				    <input class="form-control" type="file" id="portfolioFileInput" accept=".pdf">
				    <input class="box" type="text" id="portfolioFileNameInput" placeholder="포트폴리오 파일명" readonly>
				    <span style="color: gray; font-size: 15px; padding: 0px 25px;">[PDF 파일로 업로드 해주세요.]</span><br>
				    <p style="color: red;" id="errorMessage">${message}</p>
				</section>
              </div>
            <!-- 수정완료 버튼을 클릭하면 updateExpert 메소드가 실행되도록 설계 근데 이제 조건 덕지덕지 붙여야지-->
			<div id="button">
			    <button id="submitButton" type="submit">수정완료</button>
			</div>
         </form>
      </div>
   </div>  
   <!-- 혜민아 이거 복붙 너가한다했나? 나 그럼 괜히 깝치지말고 걍 이대로 방치해? -->
   <div class="col-12 col-lg-4 mt-4 mt-lg-0">
      <div class="widget-sidebar story-sidebar">
         <div id="button">
            <img src="<c:url value="/pictures/placeholder/logo.png"/>"
               class="rounded-circle" alt="Author" width="200" height="200">
         </div>
         <div id="button">
            <a href="#" class="tag-cloud-link" aria-label="idbutton">${expertIdx }</a>
         </div>
         <div class="widget widget_tag_cloud">
            <div class="tagcloud">
               <div id="button">
               <!-- 여기는 수연누나가 마이페이지 url 확실하게 정해놓으면 href 속성 변경하기 -->
                  <a href="mypage-purchase" class="tag-cloud-link"
                     aria-label="admin change button">일반회원으로 전환</a>
               </div>
               <div class="tab_menu">
                  <div class="widget" style="text-align: left;" id="list">
                     <h3 class="widget-title">판매 관리</h3>
                     <ul>
                        <li>
                           <a href="expertmypage" class="expertMypage" href="#" onclick="location.href='expertmain'">판매 관리</a>
                        </li>
                        <li>
                           <a href="expertoutput" class="expertOutput" href="#" onclick="location.href='expertoutput'">포트폴리오</a>
                        </li>
                        <li>
                           <a href="expertitem" class="expertItem" href="#" onclick="location.href='expertitem'">상품 등록</a>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
 </div>   
</main>
<jsp:include page="footer.jsp"/>

<script type="text/javascript" src="<c:url value="/js/jquery.min.js?ver=3.6.0"/>"></script>
<script type="text/javascript" src="<c:url value="/js/popper.min.js?ver=1.16.1"/>"></script>
<script type="text/javascript" src="<c:url value="/js/bootstrap.min.js?ver=4.6.0"/>"></script>
<script type="text/javascript" src="<c:url value="/js/smartmenus.min.js?ver=1.1.1"/>"></script>
<script type="text/javascript" src="<c:url value="/js/smartmenus-bootstrap.min.js?ver=1.1.1"/>"></script>
<script type="text/javascript" src="<c:url value="/js/swiper.min.js?ver=4.5.3"/>"></script>
<script type="text/javascript" src="<c:url value="/js/scrollmagic.min.js?ver=2.0.8"/>"></script>
<script type="text/javascript" src="<c:url value="/js/magnific-popup.min.js?ver=1.1.0"/>"></script>
<script type="text/javascript" src="<c:url value="/js/custom-theme.js?ver=1.0.0"/>"></script>
<script>
/* 
나중에 이거는 RestController 써서 AJAX 놀음 할 때 사용
$(document).ready(function() {   
	// 전문가의 expertIdx를 가져오는 AJAX 요청
    $.ajax({
        url: '/getExpertIdx',
        method: 'GET',  
        dataType: 'json', 
        success: function(data) {
            // 가져온 expertIdx를 이용하여 HTML 요소를 업데이트
            $("#expertIdx").val(data.expertIdx);
            
            // 기존 카테고리를 가져오는 AJAX 요청
            $.ajax({
                url: '/getExpertCategory', 
                method: 'GET',  
                dataType: 'json', 
                success: function(categoryData) {
                    // 가져온 데이터를 이용하여 HTML 요소를 업데이트
                    $("#originalCategory").val(categoryData.categoryName);
                },
                error: function(xhr, status, error) {
                    console.error("기존 카테고리 데이터를 가져오는 중 오류 발생: " + error);
                }
            });
        },
        error: function(xhr, status, error) {
            console.error("전문가의 expertIdx 데이터를 가져오는 중 오류 발생: " + error);
        }
    });
	
    // 포트폴리오 파일 선택 시 파일명 표시
    $("#formFile").change(function() {
        var fileName = $(this).val().split('\\').pop();
        $("#portfolioFileNameInput").val(fileName);
    });
	
    // 수정 완료 버튼 클릭 시 AJAX 요청 등록
    $("#submitButton").click(function(e) {
        e.preventDefault();
        
        // 전달할 데이터 준비 (expertIdx, 수정된 정보 등)
        var expertIdx = $("#expertIdx").val();
        var phone = $("#phone").val();
        var interest = $("#category-middle").val();
        var career = $("#career").val();
        var companyOne = $("#companyOne").val();
        var companyTwo = $("#companyTwo").val();
        var companyThree = $("#companyThree").val();
        var introduce = $("#introduce").val();
        var expertfileName = $("#portfolioFileNameInput").val();
        
        // AJAX 요청 보내기
        $.ajax({
            url: '/modify',
            method: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify({
                phone: phone,
                interest: interest,
                career: career,
                companyOne: companyOne,
                companyTwo: companyTwo,
                companyThree: companyThree,
                introduce: introduce,
                expertfileName: expertfileName
            }),
            success: function(response) {
                // 성공 시 동작
                alert("수정이 완료되었습니다.");
                // 페이지 리로드 등 원하는 동작 수행
            },
            error: function(xhr, status, error) {
                // 오류 시 동작
                alert("정보 수정에 실패하였습니다: " + error);
            }
        });
    });
});
	*/
</script>
</body>
</html>