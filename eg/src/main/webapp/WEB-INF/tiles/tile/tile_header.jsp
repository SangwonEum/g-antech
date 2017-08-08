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
        <div class="sign_up">
            <form id="topLoginForm" name="topLoginForm" action="<c:url value='/j_spring_security_check'/>" method="post">
                <fieldset>
                    <legend class="hidden">로그인 하기</legend>
                    <label for="j_username" class="hidden">아이디</label>
                    <input id="j_username" name="j_username" type="text" title="아이디" placeholder="아이디 ( id@email.com )" value="ksymailing@gmail.com">
                    <label for="j_password" class="hidden">비밀번호</label>
                    <input id="j_password" name="j_password" type="password" title="비밀번호" placeholder="비밀번호" value="qwe123">
                    <input type="submit" class="topBtn btn_login" value="로그인" title="로그인">
                </fieldset>
            </form>
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
                <li><a href="<c:url value='/introduction/guide.do'/>">이용안내</a></li>
                <li><a href="<c:url value='/introduction/clause.do'/>">위반조항</a></li>
            </ul>

            <ul>
                <li><a href="<c:url value='/board/notice.do'/>">공지사항</a></li>
                <li><a href="<c:url value='/board/pds.do'/>">자료실</a></li>
            </ul>

            <ul>
                <li><a href="<c:url value='/app/detail.do'/>">앱관리</a></li>
                <li><a href="<c:url value='/app/list.do'/>">앱정보조회</a></li>
                <li><a href="<c:url value='/app/mail.do'/>">메일이력관리</a></li>
            </ul>

            <ul>
                <li><a href="<c:url value='/management/user.do'/>">사용자관리</a></li>
                <li><a href="<c:url value='/management/menu.do'/>">유형별 메뉴관리</a></li>
                <li><a href="<c:url value='/management/code.do'/>">코드관리</a></li>
                <li><a href="<c:url value='/management/collection.do'/>">수집정보관리</a></li>
                <li><a href="<c:url value='/management/crawler.do'/>">수집시간 및 실행관리</a></li>
            </ul>

            <ul>
                <li><a href="<c:url value='/statistic/store.do'/>">스토어별 통계</a></li>
                <li><a href="<c:url value='/statistic/monitoring.do'/>">모니터링 통계</a></li>
                <li><a href="<c:url value='/statistic/violation.do'/>">위반항목 통계</a></li>
            </ul>
        </div>
    </div> <!-- //sub_nav -->
</div><!--  //sub_layer-->