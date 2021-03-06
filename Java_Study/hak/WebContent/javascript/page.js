
/**
 * go map!
 */

/*
 * Map variables
 */
var map;
var infoWindow;
var service;
var list = [];// 마커를 찍기위한 리스트
var plist = [];
var mapBound;
var locationtemp;
var markers = [];
var markerstemp= [];
var listtemp = [];
var njjj = [];
var moreadd = []; // 지도에 값이 더 나타나면 그값을 저장할 리스트 
var loca = "default";
var locatemp = "default";
var secretMessages = ['This', 'is', 'the', 'secret', 'message'];

var allData = {
	"mKind" : "allPay", // 매물종류
	"rKind" : [ "all_room" ], // 방종류
	"deposit_from" : "0 만원", // 보증금
	"deposit_to" : "9999999 만원",
	"mpay_from" : "0 만원", // 월세
	"mpay_to" : "9999999 만원",
	"parking" : null, // 주자가능
	"pet" : null, // 애완동물가능
	"lhok" : null, // LH가능
	"area" : [], // 평수(면적)
	"floor" : [], // 층수

	"east" : 127.14252173859859,
	"west" : 126.65294349152828,
	"south" : 37.390248965317404,
	"north" : 37.614135362297105
};
var allDataTemp = {
	"mKind" : "allPay", // 매물종류
	"rKind" : [ "all_room" ], // 방종류
	"deposit_from" : "0 만원", // 보증금
	"deposit_to" : "9999999 만원",
	"mpay_from" : "0 만원", // 월세
	"mpay_to" : "9999999 만원",
	"parking" : null, // 주자가능
	"pet" : null, // 애완동물가능
	"lhok" : null, // LH가능
	"area" : [], // 평수(면적)
	"floor" : [], // 층수

	"east" : 127.14252173859859,
	"west" : 126.65294349152828,
	"south" : 37.390248965317404,
	"north" : 37.614135362297105
};
function initMap() {
	console.log("initmap"+ "위도 :"+ log + "경도 : "+ lag);
	console.log(log);
	map = new google.maps.Map(document.getElementById('map'), {
		
	    
		center : {
			//lat : 37.5326049,
			//lng : 126.8646878
			lat : log,
			lng : lag
		},

		zoom : 15,
		styles : [ {
			stylers : [ {
				visibility : 'simplified'
			} ]
		}, {
			elementType : 'labels',
			stylers : [ {
				visibility : 'off'
			} ]
		} ]
	});

	infoWindow = new google.maps.InfoWindow();
	service = new google.maps.places.PlacesService(map);
	map.addListener('idle', performSearch);
	
	
}
function performSearch() {

	
	jd = JSON.parse(JSON.stringify(allData));
	jdt = JSON.parse(JSON.stringify(allDataTemp));
	console.log("perform_search() ALL data="+ JSON.stringify(allData));


	if (// 만약 네브바 가 감지 된다면 지도는 고정
	(jd.rKind[0]) != (jdt.rKind[0]) || (jd.mKind != (jdt.mKind))
			|| (jd.deposit_from != jdt.deposit_from)
			|| (jd.parking != jdt.parking) || (jd.pet != jdt.pet)
			|| (jd.lhok != jdt.lhok)
			|| (jd.deposit_to != jdt.deposit_to)
			|| (jd.mpay_from != jdt.mpay_from)
			|| (jd.mpay_to   != jdt.mpay_to)
			|| (jd.pet    != jdt.pet)
			|| (jd.parking != jdt.parking)
			|| (jd.lhok != jdt.lhok)
			|| (jd.area[0] != jdt.area[0])
			|| (jd.floor[0] != jdt.floor[0])
			|| (jd.floor[1] != jdt.floor[1])
			|| (jd.floor[2] != jdt.floor[2])
			|| (jd.floor[3] != jdt.floor[3])
			
			
			

	) {
		console.log("allData_perform_search="+JSON.stringify(allData));
		allDataTemp = allData;
		console.log("네브바 클릭 변경  탐지");
		$.ajax({

			"url" : "/gomapin",
			"type" : "post",
			"dataType" : "json",
			"async" : false,
			"data" : allData

		}).done(function(listajax) { // 위치 정도 geometry.locaiton
			console.log("클릭후 새로운 정보 : " + listajax.length);
			
			list = [];
			list = listajax;
			locationtemp = listajax;
			// console.log("add_marker 끝" + JSON.stringify(list));
			console.log("클릭후 리스트 사이즈 : list.length : " + list.length);
		});

	} else {// 네브바는 고정 지도가 움직인다면
		console.log("지도 경로 변경 탐지");
	
		mapBound = map.getBounds().toJSON();
		allData.east = mapBound.east;
		allData.west = mapBound.west;
		allData.south = mapBound.south;
		allData.north = mapBound.north;

	}

	var request = {
		bounds : map.getBounds(),
		keyword : 'best view'
	};
	service.radarSearch(request, callback);
}
function callback(results, status) {

	
	addMarker(temp,"test");// 처음 디폴트 값으로 찍어 줘야함
	addMarker(temp3,"test2");
	//console.log("callback list = "+ JSON.stringify(list));
	if (list.length == 0) {
		$("#sh").html("");
		// console.log("njj.size = " + njj.length);
		 for(var i=0; i <500 ; i++){
			 deleteMarkers();
			 markers = [];
			 
		 }
		arrl = [];
		njj = [];
		PagingHelper.gotoPage(1);
	}else {
		//var njson = JSON.parse(JSON.stringify(njj));
		 for(var i=0; i <500 ; i++){
			 deleteMarkers(); // 리스트는 이제
			 markers = [];
			 
		 }
		for (var i = 0; i < list.length; i++) {

			if (list.length != 0) {
				var njjinput = njjj[i];
			    addMarker(list[i],''+njjj[i]);

			}

			if (i == list.length - 1) {

				
				plist = list;
				list = [];

				$.ajax({
					"url" : "/gsearchTest",
					"type" : "POST",
					"dataType" : "json",
					"async" : false,
					"data" : allData

				}).success(function(listajax) {

					if (listajax.length != 0) {

						arrl = listajax;
						njjj = njj;
						njj = []
						for (var i = 0; i < arrl.length; i++) {

							var obj = arrl[i];
							njj.push(obj["SELL_NUM"]);

						}
						
						njjj = njj;
					} else {
						arrl = [];
					}

				});
				console.log("새로운 callback 리스트= " + list.length);
				console.log("마커스 사이즈는 : " + markers.length);
				console.log("마커스 템프 사이즈는 :"+ markerstemp.length);
				// console.log("callback arrl size:" + arrl.length);
				

				PagingHelper.gotoPage(1);
			}
		}
	}

}

