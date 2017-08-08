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
                <option value="" selected="selected">코드관리</option>
                <option value="">유형별 메뉴관리</option>
                <option value="">사용자관리</option>
                <option value="">수집정보관리</option>
                <option value="">수집시간 및 실행관리</option>
            </select>
        </div><!-- //topMenu -->
    </div><!-- //topMenuWrap -->

    <div class="bord appWrap">
        <h2>코드관리</h2>
        <div class="search">
            <span>코드ID or 코드명</span>
            <label for="searchWord"></label>
            <input type="text" id="searchWord" class="searchWord codeName" title="" value="" name="">
            <input type="button" class="searchBtn" title="" value="search" name="">
        </div><!-- //search -->

        <div class="typeWrap">
            <table cellpadding="0" cellspacing="0" class="bordTab bordTabHead" summary="">
                <caption class="hidden">코드관리</caption>
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
                    <th>코드 명</th>
                    <th>코드 ID</th>
                    <th>사용여부</th>
                    <th>등록일자</th>
                    <th>수정일자</th>
                </tr>
                </thead>
            </table>
            <div class="autoWrap">
                <table cellpadding="0" cellspacing="0" class="bordTab " summary="">
                    <caption class="hidden">코드관리</caption>
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
                        <td>메일종류</td>
                        <td>dkjflkss</td>
                        <td>사용</td>
                        <td>2016/01/01</td>
                        <td>2016/01/01</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>메일종류</td>
                        <td>dkjflkss</td>
                        <td>사용</td>
                        <td>2016/01/01</td>
                        <td>2016/01/01</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>메일종류</td>
                        <td>dkjflkss</td>
                        <td>사용</td>
                        <td>2016/01/01</td>
                        <td>2016/01/01</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>메일종류</td>
                        <td>dkjflkss</td>
                        <td>사용</td>
                        <td>2016/01/01</td>
                        <td>2016/01/01</td>
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
            </div><!-- autoWrap -->

        </div>

        <!-- 	<div class="pagingWrap">
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
                <p class="btn"><a href="#">추가</a></p>
            </div>
         -->
        <div class="app collect code">
            <p class="title">코드목록</p>
            <div class="codeTb">
                <table cellpadding="0" cellspacing="0" class="bordTabHead" summary="">
                    <caption></caption>
                    <colgroup>
                        <col width="10%">
                        <col width="15%">
                        <col width="15%">
                        <col width="15%">
                        <col width="10%">
                        <col width="10%">
                        <col width="10%">
                    </colgroup>
                    <thead>
                    <tr>
                        <th>No</th>
                        <th>코드 명</th>
                        <th>코드 ID</th>
                        <th>표현순서</th>
                        <th>사용여부</th>
                        <th>수정ID</th>
                        <th>수정일자</th>
                    </tr>
                    </thead>
                </table>

                <div class="autoWrap autoCode">
                    <table cellpadding="0" cellspacing="0" class="" summary="">
                        <caption></caption>
                        <colgroup>
                            <col width="10%">
                            <col width="15%">
                            <col width="15%">
                            <col width="15%">
                            <col width="10%">
                            <col width="10%">
                            <col width="10%">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>메일종류</td>
                            <td>dklsk</td>
                            <td>10</td>
                            <td>사용</td>
                            <td>전찬후</td>
                            <td>17/06/12</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>메일종류</td>
                            <td>dklsk</td>
                            <td>10</td>
                            <td>사용</td>
                            <td>전찬후</td>
                            <td>17/06/12</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>메일종류</td>
                            <td>dklsk</td>
                            <td>10</td>
                            <td>사용</td>
                            <td>전찬후</td>
                            <td>17/06/12</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>메일종류</td>
                            <td>dklsk</td>
                            <td>10</td>
                            <td>사용</td>
                            <td>전찬후</td>
                            <td>17/06/12</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>메일종류</td>
                            <td>dklsk</td>
                            <td>10</td>
                            <td>사용</td>
                            <td>전찬후</td>
                            <td>17/06/12</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>메일종류</td>
                            <td>dklsk</td>
                            <td>10</td>
                            <td>사용</td>
                            <td>전찬후</td>
                            <td>17/06/12</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>메일종류</td>
                            <td>dklsk</td>
                            <td>10</td>
                            <td>사용</td>
                            <td>전찬후</td>
                            <td>17/06/12</td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>메일종류</td>
                            <td>dklsk</td>
                            <td>10</td>
                            <td>사용</td>
                            <td>전찬후</td>
                            <td>17/06/12</td>
                        </tr>
                        <tr>
                            <td>9</td>
                            <td>메일종류</td>
                            <td>dklsk</td>
                            <td>10</td>
                            <td>사용</td>
                            <td>전찬후</td>
                            <td>17/06/12</td>
                        </tr>
                        <tr>
                            <td>10</td>
                            <td>메일종류</td>
                            <td>dklsk</td>
                            <td>10</td>
                            <td>사용</td>
                            <td>전찬후</td>
                            <td>17/06/12</td>
                        </tr>
                        <tr>
                            <td>11</td>
                            <td>메일종류</td>
                            <td>dklsk</td>
                            <td>10</td>
                            <td>사용</td>
                            <td>전찬후</td>
                            <td>17/06/12</td>
                        </tr>
                        <tr>
                            <td>12</td>
                            <td>메일종류</td>
                            <td>dklsk</td>
                            <td>10</td>
                            <td>사용</td>
                            <td>전찬후</td>
                            <td>17/06/12</td>
                        </tr>
                        </tbody>
                    </table>
                </div><!-- autoCode -->

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
                <p class="btn"><a href="#" id="popupBtn">추가</a></p>
            </div>
        </div>


        <div class="btnWrap">
            <p class="btn"><a href="#">저장</a></p>
            <p class="btn del"><a href="#">삭제</a></p>
        </div>
    </div><!-- //bord -->

</div>