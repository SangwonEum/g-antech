<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <style>
  .container {
   
  }
  .person {
      border: 10px solid transparent;
     
      margin-bottom: 25px;
      width: 80%;
      height: 80%;
      opacity: 0.7;
  }
  .person:hover {
      border-color: #f1f1f1;
      
  }
  .carousel-inner img {
      -webkit-filter: grayscale(90%);
      filter: grayscale(90%); /* make all photos black and white */ 
      width: 69.5%; /* Set width to 100% */
      margin: auto;
  }
  .carousel-caption h3 {
      color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }  
  
  
 
  .carousel-control.left,  .carousel-control.right {
 
    background-image: linear-gradient(to right,rgba(0,0,0,.0) 0,rgba(0,0,0,.0001) 100%);
  
}
  
  
  
  
  
  </style>


<div style="padding-left: 5%;" >


<div class="col-sm-3 carousel slide" id="myCarousel" data-ride="carousel" style="padding-top: 2%">
    <!-- Indicators -->
    <ol class="carousel-indicators">
	    <c:forEach var="i" begin="1" end="${size }" >
	      <li data-target="#myCarousel" data-slide-to="${i }" class="active"></li>
	    </c:forEach>
    </ol>
    
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

	<c:forEach var="list" items="${list }" varStatus="vs">
		<c:choose>
			<c:when test="${vs.first}">
		      <div class="item active">   
		     <img src="${list.url }" width="100" height="300"> 
		        <div class="carousel-caption">
		          <h4> <a href="/detail?num=${list.SELL_NUM }" style="color: white;">  ${list.B_TITLE }</a></h4>
		          <p>${list.B_RINFO }</p>
		        </div>      
		      </div>
			</c:when>
		      
			<c:otherwise>
		      <div class="item">   
		       <a href="/detail?num=${list.SELL_NUM }"> </a> <img src="${list.url }"  width="100" height="300">
		        <div class="carousel-caption">
		       <h4>${list.B_TITLE }</h4>
		          <p>${list.B_RINFO }</p>
		        </div>      
		      </div>
		      
			</c:otherwise>
	      </c:choose>
      
 	</c:forEach>
     </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>

  

<!-- 사진 슬라이드 끝 -->



	<div class="container" style="padding-top: 2%">
		<div class="row">
			<div class="col-sm-5">
				<table class="table">
					<thead>
						<tr>
							<th><b style="font-size: 22px;"><span class="blink_me">뉴스</span></b></th>

							<th>

								<div align="right">

									<a href="/news_list"><button type="button"
											class="btn btn-default btn-sm">더보기</button></a>
								</div>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="2">
							<c:forEach var="i" begin="0" end="3" varStatus="status">
									<tr>
										<td colspan="2"><a href=${news[i].URL }>, ${news[i].TITLE }</a></td>
									</tr>

								</c:forEach>
							</td>

						</tr>

						<div class="main-link"></div>
						<script>
							function blinker() {
								$('.blink_me').fadeOut(1000);
								$('.blink_me').fadeIn(1000);
							}

							setInterval(blinker, 1000);
						</script>




					</tbody>
				</table>
			</div>
			
			
			<div class="col-sm-4">
				<table class="table">
					<thead>
						<tr>
							<th><b style="font-size: 22px;">공지사항</b></th>
							<th>
								<div align="right">
									<button type="button" class="btn btn-default btn-sm">관리자
										공지사항 관리</button>
									<button type="button" class="btn btn-default btn-sm">더보기</button>
								</div>

							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="2">Test1</td>
						</tr>
						<tr>
							<td colspan="2">Test2</td>
						</tr>
						<tr>
							<td colspan="2">Test3</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
</div>
</div>