function clearMarkers() {
	setMapOnAll(null);
}
function showMarkers() {
	setMapOnAll(map);
}
function deleteMarkers() {
	clearMarkers();
}
function setMapOnAll(map) {
	//console.log("=======setMapOnAll========= " + markers.length);
	//console.log("셋 맴 언 얼 마커스 사이즈는 : " + markers.length);
	//console.log("셋 맵언 얼마커스 템프 사이즈는 :"+ markerstemp.length);
if(markers.length != markerstemp.length){
	for (var i = 0; i < markers.length; i++) {

		markers[i].setMap(map);
	}
}
markerstemp = markers; 
}
var compareJSON = function(obj1, obj2) {
	console.log("comare JSOn=" + (obj1 == obj2));
	var ret = {};
	for ( var i in obj2) {
		if (!obj1.hasOwnProperty(i) || obj2[i] !== obj1[i]) {
			ret[i] = obj2[i];
		}
	}
	return ret;
};

function attachSecretMessage(marker, secretMessage) {
	  var infowindow = new google.maps.InfoWindow({
	    //content: secretMessage
	    content: '<IMG BORDER="90" ALIGN="Left" SRC="/images/room.jpg"  width="105" height="105"> Room number:' + secretMessage
});
//=============================================
	  
	
	  
//=======================================


marker.addListener('click', function() {
		
		  	console.log("infoWindow:"+ infowindow);
		  	if (isInfoWindowOpen(infowindow)){
			 
			    console.log("open");
				infowindow.close();

			} else {
				console.log("close=" + infowindow.open.length);;
				infowindow.open(marker.get('map'), marker);
				infowindow.open.length = 0;
			}
	  });
}
function attachSecretMessage(marker, secretMessage) {
	  var infowindow = new google.maps.InfoWindow({
	    //content: secretMessage
	    content: '<IMG BORDER="90" ALIGN="Left" SRC="/images/room.jpg"  width="105" height="105"> Room number:' + secretMessage
	  });

	  marker.addListener('click', function() {
		
		  	console.log("infoWindow:"+ infowindow);
		  	if (isInfoWindowOpen(infowindow)){
			 
			    console.log("open");
				infowindow.close();

			} else {
				console.log("close=" + infowindow.open.length);;
				infowindow.open(marker.get('map'), marker);
				infowindow.open.length = 0;
			}
	  });
}

