$(window).load(function(){
	
	//주메뉴
	$('.gnb>ul>li>a').click(function(){
		console.log("ddd")
		$('.sub_layer').stop().slideDown(400);
		return false;
	});

	$('.sub_layer').mouseleave(function(){
		$('.sub_layer').stop().slideUp(400);
	});

/*	//파일찾기
	var fileTarget = $(".fileFind");

	fileTarget.on("change",function(){
		if(window.FileReader){
			var filename = $(this)[0].files[0].name;
		}
		else{
			var filename = $(this).var().splite("/").pop().split("\\").pop();
		}

		$(this).siblings(".uploadName").val(filename);
	});

*/
	//팝업
	$("body").append("<div id='shadow'></div>");
	$("#shadow").css({
		"position":"fixed",
		"left":"0px",
		"top":"0px",
		"background":"#000",
		"opacity":0.6,
		"width":"100%",
		"height":"100%",
		"display":"none",
		"z-index":"50"
	});

	$("#popupBtn, #devSearch").on("click",function(e){
		e.preventDefault();
		$("#modalPop,#shadow").show();
	});

	$("#read").on("click",function(e){
		e.preventDefault();
		$("#modalPop1,#shadow").show();
	});

	$("#shadow").on("click",function(e){
		$("#closeBtn").trigger("click");
	});

	$("#closeBtn, #cancel").on("click",function(e){
		e.preventDefault();
		$("#modalPop,#modalPop1,#shadow").hide()
	});



	//증가감소버튼
	$("#countUp").on("click",function(e){
		e.preventDefault();
		var start = $("#number").val();
		var num = parseInt(start,10);
		num++;
		if(num>10){
			alert("더이상 증가 할 수 없습니다.");
			num=10;
		}
		$("#number").val(num);
	});

	$("#countDown").on("click",function(e){
		e.preventDefault();
		var start = $("#number").val();
		var num = parseInt(start,10);
		num--;
		if(num<=0){
			alert("더이상 감소 할 수 없습니다.");
			num=1;
		}
		$("#number").val(num);
	});

	//달력
	$(".datepicker").datepicker({
			showOtherMonths: true,
			selectOtherMonths:true,
			dateFormat : "yy/mm/dd",
			changeYear: true, 
			changeMonth: true,
			yearRange : 'c-80:c+10',
			dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
			monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
			showOn: "button",
			buttonImage: "../img/date.gif",
			buttonImageOnly: true,
			buttonText: "select date"
		});

		//체크박스전체선택
		$("#checkAll").on("click",function(){
			if($("#checkAll").prop("checked")){
				$("input[name=\"chk\"]").prop("checked",true);
			}else{
				$("input[name=\"chk\"]").prop("checked",false);
			}
		})
		//파일추가
			var add_count=0;		
		$("#addBtn").on("click",function(e){
			e.preventDefault();			
			addFile();
			add_count+=1;
			if (add_count>=4)
			{
				$(".add").hide();
			}
		});
		
		function addFile(){
			var html = "<div>";
			html += "<label for=\"file_Find\"></label> ";
			html += "<input type=\"file\" class=\"fileFind\" id=\"file_Find\" title=\"\" value=\"\" name=\"\"/>";
			html += "</div>";

			$(".screenFile").append(html);
		}
});
