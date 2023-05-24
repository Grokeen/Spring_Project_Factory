<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
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


                  <c:forEach var="cafe" items="${cafeList}">
                     <form action="<%=request.getContextPath()%>/reservation/cafeInfo"
                        method="post">
                        <table>
                           <tr>
                              <th>
                                 <div
                                    class="xans-element- xans-product xans-product-detail top_inner">
                                    <div
                                       class="xans-element- xans-product xans-product-image imgArea ">
                                       <div class="keyImg">
                                          <div class="thumbnail">
                                             <a href="#none" alt="P000000W"> <img
                                                src="${pageContext.request.contextPath}/photo/table.img/${cafe.cafepicture}.jpg"
                                                width="400" heigth="400" /></a>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="infoArea soldout_displaynone">
                                       <div class="product_title " style="font-size: 20px">
                                          음식점 |
                                          <h1>${cafe.cafename}</h1>
                                       </div>
                                       <div
                                          class="xans-element- xans-product xans-product-detaildesign">
                                          <div border="0" summary="">
                                             <ul>

                                                <li class=" made_in_css xans-record-"><span
                                                   class="con"><span
                                                      style="font-size: 30px; color: #383833;">주소 | </span></span>
                                                   <span class="con"><span
                                                      style="font-size: 20px; color: #383833;">${cafe.cafelocation}
                                                   </span></span></li>
                                             </ul>
                                          </div>
                                       </div>
                                       <div class="xans-element- xans-product xans-product-action">
                                          <div class="ec-base-button">
                                             <a
                                                href="<%=request.getContextPath()%>/reservation/cafeInfo?cafenum=${cafe.cafenum}"
                                                class="first dj-btn-1">예약하기</a>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                           </tr>
                        </table>
                       <br><br><br><br>
                     </form>
                  </c:forEach>

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
                                                예약변경/취소 요청: 문의 게시판 및 카카오플러스친구를 이용해 주시면 빠르게 처리해 드리겠습니다. </span><br
                                                style="font-family: Roboto,&amp; amp;"> <span
                                                style="font-family: Roboto,&amp; amp;">- 변경/취소
                                                대상: 매장 에약시간으로 부터 5시간 전에 변경/취소가 가능합니다.</span><br
                                                style="font-family: Roboto,&amp; amp;"> <span
                                                style="font-family: Roboto,&amp; amp;">- 문제 발견 시
                                                사진을 보내주시면 보다 빠른 지원이 가능합니다.</span><br
                                                style="font-family: Roboto,&amp; amp;"> <span
                                                style="font-family: Roboto,&amp; amp;">- 에약의 특성 상
                                                단순 변심 등 개인적인 사유로는 변경/취소이 불가합니다.</span><br />
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
</body>
</html>