function isInfoWindowOpen(infoWindow){
    var map = infoWindow.getMap();
    return (map !== null && typeof map !== "undefined");
}

function addMarker(place,address) {
	var marker = new google.maps.Marker({
		position : place.geometry.location,
		draggable: true,
		animation: google.maps.Animation.DROP,
		map : map,
		icon : {
			url : 'http://maps.gstatic.com/mapfiles/circle.png',
			//url : "images/lion.png",
			//url : "/images/house.png",
			anchor : new google.maps.Point(10, 10),
			scaledSize : new google.maps.Size(10, 17)
			//size : new google.maps.Size(76, 77),
			//anchor: new google.maps.Point(28, 28)

	
		}
	});
	attachSecretMessage(marker, address);
	markers.push(marker);

	for (var i = 0; i < markers.length; i++) {
		markers[i].setMap(map);
	}

	function createMarker(place) {
		var placeLoc = place.geometry.location;
		var marker = new google.maps.Marker({
			map : map,
			position : place.geometry.location,
		});
		
		google.maps.event.addListener(marker, 'click', function() {
			
			if (isInfoWindowOpen(infoWindow)){
			    // do something if it is open
				console.log("open");
				infowindow.setContent(place.name);
				infowindow.close(map, this);
			} else {
			    // do something if it is closed
				console.log("closed");
				infowindow.setContent(place.name);
				infowindow.open(map, this);
			}
		
		});
	}

	if (list.length == 0) {

		$.ajax({

			"url" : "/gomapin",
			"type" : "post",
			"dataType" : "json",
			"async" : false,
			"data" : allData

		})
		.done(function(listajax) { // 위치 정도 geometry.locaiton
				console.log("새로운 맵 정보 : " + listajax.length);

				list = [];
				list = listajax;
				locationtemp = listajax;

				console.log("새로운 리스트 정보 : list.length : "
						+ list.length + " listTemp = "
						+ listtemp.length);
			
		});
	
		$.ajax({
			"url" : "/gsearchTest",
			"type" : "POST",
			"dataType" : "json",
			"async" : false,
			"data" : allData

		}).success(function(listajax) {

			if (listajax.length != 0) {

				arrl = listajax;
				njjj = []
				for (var i = 0; i < arrl.length; i++) {

					var obj = arrl[i];
					njjj.push(obj["SELL_NUM"]);

				}
				
			
			} 
		});
	
	}
}

/**
 * **************** * paging! * * * ****************
 * 
 * 
 * 
 * *************************************************
 */

/*
 * paging variables
 */

