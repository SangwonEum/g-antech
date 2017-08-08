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
            <p>환경관리</p>
            <select name="" title="">
                <option value="" selected="selected">수집시간 및 실행관리</option>
                <option value="">사용자관리</option>
                <option value="">유형별 메뉴관리</option>
                <option value="">코드관리</option>
                <option value="">수집정보관리</option>
            </select>
        </div><!-- //topMenu -->
    </div><!-- //topMenuWrap -->

    <div class="bord appWrap">
        <h2>수집시간 및 시간관리</h2>
        <div class="search">
            <span class="">마켓명</span>
            <select name="" title="">
                <option value="" selected="selected">전체</option>
                <option value="">--</option>
                <option value="">---</option>
            </select>
            <span class="">사용여부</span>
            <select name="" title="">
                <option value="" selected="selected">사용</option>
                <option value="">--</option>
                <option value="">---</option>
            </select>
            <span>수집 정보명</span>
            <label for="numInfo1"></label>
            <input type="text" id="numInfo1" class="numInfo numInfo1 " title="" value="" name="">
            <input type="button" class="searchBtn" title="" value="search" name="">
        </div><!-- //search -->

        <div class="typeWrap">
            <table cellpadding="0" cellspacing="0" class="bordTab bordTabHead" summary="제목, 내용, 작성자, 등록일자, 수정일자가 있는 테이블입니다.">
                <caption class="hidden">자료실</caption>
                <colgroup>
                    <col width="5%">
                    <col width="9%">
                    <col width="15%">
                    <col width="*">
                    <col width="9%">
                    <col width="9%">
                    <col width="9%">
                    <col width="9%">
                    <col width="9%">
                    <col width="9%">
                </colgroup>
                <thead>
                <tr class="none">
                    <th>No</th>
                    <th>마켓</th>
                    <th>수집정보명</th>
                    <th>수집주소</th>
                    <th>사용여부</th>
                    <th>실행시간</th>
                    <th>최종실행시간</th>
                    <th>수집여부</th>
                    <th>수집건수</th>
                    <th>실행버튼</th>
                </tr>
                </thead>
            </table>
            <div class="autoWrap">
                <table cellpadding="0" cellspacing="0" class="bordTab" summary="">
                    <caption class="hidden">수집시간 및 시간관리</caption>
                    <colgroup>
                        <col width="5%">
                        <col width="9%">
                        <col width="15%">
                        <col width="*">
                        <col width="9%">
                        <col width="9%">
                        <col width="9%">
                        <col width="9%">
                        <col width="9%">
                        <col width="9%">
                    </colgroup>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>플레이스토어</td>
                        <td>플레이스토어 최신게임</td>
                        <td>www.playstore.com/gatm</td>
                        <td>사용</td>
                        <td>02:15</td>
                        <td>2016/01/01</td>
                        <td>성공</td>
                        <td>35</td>
                        <td><input type="button" class="normal" title="" value="실행" name=""></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>원스토어</td>
                        <td>플레이스토어 최신게임</td>
                        <td>www.playstore.com/gatm</td>
                        <td>사용</td>
                        <td>02:15</td>
                        <td>2016/01/01</td>
                        <td>성공</td>
                        <td>15</td>
                        <td><input type="button" class="normal" title="" value="실행" name=""></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>원스토어</td>
                        <td>플레이스토어 최신게임</td>
                        <td>www.playstore.com/gatm</td>
                        <td>사용</td>
                        <td>02:15</td>
                        <td>2016/01/01</td>
                        <td>성공</td>
                        <td>15</td>
                        <td><input type="button" class="normal" title="" value="실행" name=""></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>원스토어</td>
                        <td>플레이스토어 최신게임</td>
                        <td>www.playstore.com/gatm</td>
                        <td>사용</td>
                        <td>02:15</td>
                        <td>2016/01/01</td>
                        <td>성공</td>
                        <td>15</td>
                        <td><input type="button" class="normal" title="" value="실행" name=""></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>원스토어</td>
                        <td>플레이스토어 최신게임</td>
                        <td>www.playstore.com/gatm</td>
                        <td>사용</td>
                        <td>02:15</td>
                        <td>2016/01/01</td>
                        <td>성공</td>
                        <td>15</td>
                        <td><input type="button" class="normal" title="" value="실행" name=""></td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>원스토어</td>
                        <td>플레이스토어 최신게임</td>
                        <td>www.playstore.com/gatm</td>
                        <td>사용</td>
                        <td>02:15</td>
                        <td>2016/01/01</td>
                        <td>성공</td>
                        <td>15</td>
                        <td><input type="button" class="normal" title="" value="실행" name=""></td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>원스토어</td>
                        <td>플레이스토어 최신게임</td>
                        <td>www.playstore.com/gatm</td>
                        <td>사용</td>
                        <td>02:15</td>
                        <td>2016/01/01</td>
                        <td>성공</td>
                        <td>15</td>
                        <td><input type="button" class="normal" title="" value="실행" name=""></td>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
        <!--
        <div class="pagingWrap">
            <ul class="paging">
                <li class="bn"><a href="#" class="arrowBtn prevBtn"></a></li>
                <li class="bn"><span class="now">1</span></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">6</a></li>
                <li><a href="#">7</a></li>
                <li><a href="#">8</a></li>
                <li><a href="#">9</a></li>
                <li><a href="#">10</a></li>
                <li class="bn"><a href="#" class="arrowBtn nextBtn"></a></li>
            </ul>
        </div>  -->

        <div class="app collect collectContents">
            <p class="title">수집내용</p>
            <div class="top">
                <div class="topBar">
                    <dl class="info">
                        <dt>수집정보</dt>
                        <dd>
                            <div class="progress-out" id="div1" style="width: 457px; height: 26px;">
                                <div class="percent-show" style="line-height: 26px; font-size: 15px;"><span>70</span>%</div>
                                <div class="percent-show_02">30%</div>
                                <div class="progress-in direction-left" style="width: 70%;"></div>
                                <div class="progress-in_02" style="width: 70%;"></div>
                            </div>
                        </dd>
                    </dl>
                    <dl>
                        <dt>성공</dt>
                        <dd class="success">8</dd>
                    </dl>
                    <dl>
                        <dt>실패</dt>
                        <dd class="fail">2</dd>
                    </dl>
                </div> <!-- topBar -->
                <div class="tbScroll">
                    <table cellpadding="0" cellspacing="0" class="bordTabTime" summary="">
                        <caption></caption>
                        <colgroup>
                            <col width="3%">
                            <col width="6%">
                            <col width="5%">
                            <col width="7%">
                            <col width="6%">
                            <col width="11%">
                            <col width="10%">
                            <col width="7%">
                            <col width="5%">
                            <col width="5%">
                            <col width="6%">
                            <col width="14%">
                        </colgroup>
                        <thead>
                        <tr>
                            <th>No</th>
                            <th>수집일자</th>
                            <th>시간</th>
                            <th>스토어명</th>
                            <th>카테고리</th>
                            <th>앱명칭</th>
                            <th>앱주소URL</th>
                            <th>이용등급</th>
                            <th>용량</th>
                            <th>무료</th>
                            <th>수정ID</th>
                            <th>E-mail</th>
                        </tr>
                        </thead>
                    </table>

                    <div class="autoWrap autoTime">
                        <table cellpadding="0" cellspacing="0" class="" summary="">
                            <caption></caption>
                            <colgroup>
                                <col width="3%">
                                <col width="8%">
                                <col width="6%">
                                <col width="8%">
                                <col width="7%">
                                <col width="13%">
                                <col width="12%">
                                <col width="8%">
                                <col width="6%">
                                <col width="5%">
                                <col width="8%">
                                <col width="*">
                            </colgroup>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>17/05/12</td>
                                <td>02:20</td>
                                <td>원스토어</td>
                                <td>게임</td>
                                <td class="ellipsis">엄마몰래 라면끓이기엄마몰래 라면끓이기</td>
                                <td class="ellipsis">www.onestore.comcomcomcmo</td>
                                <td>전체이용</td>
                                <td>9.5MB</td>
                                <td>무료</td>
                                <td>전찬후</td>
                                <td class="ellipsis">ddddll@naver.comddddll@naver.com</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>17/05/12</td>
                                <td>02:20</td>
                                <td>원스토어</td>
                                <td>게임</td>
                                <td>엄마몰래 라면끓이기</td>
                                <td class="ellipsis">www.onestore.comcomcomcmo</td>
                                <td>전체이용</td>
                                <td>9.5MB</td>
                                <td>무료</td>
                                <td>전찬후</td>
                                <td>ddddll@naver.com</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>17/05/12</td>
                                <td>02:20</td>
                                <td>원스토어</td>
                                <td>게임</td>
                                <td>엄마몰래 라면끓이기</td>
                                <td class="ellipsis">www.onestore.comcomcomcmo</td>
                                <td>전체이용</td>
                                <td>9.5MB</td>
                                <td>무료</td>
                                <td>전찬후</td>
                                <td>ddddll@naver.com</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>17/05/12</td>
                                <td>02:20</td>
                                <td>원스토어</td>
                                <td>게임</td>
                                <td>엄마몰래 라면끓이기</td>
                                <td class="ellipsis">www.onestore.comcomcomcmo</td>
                                <td>전체이용</td>
                                <td>9.5MB</td>
                                <td>무료</td>
                                <td>전찬후</td>
                                <td>ddddll@naver.com</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>17/05/12</td>
                                <td>02:20</td>
                                <td>원스토어</td>
                                <td>게임</td>
                                <td>엄마몰래 라면끓이기</td>
                                <td class="ellipsis">www.onestore.comcomcomcmo</td>
                                <td>전체이용</td>
                                <td>9.5MB</td>
                                <td>무료</td>
                                <td>전찬후</td>
                                <td>ddddll@naver.com</td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>17/05/12</td>
                                <td>02:20</td>
                                <td>원스토어</td>
                                <td>게임</td>
                                <td>엄마몰래 라면끓이기</td>
                                <td class="ellipsis">www.onestore.comcomcomcmo</td>
                                <td>전체이용</td>
                                <td>9.5MB</td>
                                <td>무료</td>
                                <td>전찬후</td>
                                <td>ddddll@naver.com</td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>17/05/12</td>
                                <td>02:20</td>
                                <td>원스토어</td>
                                <td>게임</td>
                                <td>엄마몰래 라면끓이기</td>
                                <td class="ellipsis">www.onestore.comcomcomcmo</td>
                                <td>전체이용</td>
                                <td>9.5MB</td>
                                <td>무료</td>
                                <td>전찬후</td>
                                <td>ddddll@naver.com</td>
                            </tr>
                            <tr>
                                <td>8</td>
                                <td>17/05/12</td>
                                <td>02:20</td>
                                <td>원스토어</td>
                                <td>게임</td>
                                <td>엄마몰래 라면끓이기</td>
                                <td class="ellipsis">www.onestore.comcomcomcmo</td>
                                <td>전체이용</td>
                                <td>9.5MB</td>
                                <td>무료</td>
                                <td>전찬후</td>
                                <td>ddddll@naver.com</td>
                            </tr>
                            <tr>
                                <td>9</td>
                                <td>17/05/12</td>
                                <td>02:20</td>
                                <td>원스토어</td>
                                <td>게임</td>
                                <td>엄마몰래 라면끓이기</td>
                                <td class="ellipsis">www.onestore.comcomcomcmo</td>
                                <td>전체이용</td>
                                <td>9.5MB</td>
                                <td>무료</td>
                                <td>전찬후</td>
                                <td>ddddll@naver.com</td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>17/05/12</td>
                                <td>02:20</td>
                                <td>원스토어</td>
                                <td>게임</td>
                                <td>엄마몰래 라면끓이기</td>
                                <td class="ellipsis">www.onestore.comcomcomcmo</td>
                                <td>전체이용</td>
                                <td>9.5MB</td>
                                <td>무료</td>
                                <td>전찬후</td>
                                <td>ddddll@naver.com</td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>17/05/12</td>
                                <td>02:20</td>
                                <td>원스토어</td>
                                <td>게임</td>
                                <td>엄마몰래 라면끓이기</td>
                                <td class="ellipsis">www.onestore.comcomcomcmo</td>
                                <td>전체이용</td>
                                <td>9.5MB</td>
                                <td>무료</td>
                                <td>전찬후</td>
                                <td>ddddll@naver.com</td>
                            </tr>
                            <tr>
                                <td>10</td>
                                <td>17/05/12</td>
                                <td>02:20</td>
                                <td>원스토어</td>
                                <td>게임</td>
                                <td>엄마몰래 라면끓이기</td>
                                <td class="ellipsis">www.onestore.comcomcomcmo</td>
                                <td>전체이용</td>
                                <td>9.5MB</td>
                                <td>무료</td>
                                <td>전찬후</td>
                                <td>ddddll@naver.com</td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                </div> <!-- tbScroll -->
            </div> <!-- top -->
        </div> <!-- collectContents -->
    </div><!-- //bord -->

</div>