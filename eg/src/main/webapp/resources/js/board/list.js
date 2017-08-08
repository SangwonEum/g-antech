var amtList = (function () {
    return {
        fnSubmit: function (thisForm, flag) {
            try {
                if (false) {
                    return false;
                } else if (false) {
                    return false;
                } else {
                	if (flag == 0) {
                		thisForm.action = "/board/notice.do";
                	}else if(flag == 1){
                		thisForm.action = "/board/insert.do";
                		
                	}else {
                		thisForm.action = "/board/none.do";
                	}
                	console.log(thisForm.action);
                    thisForm.submit();
                    return true;
                }
            } catch (e) {
                console.error(e);
                return false;
            }
            return false;
        },
        insertReady: function(thisForm,flag){
        	console.log("insertReady");
        },
        detail : function (thisForm, action, sn) {
            thisForm.appSn.value = sn;
            thisForm.action = action;
            thisForm.submit();
        },
        page : function (thisForm,action,pageNo) {
            thisForm.pageIndex.value = pageNo;
            thisForm.action = action;
            thisForm.submit();
        }
    }
})();

function fn_egov_select(appSn) {
    document.boardList.appSn.value = appSn;
    document.boardList.action = action_detail;
    document.boardList.submit();
}

/* pagination 페이지 링크 function */
function fn_egov_link_page(pageNo) {
    document.boardList.pageIndex.value = pageNo;
    document.boardList.action = action_list;
    document.boardList.submit();
}
/**
 * Board list.js sangwon Eum
 */
$(document).ready(function() {
	$("#test tr").click(function() {

		var row = $(this).closest("tr");
		var firstcell = row.find("td").first().text();
		var result;
		console.log("first cell = " + firstcell);

		$.ajax({
			"url" : "/board/detail.do",
			"type" : "POST",
			"dataType" : "json",
			"contentType" : "application/json; charset=UTF-8",
			"async" : false,
			"data" : JSON.stringify({
				"brdSn" : firstcell
			}),
			"success" : function(data) {
				console.log(data.brdSn);
				result = data

			}

		})
		document.getElementById("brdSn").innerHTML = result.brdSn;
		document.getElementById("updDt").innerHTML = result.updDt;
		document.getElementById("updId").innerHTML = result.updId;
		document.getElementById("brdTitle").value = result.brdTitle;
		document.getElementById("brdConts").innerHTML = result.brdConts;

	});
	
	/*$("#addList").click(function(){		
		console.log("addList clicked");	
		document.getElementById("brdSn").className = "able";
		document.getElementById("updDt").className = "able";
		document.getElementById("updId").className = "able";		
	});*/
	
//	$("#searchBtns").click(function(){
//		console.log("searchBtn clicked");
//		$(this).submit();
//	});

});