var arrl = "empty";
var arrlTemp = "empty";
var jpgs = "empty";
var njj = "empty"; // 사진 url 정보 얻어올 값
var listajax = "empty";
var json = "empty";
var dn = 7750005;
var start = 0;
var end = 3;
var curr = 0;
var jsonarr = [];
var log;// 검색결과의 위도
var lag;// 검색결과의 경도
var PagingHelper = {
	
	'data' : {
		currentPage : 1

		,
		pageSize : 3,
		maxListCount : 5,
		startnum : 1 // 시작 글번호
		,
		lastnum : 700 // 마지막 글번호
		,
		totalCnt : 0 // 전체 글의 갯수.
		,
		totalPageCnt : 0
	// 전체 페이지 수
	},
	'setOption' : function(opt) {
		if (typeof opt != 'object')
			return;
		for (key in opt) {
			if (key in this.data) {
				this.data[key] = opt[key]; // data에 입력받은 설정값 할당.
			}
		}
	},
	'nj' : function(arr) {

		njj = arr;
	},
	'dn' : function(dnn) {

		dn = dnn;
	},
	'log' : function(a) {
		log = a;
	},
	'lag' : function(a) {
		lag = a;
	},
	'arrlist' : function(arr) {

		arrl = arr;

	},
	'jpglist' : function(jpg) {
		jpgs = jpg;

	},
	'loca' : function(val){
		loca = val;
	
		
		console.log("정보 검색창이 center값이 바뀌었습니다");
		var location = JSON.parse(JSON.stringify(loca));
		console.log("로카 : "+ location.lat +" lng:"+ location.lng);//===========================
		log = location.lat;
		lag = location.lng;
		initMap();
			
		
	},
	'allData' : function(all) {
		allData = all;
	},
	'linkajax' : function(num) {
		location.href = '/detail?num=' + njj[num];

	},
	'shHtml_google' : function(list) {
		var _ = this;

	},
	
	'shHtml' : function(n_block) {
		console.log("shHtml");
		 console.log("shHtml");
		var _ = this;
		if (typeof n_block == 'undefined')
			n_block = curr;

		var sb = '';
		var sbTemp = '';

		if (arrl == 'empty') {
			curr = 1;
		} else {
			curr = n_block
		}
		end = (curr * 4) - 1;//3
		start = end - 3;//0,1,2,3
		if (end >= _.data.totalCnt) {
			end = _.data.totalCnt - 1;
		}

		var count = 0;
		if (arrl.length == 0) {
			sb = "";
			arrl = [];
			njj = [];

		} else {
			console.log("스타트 :"+ start + "앤드 : "+ end+ "json_size=" + json.length);
			for (var i = start; i <= end; i++) {
				var obj = arrl[i];
				var obj2 = json[count];
				//console.log("obj2 = "+ obj2);
				var jorm = "";
				
				if(obj['B_MPAY'] == 0) {
					jorm = "전세";
				} else {
					jorm = "월세";
				}
				//console.log("========================================>"+i);
				
				sb += "<div class='roomInfo' lat='"+obj['B_LONGITUDE'] + "'" + "lng='"+ obj["B_LATITUDE"]+"'";
				sb += "num='"+obj['SELL_NUM']+"'"+"depo='"+obj['B_DEPOSIT']+"'";
				sb += "binfo='"+  obj['B_RINFO'] + "'" ;
				sb += "mpay='"+  obj['B_MPAY'] + "'" + "binfo='"+  obj['B_RINFO'] +"'";
				sb += "style='min-height: 155px; padding-top: 15px; padding-bottom: 15px;' ";
				sb += "onclick='PagingHelper.linkajax(" + i + ");'>";
				sb += "<table>"
				sb += "<tr>";
				sb += "<td rowspan='3'>";
				var sell = "/images/사진/";
				 sell += obj['SELL_NUM']*1;
				sell+= "/0.jpg"
				//console.log("셀 넘버 = "+  sell);
				
				sb += "<img src=" + sell + " style='height: 120px; width: 120px;'>";
				
				sb += "</td>";
				sb += "<td style='padding-left: 10px; vertical-align: bottom;'>";
				sb += "<span style='padding: 3px; background-color: #04B486;border-radius: 5px; color: white;'>"
						+ jorm + "</span>";
				sb += "<b style='color: #29B172; font-size: 20px; vertical-align: middle;'>&nbsp;"
						+ obj['B_DEPOSIT'] + "/" + obj['B_MPAY'] + "</b>";
				sb += "</td>";
				sb += "</tr>";

				sb += "<tr>";
				sb += "<td style='padding-left: 10px;'>";
				sb += "<span style='font-size: 14px;'>" + obj['B_RINFO'] + "</span><br/>";
				sb += "<span style='font-size: 14px; color: gray;'>" + obj['B_TITLE'] + "</span>";
				sb += "</td>";
				sb += "</tr>";
 
				sb += "<tr>";
				sb += "<td style='padding-left: 10px; font-size: 12px; color: gray; vertical-align: text-top;'>";
				sb += obj['B_RKIND'] + " | " + obj['B_FLOOR'] + " | " + "관리비 " + obj['B_GPAY'];
				sb += "</td>";
				sb += "</tr>";
				sb += "</table>";
				sb += "</div>"; 

				sb += "<hr style='margin-top: 0px; margin-bottom: 0px;'/>";
				count++;
			}
		}
		jsonarr = [];
		return sb;

	},
	
	
	'button' : function() {
		if ($('#btt').data('clicked')) {
		} else {
		}

	},
	'pagingHtml' : function(pTotalCnt) {
		console.log("paginghtml");
		this.data.totalPageCnt = arrl.length;
		var _ = this;

		_.data['totalCnt'] = pTotalCnt ? pTotalCnt : _.data['totalCnt'];
		if (_.data['totalCnt'] == 0) {
			return "";
		}
		// 총페이지수 구하기 : 페이지 출력 범위 (1|2|3|4|5)
		_.data.totalPageCnt = Math.ceil(_.data.totalCnt / _.data.maxListCount);
		// 현재 블럭 구하기
		var n_block = Math.ceil(_.data.currentPage / _.data.pageSize);
		// 페이징의 시작페이지와 끝페이지 구하기
		var s_page = (n_block - 1) * _.data.pageSize + 1; // 현재블럭의 시작 페이지
		var e_page = n_block * _.data.pageSize; // 현재블럭의 끝 페이지
		if (e_page == _.data.currentPage) {
			s_page = s_page + 2;
			e_page = e_page + 2;
		}
		var sb = '';
		var sbTemp = '';

		// 블럭의 페이지 목록 및 현재페이지 강조
		for (var j = s_page; j <= e_page; j++) {
			if (j > _.data.totalPageCnt)
				break;
			if (j == _.data.currentPage) {
				sbTemp += "<li class='selected'>[<font>" + j
						+ "</font>]</li>";
			} else {
				sbTemp += "<li onclick='PagingHelper.gotoPage(" + j + ");'>["
						+ j + "]</li>";
			}
		}

		// 이전페이지 버튼
		sb = "<ul>"
		if (_.data.currentPage > s_page
				|| _.data.totalCnt > _.data.maxListCount && s_page > 1) {
			sb += "<li class='first' onclick='PagingHelper.gotoPage(1);'>처음</li >"
			sb += "<li class='previous' onclick='PagingHelper.gotoPage("
					+ (_.data.currentPage - 1) + ");'>이전</li>"
		}

		// 현재블럭의 페이지 목록
		sb += sbTemp

		// 다음페이지 버튼
		if (_.data.currentPage < _.data.totalPageCnt) {
			sb += "<li class='next' onclick='PagingHelper.gotoPage("
					+ (_.data.currentPage + 1) + ");'>다음</li>"
			sb += "<li class='last' onclick='PagingHelper.gotoPage("
					+ (_.data.totalPageCnt) + ");'>마지막</li >"
		}
		sb += "</ul>";
		this.shHtml(this.data.currentPage);

		
		jd = JSON.parse(JSON.stringify(allData));
		jdt = JSON.parse(JSON.stringify(allDataTemp));
		console.log("=================비교값===================");
		console.log("alldataTemp의 값은 바뀌기 점값=>"+ JSON.stringify(allDataTemp));
		console.log("alldata의 값은 바뀐후값 =>"+ JSON.stringify(allData));
		console.log("=================비교끝====================");
		if ((jd.rKind[0]) != (jdt.rKind[0]) || (jd.mKind != (jdt.mKind))
				|| (jd.deposit_from != jdt.deposit_from)
				|| (jd.parking != jdt.parking) || (jd.pet != jdt.pet)
				|| (jd.lhok != jdt.lhok)
				|| (jd.deposit_to != jdt.deposit_to)
				|| (jd.mpay_from != jdt.mpay_from)
				|| (jd.mpay_to   != jdt.mpay_to)
				|| (jd.pet    != jdt.pet)
				|| (jd.parking != jdt.parking)
				|| (jd.lhok != jdt.lhok)
				|| (jd.area[0] != jdt.area[0])
				|| (jd.floor[0] != jdt.floor[0])
				|| (jd.floor[1] != jdt.floor[1])
				|| (jd.floor[2] != jdt.floor[2])
				|| (jd.floor[3] != jdt.floor[3])

		) {
			console.log("달라요");
			performSearch();

		}
		console.log("다른점이 없네요");
		return sb;
	},
	"makeNum" : function(className, content) {
		return "<li class='" + className + "''>[" + content + "]</li>";
	},
	'setStartnumEndnum' : function() {
		// 시작 글번호
		this.data.startnum = (this.data.currentPage - 1)
				* this.data.maxListCount + 1;

		// 마지막 글번호
		var tmp = this.data.currentPage * this.data.maxListCount;
		this.data.lastnum = (tmp > this.data.totalCnt ? this.data.totalCnt
				: tmp);
	},// hiㅇ
	'gotoPage' : function(pageNum) {
		console.log("gotoPage");
		json = "empty";// 받은 정보를 바탕으로 이미지 주소를 다운 받는다
		this.data.currentPage = pageNum;
		this.setStartnumEndnum();

		var ends = (this.data.currentPage) * 4 - 1;// 3
		var starts = ends - 3;//
		var njjTemp = [];

		PagingHelper.data.totalPageCnt = njj.length;

		for (var i = starts; i < ends; i++) {

			njjTemp.push(njj[i]);
		}
		$("#ln").html(njj.length);
		if (njjTemp.length != 0) {
			$.ajax(
					{

						"type" : "get",
						"dataType" : "json",
						"async" : false,
						"url" : "/testing?curr=" + this.data.currentPage
								+ "&list=" + njjTemp

					}).success(function(listajax) {

				// json : 이미지 주소들
				json = JSON.parse(JSON.stringify(listajax));
			

			});

			$("#paging").html(this.pagingHtml(this.data.totalPageCnt));
			$("#sh").html(this.shHtml());

		} else {
		}

	}
	
}

