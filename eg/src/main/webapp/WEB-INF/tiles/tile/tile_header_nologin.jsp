<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/common/declare.jspf"%>

<div class="wrap">
    <h1><a href="/" title="메인페이지 바로가기" class="logo"><span class="hidden">AMMT 모바일 웹마켓 모니터링 시스템</span></a></h1>

    <div class="top_util">
<c:choose>
    <c:when test="${not empty loginVO}">
        <div class="link">
            <span class="welcome"><strong>${loginVO.userNm}</strong>님 접속을 환영합니다.</span><a href="/">홈</a><a href="#">사이트맵</a><a href="/password/check.do">비밀번호 변경하기</a>
        </div><!-- //link -->
        <div class="sign_up">
            <a href="<c:url value='/j_spring_security_logout'/>" class="topBtn logout"><span>로그아웃</span></a>
        </div> <!-- //sign_up -->
    </c:when>
    <c:otherwise>
        <div class="link">
            <a href="/">홈</a><a href="#">사이트맵</a>
        </div>
    </c:otherwise>
</c:choose>
        </div><!-- //top_utill-->


    <nav class="gnb">
        <ul>
            <li><a href="#">AMMT 소개</a></li>
            <li><a href="#">게시판관리</a></li>
            <li><a href="#">앱관리</a></li>
            <li><a href="#">환경관리</a></li>
            <li><a href="#">통계</a></li>
        </ul>
    </nav>

</div><!-- //wrap -->

<div class="sub_layer">
    <div class="sub_nav">
        <div>
            <ul class="firstUl">
                <li><a href="#">이용안내</a></li>
                <li><a href="#">위반조항</a></li>
            </ul>

            <ul>
                <li><a href="#">공지사항</a></li>
                <li><a href="#">자료실</a></li>
            </ul>

            <ul>
                <li><a href="<c:url value='/app/detail.do'/>">앱관리</a></li>
                <li><a href="<c:url value='/app/list.do'/>">앱정보조회</a></li>
                <li><a href="#">메일이력관리</a></li>
            </ul>

            <ul>
                <li><a href="<c:url value='/management/user.do'/>">사용자관리</a></li>
                <li><a href="#">유형별 메뉴관리</a></li>
                <li><a href="<c:url value='/management/code.do'/>">코드관리</a></li>
                <li><a href="#">수집정보관리</a></li>
                <li><a href="#">수집시간 및 실행관리</a></li>
            </ul>

            <ul>
                <li><a href="#">모니터링통계</a></li>
                <li><a href="#">위반항목통계</a></li>
                <li><a href="#">사용자별 모니터링통계</a></li>
            </ul>
        </div>
    </div> <!-- //sub_nav -->
</div><!--  //sub_layer-->