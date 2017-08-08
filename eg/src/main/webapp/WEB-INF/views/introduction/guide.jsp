<%--
  Created by IntelliJ IDEA.
  User: crom
  Date: 2017-08-04
  Time: 오후 2:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/common/declare.jspf" %>
<div class="wrap bordWrap">

    <div class="topMenuWrap">
        <div class="topMenu">
            <p>AMMT 소개</p>
            <select name="" title="">
                <option value="" selected="selected">이용안내</option>
                <option value="">위반조항</option>
            </select>
        </div><!-- //topMenu -->
    </div><!-- //topMenuWrap -->

    <div class="bord guide">
        <div class="guideTitle">
            <h2>이용안내</h2>
            <p class="txt">모바일 앱 마켓 모니터링 시스템 이용안내</p>
        </div>

        <img src='<c:url value="/resources/img/guide.jpg"/>' alt="">


        <div class="explain">
            <ul class="">
                <li>
                    <span>01</span>&nbsp;&nbsp;모니터링기관(MOIBA)은 정상 모니터링건에 대해서는 정상 종료&nbsp;
                </li>
                <li>
                    <span>02</span>&nbsp;&nbsp;모니터링기관(MOIBA)에서 위반으로 발견된 앱(어플리케이션)에 대하여 해당 개발자(사업자)에게<br> 채증자료와 함께 '시정'조치 요청
                </li>
                <li>
                    <span>03</span>&nbsp;&nbsp;해당개발자(사업자)는 시정조치 결과(증빙자료 포함)를 모니터링 기관에 제출&nbsp;
                </li>
                <li>
                    <span>04</span>&nbsp;&nbsp;중대한 위반사항에 대해서 모니터링기관(MOIBA)은 오픈마켓사업자 및 통신과금 서비스 제공자에게<br> 해당사업자의 '서비스 중지 및 등록삭제, 과금제한'등 사후조치 요청 및 모니터링기관 협조 요청에 따라<br> 오픈마켓사업자와 통신과금서비스 제공자가 직접 조치한 경우, 조치 결과를 모니터링기관에 통보함
                </li>
            </ul>
        </div>

    </div><!-- //bord -->

</div>