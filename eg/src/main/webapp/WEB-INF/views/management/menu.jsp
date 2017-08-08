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
                <option value="" selected="selected">유형별 메뉴관리</option>
                <option value="">사용자관리</option>
                <option value="">코드관리</option>
                <option value="">수집정보관리</option>
                <option value="">수집시간 및 실행관리</option>
            </select>
        </div><!-- //topMenu -->
    </div><!-- //topMenuWrap -->

    <div class="bord appWrap">
        <h2>유형별 메뉴관리</h2>
        <div class="search">
            <span class="">유형</span>
            <select name="" title="">
                <option value="" selected="selected">--</option>
                <option value="">--</option>
                <option value="">-</option>
            </select>
            <span>사용자 명 or 이메일</span>
            <label for="searchWord"></label>
            <input type="text" id="searchWord" class="searchWord searchWord1" title="" value="" name="">
            <input type="button" class="searchBtn" title="" value="search" name="">
        </div><!-- //search -->

        <div class="typeWrap">
            <table cellpadding="0" cellspacing="0" class="bordTab bordTabHead" summary=".">
                <caption class="hidden">유형별 메뉴관리</caption>
                <colgroup>
                    <col width="12%">
                    <col width="15%">
                    <col width="*">
                    <col width="15%">
                    <col width="15%">
                    <col width="15%">
                </colgroup>
                <thead>
                <tr class="none">
                    <th>No</th>
                    <th>권한유형</th>
                    <th>사용자ID</th>
                    <th>성명</th>
                    <th>권한사용여부</th>
                    <th>등록일자</th>
                </tr>
                </thead>
            </table>

            <div class="autoWrap">
                <table cellpadding="0" cellspacing="0" class="bordTab" summary="">
                    <caption class="hidden">유형별 메뉴관리</caption>
                    <colgroup>
                        <col width="12%">
                        <col width="15%">
                        <col width="*">
                        <col width="15%">
                        <col width="15%">
                        <col width="15%">
                    </colgroup>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>ROLE_USER</td>
                        <td>ksymailing@gmail.com</td>
                        <td>김석영</td>
                        <td>2016/01/01</td>
                        <td>admin</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>ROLE_USER</td>
                        <td>ksymailing@gmail.com</td>
                        <td>김석영</td>
                        <td>2016/01/01</td>
                        <td>admin</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>ROLE_USER</td>
                        <td>ksymailing@gmail.com</td>
                        <td>김석영</td>
                        <td>2016/01/01</td>
                        <td>admin</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>ROLE_USER</td>
                        <td>ksymailing@gmail.com</td>
                        <td>김석영</td>
                        <td>2016/01/01</td>
                        <td>admin</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>메일종류</td>
                        <td>dkjflkss</td>
                        <td>사용</td>
                        <td>2016/01/01</td>
                        <td>2016/01/01</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>메일종류</td>
                        <td>dkjflkss</td>
                        <td>사용</td>
                        <td>2016/01/01</td>
                        <td>2016/01/01</td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>메일종류</td>
                        <td>dkjflkss</td>
                        <td>사용</td>
                        <td>2016/01/01</td>
                        <td>2016/01/01</td>
                    </tr>

                    </tbody>
                </table>
            </div>

        </div>
        <div class="pagingWrap">
            <!-- <ul class="paging">
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
            <p class="btn"><a href="#" id="popupBtn">추가</a></p>
        </div>



        <div class="app collect code set">
            <p class="title">권한설정</p>
            <div class="codeTb">
                <table cellpadding="0" cellspacing="0" class="bordTabHead" summary="">
                    <caption></caption>
                    <colgroup>
                        <col width="3%">
                        <col width="5%">
                        <col width="*">
                        <col width="8%">
                        <col width="8%">
                        <col width="8%">
                        <col width="10%">
                        <col width="12%">
                    </colgroup>
                    <thead>
                    <tr>
                        <th></th>
                        <th>No</th>
                        <th>화면명</th>
                        <th>등록권한</th>
                        <th>수정권한</th>
                        <th>삭제권한</th>
                        <th>수정ID</th>
                        <th>수정일자</th>
                    </tr>
                    </thead>
                </table>

                <div class="autoWrap autoCode">
                    <table cellpadding="0" cellspacing="0" class="" summary="">
                        <caption></caption>
                        <colgroup>
                            <col width="3%">
                            <col width="5%">
                            <col width="*">
                            <col width="8%">
                            <col width="8%">
                            <col width="8%">
                            <col width="10%">
                            <col width="12%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>1</td>
                            <td>앱관리 &lt;&lt; 앱 정보 조회</td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>전찬후</td>
                            <td>2017/06/12</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>2</td>
                            <td>앱관리 &lt;&lt; 앱 정보 조회</td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>전찬후</td>
                            <td>2017/06/12</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>3</td>
                            <td>앱관리 &lt;&lt; 앱 정보 조회</td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>전찬후</td>
                            <td>2017/06/12</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>4</td>
                            <td>앱관리 &lt;&lt; 앱 정보 조회</td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>전찬후</td>
                            <td>2017/06/12</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>5</td>
                            <td>앱관리 &lt;&lt; 앱 정보 조회</td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>전찬후</td>
                            <td>2017/06/12</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>6</td>
                            <td>앱관리 &lt;&lt; 앱 정보 조회</td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>전찬후</td>
                            <td>2017/06/12</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>7</td>
                            <td>앱관리 &lt;&lt; 앱 정보 조회</td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>전찬후</td>
                            <td>2017/06/12</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>8</td>
                            <td>앱관리 &lt;&lt; 앱 정보 조회</td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>전찬후</td>
                            <td>2017/06/12</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>9</td>
                            <td>앱관리 &lt;&lt; 앱 정보 조회</td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>전찬후</td>
                            <td>2017/06/12</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>10</td>
                            <td>앱관리 &lt;&lt; 앱 정보 조회</td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>전찬후</td>
                            <td>2017/06/12</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>11</td>
                            <td>앱관리 &lt;&lt; 앱 정보 조회</td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>전찬후</td>
                            <td>2017/06/12</td>
                        </tr>
                        <tr>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>12</td>
                            <td>앱관리 &lt;&lt; 앱 정보 조회</td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td><input type="checkbox" class="it " title="" value="" name=""></td>
                            <td>전찬후</td>
                            <td>2017/06/12</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <!--
                <div class="pagingWrap pagingWrapType" style="">
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
                </div>-->
            </div>

        </div>
        <div class="btnWrap">
            <p class="btn"><a href="#">저장</a></p>
            <p class="btn del"><a href="#">삭제</a></p>
        </div>
    </div><!-- //bord -->

</div>