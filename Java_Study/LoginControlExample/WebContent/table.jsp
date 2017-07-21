<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- <script type="text/javascript" src="/javascript/page.js"></script> -->

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.1.min.js"></script>

<title>Insert title here</title>
</head>
<body>

	<form method="POST" action="insertC" name="forname">


		Name:<input type="text" name="name"> <br /> ParentName: <input
			type="text" name="parentId"> <input type="submit"
			name="submit" value="submit">



	</form>
	<form method="POST" action="read" name="forname">



		<input type="submit" name="submit" value="show table">



	</form>

	<form method="POST" action="upload" name="forname">



		<input type="submit" name="submit" value="Upload_File">



	</form>
	<div class="well row" style="margin: 0; passing: 0;">

		<div id="shHtml" />

	</div>
	<div class="well row" style="margin: 0; passing: 0;">

		<div id="pagingHtml"></div>
		
	</div>
	
	<div class="well row" style="margin: 0; passing: 0;">

		<div id="nav"></div>
		
	</div>


	<script type="text/javascript">
		$(document).ready(function() {

			$("#shHtml").append(PagingHelper.shHtml());
			$("#pagingHtml").append(PagingHelper.pagingHtml());
			$("#gotoPage").append(PagingHelper.gotoPage(9));
		});

		var outputHtml = '';
		var totalPage = 30;
		var startPage;
		var endPage;
		var _ = this;
		var datas  = [];
		var Data ={
				"pageNum" : 0,
				"numList" :0
		};
		var pageviewNum = 10;
		var PagingHelper = {

			'shHtml' : function() {
				console.log("shHtml");

				outputHtml += "<div class='page'>";
				outputHtml += "hi";
				outputHtml += "</div>";
				$("pagingHtml")
				return outputHtml;

			},
			'pagingHtml' : function(str,end) {
				var outputTemp = '';
				console.log("pagingHtml");
				console.log("str:"+ str + " end : "+ end);
				if(str=== undefined){
					console.log("undefined");
					str = 0;
				}
				if(end ===undefined) end = 10;
			
				
				this.startPage = str; 
				this.endPage = end;
				
				console.log("After str:"+ this.startPage + " end : "+ this.endPage);
			
				outputTemp += "<div class='paging'>";
				outputTemp += "<ul>";
				for (var i = this.startPage; i <= this.endPage; i++) {
					
					if (i == this.startPage ) {
				
						
						outputTemp += "&nbsp;&nbsp;<a href='javascript:prev_page();'>◀◀</a>&nbsp;&nbsp;";

						
					}else if(i == this.endPage){
						outputTemp += "&nbsp;&nbsp;<a href='javascript:prev_page();'>▶▶</a>&nbsp;&nbsp;";
						
					}else {
						
						console.log(i);
						outputTemp += "&nbsp;&nbsp;<a href='javascript:PagingHelper.gotoPage("+i+");'>"+i+"</a>&nbsp;&nbsp;";
					
					}
				}
				outputTemp += "</ul>"
				outputTemp += "</div>"
				return outputTemp;

			},
			'gotoPage' : function(pageNum) {
				
				console.log("Current page:"+ pageNum);
				if(pageNum <=5){
					$("#pagingHtml").html(PagingHelper.pagingHtml(0,10));
				
				}
				else $("#pagingHtml").html(PagingHelper.pagingHtml(pageNum-5,pageNum+5));
				range = [];
				range.push(pageNum);
				range.push(pageviewNum);

				Data.pageNum = pageNum;
				Data.numList = pageviewNum;
				
				$.ajax({
					"url": "/read",
					"type" : "POST",
					"dataType" : "json",
					"async" : false,
					"data" : Data
				}).done(function(listajax){
					console.log("success");	
					console.log(listajax.length);
					console.log(listajax.tostring);
					datas = JSON.parse(JSON.stringify(listajax));
					console.log(datas[0]["name"]);
					
				});
				outputHtml  = '';
				for(var i= 0 ; i <=10 ; i++){
					outputHtml += "<div class ='something'>";
					outputHtml += datas[i]["id"];	
					outputHtml += " :: " + datas[i]["name"];
					outputHtml += "<br>"
				}
				
				outputHtml += "</div>"
				$("#shHtml").html(outputHtml);
				
			}

		}

	</script>
<style>
#pagingHtml { 
     width: 500px; 
     text-align: center; 
 } 
 #pagingHtml a.href{ 

    display: inline-block; 
     padding: 3px 5px; 
    margin-right: 10px; 
    font-family:Tahoma; 
   background: #ccc; 
     color: #000; 
    text-decoration: none; 
 } 
#pagingHtml a.href.active { 
     background: #333; 
     color: #fff; 
 } 


</style>


</body>
</html>