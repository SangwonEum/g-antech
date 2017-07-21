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

	//파일찾기
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

	$("p.add img").on("click",function(e){
		e.preventDefault;
		alert("ddd")

	})

			
});/*끝*/