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
                <option value="" selected="selected">수집정보관리</option>
                <option value="">사용자관리</option>
                <option value="">유형별 메뉴관리</option>
                <option value="">코드관리</option>
                <option value="">수집시간 및 수동 실행관리</option>
            </select>
        </div><!-- //topMenu -->
    </div><!-- //topMenuWrap -->

    <div class="bord appWrap">
        <h2>수집정보관리</h2>
        <div class="search">
            <span>정보명 또는 URL</span>
            <label for="numInfo"></label>
            <input type="text" id="numInfo" class="numInfo" title="" value="" name="">
            <span class="">마켓명</span>
            <select name="" title="">
                <option value="" selected="selected">전체</option>
                <option value="">--</option>
                <option value="">---</option>
            </select>
            <span class="">카테고리</span>
            <select name="" title="">
                <option value="" selected="selected">전체</option>
                <option value="">--</option>
                <option value="">---</option>
            </select>
            <input type="button" class="searchBtn" title="" value="search" name="">
        </div><!-- //search -->

        <div class="typeWrap">
            <table cellpadding="0" cellspacing="0" class="bordTab bordTabHead" summary="">
                <caption class="hidden">수집정보관리</caption>
                <colgroup>
                    <col width="3%">
                    <col width="10%">
                    <col width="10%">
                    <col width="15%">
                    <col width="*">
                    <col width="10%">
                    <col width="10%">
                    <col width="10%">
                </colgroup>
                <thead>
                <tr class="none">
                    <th>No</th>
                    <th>마켓</th>
                    <th>카테고리</th>
                    <th>수집정보명</th>
                    <th>URL</th>
                    <th>사용여부</th>
                    <th>등록일자</th>
                    <th>수정일자</th>
                </tr>
                </thead>
            </table>

            <div class="autoWrap">
                <table cellpadding="0" cellspacing="0" class="bordTab" summary="">
                    <caption class="hidden">수집정보관리</caption>
                    <colgroup>
                        <col width="3%">
                        <col width="10%">
                        <col width="10%">
                        <col width="15%">
                        <col width="*">
                        <col width="10%">
                        <col width="10%">
                        <col width="10%">
                    </colgroup>

                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>앱스토어</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>사용</td>
                        <td>16/01/01</td>
                        <td>16/01/01</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>앱스토어</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>사용</td>
                        <td>16/01/01</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>앱스토어</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>사용</td>
                        <td>16/01/01</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>앱스토어</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>사용</td>
                        <td>16/01/01</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>앱스토어</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>사용</td>
                        <td>16/01/01</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>앱스토어</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>사용</td>
                        <td>16/01/01</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>앱스토어</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>사용</td>
                        <td>16/01/01</td>
                        <td></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="pagingWrap">
            <!-- 	<ul class="paging">
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
                </ul> -->
            <p class="btn"><a href="#">추가</a></p>
        </div>

        <div class="app collect">
            <p class="title">수집정보 상세내역</p>
            <table cellpadding="0" cellspacing="0" class="" summary="">
                <caption></caption>
                <colgroup>
                    <col width="12%">
                    <col>
                    <col width="12%">
                    <col>
                    <col width="12%">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <th>수집정보번호</th>
                    <td><input type="text" class="" title="" value="" name=""></td>
                    <td></td>
                    <th>수집정보명</th>
                    <td colspan="2"><input type="text" class="" title="" value="" name=""></td>
                </tr>
                <tr>
                    <th>수집주소</th>
                    <td colspan="5"><input type="text" class="" title="" value="" name=""></td>
                </tr>
                <tr>
                    <th>마켓명</th>
                    <td>
                        <select name="" title="">
                            <option value="" selected="selected">플레이스토어</option>
                            <option value="">앱스토어</option>
                            <option value="">원스토어</option>
                        </select>
                    </td>
                    <th>카테고리 분류</th>
                    <td>
                        <select name="" title="">
                            <option value="" selected="selected">게임</option>
                            <option value="">--</option>
                            <option value="">--</option>
                        </select>
                    </td>
                    <th>사용여부</th>
                    <td>
                        <select name="" title="">
                            <option value="" selected="selected">사용</option>
                            <option value="">미사용</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>등록ID/일시</th>
                    <td colspan="2">
                        <input type="text" class="wid" title="" value="" name="">
                        <input type="text" class="wid right" title="" value="" name="">
                    </td>
                    <th>수정ID/일시</th>
                    <td colspan="2">
                        <input type="text" class="wid" title="" value="" name="">
                        <input type="text" class="wid right" title="" value="" name="">
                    </td>
                </tr>
                <tr>
                    <th>앱 이름</th>
                    <td colspan="2">
                        <input type="text" class="" title="" value="" name="">
                    </td>
                    <th>앱 ID</th>
                    <td colspan="2">
                        <input type="text" class="" title="" value="" name="">
                    </td>
                </tr>
                <tr>
                    <th>가격</th>
                    <td>
                        <input type="text" class="price" title="" value="" name="">
                        <select name="" title="" class="won">
                            <option value="" selected="selected">원</option>
                            <option value="">--</option>
                        </select>
                    </td>
                    <th>이용등급</th>
                    <td>
                        <select name="" title="">
                            <option value="" selected="selected">전체</option>
                            <option value="">--</option>
                        </select>
                    </td>
                    <th>용량</th>
                    <td>
                        <select name="" title="">
                            <option value="" selected="selected">--</option>
                            <option value="">--</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>버전</th>
                    <td colspan="2"><input type="text" class="" title="" value="" name=""></td>
                    <th>업데이트일자</th>
                    <td colspan="2"><input type="text" class="" title="" value="" name=""></td>
                </tr>
                <tr>
                    <th>개발사 명</th>
                    <td colspan="2"><input type="text" class="" title="" value="" name=""></td>
                    <th>이메일</th>
                    <td colspan="2"><input type="text" class="" title="" value="" name=""></td>
                </tr>
                <tr>
                    <th>연락처</th>
                    <td colspan="2"><input type="text" class="" title="" value="" name=""></td>
                    <th>주소</th>
                    <td colspan="2"><input type="text" class="" title="" value="" name=""></td>
                </tr>
                <tr>
                    <th>홈페이지</th>
                    <td colspan="5"><input type="text" class="" title="" value="" name=""></td>
                </tr>
                <tr>
                    <th>비고</th>
                    <td colspan="5"><input type="text" class="" title="" value="" name=""></td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="btnWrap">
            <p class="btn"><a href="#">수정</a></p>
            <p class="btn del"><a href="#">삭제</a></p>
        </div>
    </div><!-- //bord -->

</div>