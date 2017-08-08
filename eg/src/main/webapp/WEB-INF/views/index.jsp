<%--
  User: 김석영
  Date: 2017-07-12
  Time: 오전 11:03
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ include file="/WEB-INF/common/declare.jspf"%>
<div class="wrap">
    <div class="main_content">
        <h2 class="hidden">본문영역</h2>
        <div class="box by4">
            <div class="main_visual">
                <ul>
                    <li><img src="<c:url value='/resources/img/m_slide01.jpg'/>" alt=""></li>
                </ul>
                <!-- <button class="next_img"><span class="hidden">다음</span></button>
                <button class="prev_img"><span class="hidden">다음</span></button> -->
            </div>
        </div>

        <div class="box by1">
            <a href="#" class="box_inner1">
                <i class="iconImg1"></i>
                <span class="title">ATTM소개</span>
            </a>
        </div>

        <div class="box by1">
            <a href="#" class="box_inner1">
                <i class="iconImg2"></i>
                <span class="title">관리자</span>
            </a>
        </div>

        <div class="box by1">
            <a href="#" class="box_inner1">
                <i class="iconImg3"></i>
                <span class="title">통계</span>
            </a>
        </div>

        <div class="box by1">
            <a href="#" class="box_inner1 box_color">
                <i class="iconImg4"></i>
                <span class="title fontC">앱등록 </span>
            </a>
        </div>

        <div class="box by2 notice">
            <h3>공지사항</h3>
            <a href="#" class="more"><span class="hidden">더보기</span></a>
            <ul>
                <li><a href="#">ATM서비스가 오픈합니다.</a><span class="date">2017/06/14</span></li>
                <li><a href="#">ATM서비스가 오픈합니다.</a><span class="date">2017/06/14</span></li>
                <li><a href="#">ATM서비스가 오픈합니다.</a><span class="date">2017/06/14</span></li>
                <li><a href="#">ATM서비스가 오픈합니다.</a><span class="date">2017/06/14</span></li>
            </ul>
        </div>

        <div class="box by2 appResult">
            <div class="appLeft">
                <p>배치수집결과</p>
                <span class="date">2017-03-27</span>
                <span class="more"><a href="#">자세히 보기 &gt;</a></span>
            </div>
            <div class="appRight">
                <ul class="chart">
                    <li>
                        <span>앱관리</span>
                        <div class="graphWrap">
                            <p class="graph"></p>
                            <p class="graph graph1"></p>
                        </div>
                        <span class="per per1">100%</span>
                    </li>
                    <li>
                        <span>앱관리</span>
                        <div class="graphWrap">
                            <p class="graph"></p>
                            <p class="graph graph2"></p>
                        </div>
                        <span class="per per2">40%</span>
                    </li>
                    <li>
                        <span>앱관리</span>
                        <div class="graphWrap">
                            <p class="graph"></p>
                            <p class="graph graph3"></p>
                        </div>
                        <span class="per per3">80%</span>
                    </li>
                </ul>
            </div>
        </div>

        <div class="box by1">
            <a href="#" class="box_inner1">
                <i class="iconImg5"></i>
                <span class="title">조치이력관리</span>
            </a>
        </div>

        <div class="box by1">
            <a href="#" class="box_inner1">
                <i class="iconImg6"></i>
                <span class="title">앱 정보 관리</span>
            </a>
        </div>

        <div class="box by1">
            <a href="#" class="box_inner1 box_color">
                <i class="iconImg iconImg7"></i>
                <span class="title fontC">스크린샷</span>
            </a>
        </div>

    </div> <!-- //main_content -->
</div>
<!-- //wrap -->