<%--
  Created by IntelliJ IDEA.
  User: crom
  Date: 2017-08-01
  Time: 오후 6:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="/WEB-INF/common/declare.jspf" %>
<div class="wrap bordWrap">

    <div class="topMenuWrap">
        <div class="topMenu">
            <p>환경관리</p>
            <select name="" title="">
                <option value="" selected="selected">사용자관리</option>
                <option value="">유형별 메뉴관리</option>
                <option value="">코드관리</option>
                <option value="">수집정보관리</option>
                <option value="">수집시간 및 실행관리</option>
            </select>
        </div><!-- //topMenu -->
    </div><!-- //topMenuWrap -->

    <div class="bord appWrap">
        <h2>사용자관리</h2>
        <div class="search">
            <span>성명 or ID</span>
            <label for="searchWord"></label>
            <input type="text" id="searchWord" class="searchWord searchWord1" title="" value="" name="">
            <span class="">사용자 유형</span>
            <select name="" title="">
                <option value="" selected="selected">모니터링 요원</option>
                <option value="">모니터링 요원</option>
                <option value="">관리자</option>
            </select>
            <input type="button" class="searchBtn" title="" value="search" name="">

        </div><!-- //search -->

        <div class="typeWrap">
            <table cellpadding="0" cellspacing="0" class="bordTab bordTabHead" summary="">
                <caption class="hidden">사용자관리</caption>
                <colgroup>
                    <col width="8%">
                    <col width="13%">
                    <col width="*">
                    <col width="10%">
                    <col width="13%">
                    <col width="10%">
                    <col width="10%">
                    <col width="10%">
                </colgroup>
                <thead>
                <tr class="none">
                    <th>사용자 번호</th>
                    <th>사용자 유형</th>
                    <th>사용자 ID(E-mail)</th>
                    <th>사용자 명</th>
                    <th>연락처</th>
                    <th>사용여부</th>
                    <th>등록일자</th>
                    <th>수정일자</th>
                </tr>
                </thead>
            </table>
            <div class="autoWrap">
                <table cellpadding="0" cellspacing="0" class="bordTab" summary="">
                    <caption class="hidden">사용자관리</caption>
                    <colgroup>
                        <col width="8%">
                        <col width="13%">
                        <col width="*">
                        <col width="10%">
                        <col width="13%">
                        <col width="10%">
                        <col width="10%">
                        <col width="10%">
                    </colgroup>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>모니터링 요원</td>
                        <td>dddddd@nate.com</td>
                        <td>연초흔</td>
                        <td>010-1111-1234</td>
                        <td>사용</td>
                        <td>16/12/12</td>
                        <td>16/12/13</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>모니터링 요원</td>
                        <td>dddddd@nate.com</td>
                        <td>연초흔</td>
                        <td>010-1111-1234</td>
                        <td>사용</td>
                        <td>16/12/12</td>
                        <td>16/12/13</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>모니터링 요원</td>
                        <td>dddddd@nate.com</td>
                        <td>연초흔</td>
                        <td>010-1111-1234</td>
                        <td>사용</td>
                        <td>16/12/12</td>
                        <td>16/12/13</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>모니터링 요원</td>
                        <td>dddddd@nate.com</td>
                        <td>연초흔</td>
                        <td>010-1111-1234</td>
                        <td>사용</td>
                        <td>16/12/12</td>
                        <td>16/12/13</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>모니터링 요원</td>
                        <td>dddddd@nate.com</td>
                        <td>연초흔</td>
                        <td>010-1111-1234</td>
                        <td>사용</td>
                        <td>16/12/12</td>
                        <td>16/12/13</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>모니터링 요원</td>
                        <td>dddddd@nate.com</td>
                        <td>연초흔</td>
                        <td>010-1111-1234</td>
                        <td>사용</td>
                        <td>16/12/12</td>
                        <td>16/12/13</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>모니터링 요원</td>
                        <td>dddddd@nate.com</td>
                        <td>연초흔</td>
                        <td>010-1111-1234</td>
                        <td>사용</td>
                        <td>16/12/12</td>
                        <td>16/12/13</td>
                    </tr>
                    </tbody>
                </table>
            </div><!-- autoWrap -->
        </div><!-- typeWrap -->

        <div class="pagingWrap">
            <!--  	<ul class="paging">
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
                </ul>-->
            <p class="btn"><a href="#">추가</a></p>
        </div>

        <div class="app collect collectInfo">
            <p class="title">사용자 정보</p>
            <table cellpadding="0" cellspacing="0" class="" summary="">
                <caption></caption>
                <colgroup>
                    <col width="14%">
                    <col width="18%">
                    <col width="18%">
                    <col width="14%">
                    <col width="18%">
                    <col width="18%">
                </colgroup>
                <tbody>
                <tr>
                    <th>사용자 번호</th>
                    <td><input type="text" class="num" title="" value="" name=""></td>
                    <td></td>
                    <th>사용자 유형</th>
                    <td>
                        <select name="" title="">
                            <option value="" selected="selected">모니터링 요원</option>
                            <option value="">--</option>
                            <option value="">--</option>
                        </select>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th>사용자 ID</th>
                    <td colspan="2"><input type="text" class="user" title="" value="" name=""></td>
                    <th>사용자 명</th>
                    <td colspan="2"><input type="text" class="user" title="" value="" name=""></td>
                </tr>
                <tr>
                    <th>비밀번호</th>
                    <td colspan="2"><input type="password" class="user" title="" value="" name=""></td>
                    <th>비밀번호 확인</th>
                    <td colspan="2"><input type="password" class="user" title="" value="" name=""></td>
                </tr>
                <tr>
                    <th>연락처</th>
                    <td colspan="2">
                        <input type="text" class="user" title="" value="" name="">
                    </td>
                    <th>사용여부</th>
                    <td>
                        <select name="" title="">
                            <option value="" selected="selected">사용</option>
                            <option value="">미사용</option>
                        </select>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <th>등록자/일시</th>
                    <td colspan="2">
                        <ul class="">
                            <li class="per perDisable">전찬후</li>
                            <li class="data">2017-06-16</li>
                        </ul>
                    </td>
                    <th>수정자/일시</th>
                    <td colspan="2">
                        <ul class="">
                            <li class="per">전찬후</li>
                            <li class="data dataDisable">2017-06-16</li>
                        </ul>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="btnWrap">
            <p class="btn"><a href="#">저장</a></p>
            <p class="btn del"><a href="#">삭제</a></p>
        </div>
    </div><!-- //bord -->

</div>