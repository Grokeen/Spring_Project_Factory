<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
   <form action="<%=request.getContextPath()%>/reservation/cafeInfo"
      method="post">
      <link rel="stylesheet" type="text/css"
         href="<%=request.getContextPath()%>/css/reser.list/optimizerc7e9.css" />
      <hr class="layout" />
      <div id="wrap">
         <div id="content">
            <hr class="layout" />
            <div id="wrap">
               <div id="container">
                  <div
                     class="xans-element- xans-product xans-product-detail top_inner">
                     <div class="headingArea">
                        <div class="supply displaynone">
                           <span></span> <a href="#none" onclick=""><img src="#"
                              alt=" " /></a>
                        </div>
                     </div>
                     <div
                        class="xans-element- xans-product xans-product-image imgArea ">
                        <div
                           class="xans-element- xans-product xans-product-addimage listImg">
                           <ul>
                              <li class="xans-record-"><img
                                 src="web/product/small/201808/jeju_ham_bulgogi_Small.jpg"
                                 class="ThumbImage" alt="" /></li>
                           </ul>
                        </div>
                        <div class="color displaynone"></div>
                     </div>
               
                     
                     <div
                        class="xans-element- xans-product xans-product-detail top_inner">   
                           <div
                              class="xans-element- xans-product xans-product-image imgArea ">
                              <div class="keyImg">
                                 <div class="thumbnail">
                                    <a href="#none" alt="P000000W"> <img style = "width:500px; height:500px;"
                                       src="${pageContext.request.contextPath}/photo/table.img/${cafe.cafepicture}.jpg"  /></a>
                                 </div>
                              </div>
                           </div>
                           <div class="infoArea soldout_displaynone">
                              <div class="product_title ">${cafe.cafename}</div>
                              
                              <div d-price="" d-custom="4900"
                                 class="custom_pro displaynone "></div>
                              <div
                                 class="xans-element- xans-product xans-product-detaildesign">
                                 <div border="0" summary="">
                                    <ul>
                                       <li class=" product_price_css xans-record-"><span
                                          class="title"><span
                                             style="font-size: 12px; color: #999999;">판매가</span></span> <span
                                          class="con"><span
                                             style="font-size: 12px; color: #999999;"><strong
                                                id="span_product_price_text">정보</strong><input
                                                id="product_price" name="product_price" value=""
                                                type="hidden" /></span></span></li>
                                       <li class=" made_in_css xans-record-"><span
                                          class="title"><span
                                             style="font-size: 15px; color: #383833;">주소</span></span> <span
                                          class="con"><span
                                             style="font-size: 15px; color: #383833;">${cafe.cafelocation}
                                             <a href="#" id="mapstart">[지도보기]</a>
											<a href="#" id="mapstop">[지도숨기기]</a>
											<div id="map" style="height: 40vh; border: 3px solid gold; border-radius: 7px; -moz-border-radius: 7px; -khtml-border-radius: 7px; -webkit-border-radius: 7px; "></div>
                                          </span></span></li>
                                       <li class=" custom_option6_css xans-record-"><span
                                          class="title"><span
                                             style="font-size: 15px; color: #555555;">전화번호</span></span> <span
                                          class="con"><span
                                             style="font-size: 15px; color: #555555;">${cafe.cafetel}</span></span>
                                       </li>
                                       <li class=" custom_option2_css xans-record-"><span
                                          class="title"><span
                                             style="font-size: 15px; color: #383833;">종류</span></span> <span
                                          class="con"><span
                                             style="font-size: 15px; color: #383833;">${cafe.cafekind}</span></span></li>
                                       <li class=" custom_option3_css xans-record-"><span
                                          class="title"><span
                                             style="font-size: 15px; color: #383833;">좌석수</span></span> <span
                                          class="con"><span
                                             style="font-size: 15px; color: #383833;">${cafe.cafetotalseat}석</span>
                                       </span></li>
                                       <li class=" custom_option3_css xans-record-"><span
                                          class="title"><span
                                             style="font-size: 15px; color: #383833;">평점</span></span> <span
                                          class="con"><span
                                             style="font-size: 15px; color: #383833;">${avgScore} 점</span>
                                       </span></li>
                                       <li class=" custom_option3_css xans-record-"><span
                                          class="title"><span
                                             style="font-size: 12px; color: #383833;"> </span></span></li>
                                       <li class=" custom_option3_css xans-record-"><span
                                          class="title"><span
                                             style="font-size: 15px; color: #383833;">메뉴</span></span></li>
                                       <c:forEach var="menu" items="${menuList}">
                                          <span
                                             style="font-size: 15px; color: #383833;">${menu.menuname}</span>&nbsp;
                                          <span
                                             style="font-size: 15px; color: #383833;">${menu.menuprice}원</span>
                                         
											<br>
                                       </c:forEach>
                                    </ul>
                                 </div>
                              </div>
                              <br><br>
                              <div class="xans-element- xans-product xans-product-action">
                                 <div class="ec-base-button">
                                    <a
                                       href="<%=request.getContextPath()%>/reservation/reservation?cafenum=${cafe.cafenum}"
                                       id="btnBuy" class="first dj-btn-1">예약하기</a> <a
                                       href="<%=request.getContextPath()%>/review/list"
                                       id="basketBtn" class="dj-btn-1-2" >리뷰보기</a> <br />
                                 </div>
                              </div>
                           </div>
                     </div>
                     <div><div><div style="text-align: center;">
								
								<br> <br>
								<br> <br>
								<br> <br>
								<center>
									<div id="map" style="width: 40%; height: 60vh;"></div>
								</center>
							</div></div></div>
                     <div class="xans-element- xans-product xans-product-additional ">
                        <div id="prdDetail" class="ec-base-tab_detail grid5">
                           <div class="detail_tap_inner">
                              <ul class="menu">
                                 <div id="prdInfo" class="ec-base-tab_detail grid5 ">
                                    <link rel="stylesheet" type="text/css"
                                       href="<%=request.getContextPath()%>/css/reser.list/optimizerc7e9.css" />
                                    <div class="cont_all">
                                       <ul>
                                          <li class="cont" style="width: 100%">
                                             <div class="cont_inner">
                                                <h3>예약시 주의사항</h3>
                                                <span style="font-family: Roboto,&amp; amp;">-
                                                   예약변경/취소 요청: 문의 게시판 및 카카오플러스친구를 이용해 주시면 빠르게 처리해 드리겠습니다.
                                                </span><br style="font-family: Roboto,&amp; amp;"> <span
                                                   style="font-family: Roboto,&amp; amp;">- 변경/취소
                                                   대상: 매장 에약시간으로 부터 5시간 전에 변경/취소가 가능합니다.</span><br
                                                   style="font-family: Roboto,&amp; amp;"> <span
                                                   style="font-family: Roboto,&amp; amp;">- 문제 발견 시
                                                   사진을 보내주시면 보다 빠른 지원이 가능합니다.</span><br
                                                   style="font-family: Roboto,&amp; amp;"> <span
                                                   style="font-family: Roboto,&amp; amp;">- 에약의 특성
                                                   상 단순 변심 등 개인적인 사유로는 변경/취소이 불가합니다.</span><br />
                                             </div>
                                          </li>
                                       </ul>
                                    </div>
                                 </div>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </form>
<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDsbe2wAQzHeOramzOJo6M-Lhq6l0Wv0kc&callback=initMap&region=kr"></script>
	<script src="./script.js"></script>
</body>
<script>
	$(document).ready(function() {
		/*웹페이지 열었을 때*/
		$("#mapstart").show();
		$("#map").hide();
		$("#mapstop").hide();
		
		

		/*img1을 클릭했을 때 img2를 보여줌*/
		$("#mapstart").click(function() {
			$("#mapstart").hide();
			$("#mapstop").show();
			$("#map").show();
		});

		/*img2를 클릭했을 때 img1을 보여줌*/
		$("#mapstop").click(function() {
			$("#mapstop").hide();
			$("#map").hide();
			$("#mapstart").show();
			
			
		});
	});
</script>
<script>
	var map;
	var button = document.getElementById('button');
	button.addEventListener('click', changeCenter);

	function initMap() {
		var seoul = {
			lat : ${cafe.cafelat},
			lng : ${cafe.cafelng}
		};
		map = new google.maps.Map(document.getElementById('map'), {
			zoom : 19,
			center : seoul
		});

		new google.maps.Marker({
			position : seoul,
			map : map,
			label : "${cafe.cafename}"
		});
	}
</script>
</html>