var temp = {
	"geometry" : {
		"location" : {
			"lat" : 39.032,
			"lng" : 125.75

		}
	},
	"id" : "2e3dec069aed3a50278a0f8556d7520d84d3c4e6",
	"place_id" : "ChIJZ934S0KuEmsR_0lxV3PTR4M",
	"reference" : "CmRSAAAA63xm_pqSZSM6v3eVji64Ael9avkjcYNxKRPNVlA_06Mi5TfIhXHdJ6JJCvjUgjfqQ0H-uFA8odt17_NB-fGBXv2XpbI_NnCKxnFqcsUXmQLiUP1ATfoANN2feZfObRW1EhAdYjAWa3tqFP8aV_1zaMVlGhSYN-eSQxYD3WyPaxKj1u2VYMBdCg",
	"html_attributions" : [

	],
	
	
	
};
var temp2 = {
	"geometry" : {
		"location" : {
			"lat" : 39.032,
			"lng" : 125.75
		}
	},
	"id" : "2e3dec069aed3a50278a0f8556d7520d84d3c4e6",
	"place_id" : "ChIJZ934S0KuEmsR_0lxV3PTR4M",
	"reference" : "CmRSAAAA63xm_pqSZSM6v3eVji64Ael9avkjcYNxKRPNVlA_06Mi5TfIhXHdJ6JJCvjUgjfqQ0H-uFA8odt17_NB-fGBXv2XpbI_NnCKxnFqcsUXmQLiUP1ATfoANN2feZfObRW1EhAdYjAWa3tqFP8aV_1zaMVlGhSYN-eSQxYD3WyPaxKj1u2VYMBdCg",
	"html_attributions" : [

	]
};
var temp3 = {
	"reference" : "CmRSAAAA63xm_pqSZSM6v3eVji64Ael9avkjcYNxKRPNVlA_06Mi5TfIhXHdJ6JJCvjUgjfqQ0H-uFA8odt17_NB-fGBXv2XpbI_NnCKxnFqcsUXmQLiUP1ATfoANN2feZfObRW1EhAdYjAWa3tqFP8aV_1zaMVlGhSYN-eSQxYD3WyPaxKj1u2VYMBdCg",
	"html_attributions" : [

	],
	"geometry" : {
		"location" : {
			"lng" :39.032,
			"lat" : 125.75
		}
	},
	"id" : "2e3dec069aed3a50278a0f8556d7520d84d3c4e6",
	"place_id" : "ChIJZ934S0KuEmsR_0lxV3PTR4M"
};