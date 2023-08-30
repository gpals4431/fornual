<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>상품 페이지 - 상품 상세 페이지</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" id="montserrat-css"
          href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link rel="stylesheet" id="open-sans-css"
          href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i">

    <link rel="stylesheet" id="animate-css" href="<c:url value="/css/animate.min.css?ver=3.7.2"/>" type="text/css" media="all">
    <link rel="stylesheet" id="font-awesome-css" href="<c:url value="/css/font-awesome.min.css?ver=5.15.4"/>" type="text/css"
          media="all">
    <link rel="stylesheet" id="bootstrap-css" href="<c:url value="/css/bootstrap.min.css?ver=4.6.0"/>" type="text/css" media="all">
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
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">

<style type="text/css">
h1{
	font-size:15px;
}
a{
	color: black;
}
.phy {
	border: 1px solid white; /* 테두리 스타일 및 색상 설정 */
	padding: 10px; /* 내부 여백 설정 */
    background-color: green; /* 배경색 설정 */
}
</style>
<script type="text/javascript">
    function disableLink() {
        return false;
    }
</script>
</head>
<body class="single single-post">
<jsp:include page="header.jsp" />

<main class="main">
        <div id="post-1" class="post type-post post-1 has-post-thumbnail comment-open">
            <div class="container post-container bg-white">
                <div class="row justify-content-center post-row no-gutters">
                    <div class="col-12 col-sm-11 col-md-10 post-thumbnail-col">
                        <img class="img-fluid post-thumbnail" src="<c:url value='/images/upload/${originalFileName}'/>" alt="Post">
                    </div>
                    <div class="col-12 col-sm-11 col-md-10 col-lg-8 post-col">
                        <div class="post-content">
                            <h1>제목 : ${item.itemName }</h1><br>
                            <h1><a href="expertoutput">작성자 번호 : ${item.expertIdx }</a></h1>
                            <h1>등록 날짜 : ${item.itemDate }</h1>
                            <h1>내용 : ${item.itemContent }</h1>
                            <h1>가격 : ${item.price }</h1>
                            <button onclick="location.href='<c:url value="/payment/${item.itemIdx}"/>'">결제하기</button>
                        </div>
                        <hr>
                        <div>
                            <a href="#" onclick="return disableLink()">
					            # ${item.categoryIdx == 1 ? '그래픽' :
					               item.categoryIdx == 2 ? '제품' :
					               item.categoryIdx == 3 ? '영어' :
					               item.categoryIdx == 4 ? '중국어' :
					               item.categoryIdx == 5 ? '헤어 메이크업' :
					               item.categoryIdx == 6 ? '제품 홍보 사진' :
					               item.categoryIdx == 7 ? '사업자' :
					               item.categoryIdx == 8 ? '개인' :
					               item.categoryIdx == 9 ? 'SNS홍보' :
					               item.categoryIdx == 10 ? '해외마케팅' : '알 수 없음'}
					        </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       
    
	    <div class="container comments-container bg-white">
	            <div class="row justify-content-center comments-row no-gutters">
                <div class="col-12 col-sm-11 col-md-10 col-lg-8">
                    <h4 class="comments-title font-weight-bold">
                        Comments <span class="comments-number">(5)</span>
                    </h4>

                    <ul class="comment-list list-unstyled">
                        <li class="media">
                            <img class="avatar photo rounded-circle mr-2 mr-sm-3 mr-md-4"
                                 src="<c:url value="/pictures/placeholder/65x65.svg"/>" alt="Avatar">
                            <div class="media-body">
                                <div class="d-bock d-md-flex w-100 justify-content-between">
                                    <h5 class="comment-title">
                                        <a href="#">Commenter</a>
                                    </h5>
                                    <div class="comment-date">
                                        <a href="#">May 24, 2017 at 11:47 am</a>
                                    </div>
                                </div>
                                <div class="comment-text">
                                    <p>
                                        주훈아 이거는 그냥 댓글이 각 ul 태그에다가 ID=1 / ID=2 ... 이렇게 붙여놓고 해당 댓글로 이동하고
                                        싶으면 그냥 #ID값을 사용해서 이동하게 하면 된단다
                                    </p>
                                </div>
                                <ul class="comment-meta">
                                    <li>
                                        <a href="#" class="comment-edit">
                                            <i class="fa fa-pencil-alt"></i> Edit
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="comment-reply">
                                            <i class="fas fa-reply fa-flip-horizontal"></i> Reply
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        
                                </ul>
                                </div>
                                </div>

                                

                    <hr/>
                    <nav class="navigation pagination comment-pagination justify-content-between text-uppercase"
                         role="navigation">
                        <a class="prev disabled" href="#">
                            Prev
                        </a>
                        <div class="nav-links">
                            <ul class="page-numbers">
                                <li><span aria-current="page" class="page-numbers current">1</span></li>
                                <li><a class="page-numbers" href="#">2</a></li>
                                <li><a class="page-numbers" href="#">3</a></li>
                            </ul>
                        </div>
                        <a class="next" href="#">
                            Next
                        </a>
                    </nav>
					
					<div style="height: 100px"></div>
                    <div id="respond" class="comment-respond">
                        <h4 id="reply-title" class="comment-reply-title font-weight-bold">
                            게시글 쓰기
                        </h4>
                        <form id="commentform" class="comment-form form-horizontal">          
                            <div class="form-group row">
                                <div class="col">
                                    <textarea class="form-control" name="comment" rows="8" title="Comment"
                                              placeholder="Comment" aria-required="true" required="required"></textarea>
                                </div>
                            </div>
                            <div class="row text-center">
                                <div class="col">
                                    <input name="submit" type="submit" id="submit"
                                           class="btn btn-primary btn-lg text-uppercase font-weight-bold w-15x"
                                           value="Post Comment">
                                </div>
                            </div>
                        </form>
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
</body>
</html>