var amtDetail = (function () {
    var devInfoData = null;
    return {
        dev: {
            getDevInfoData: function(){
                return devInfoData;
            },
            click: function (seq) {
              try {
                  // console.log(devInfoData[seq]);
                  $("#amtAppCollInfoVO_devNm").val(devInfoData[seq]['devNm']);
                  $("#amtAppCollInfoVO_devEmail").val(devInfoData[seq]['devEmail']);
                  $("#amtAppCollInfoVO_devPhone").val(devInfoData[seq]['devPhone']);
                  $("#amtAppCollInfoVO_devHomepy").val(devInfoData[seq]['devHomepy']);
                  $("#amtAppCollInfoVO_devAddr").val(devInfoData[seq]['devAddr']);
                  $("#modalPop,#modalPop1,#shadow").hide();
              }  catch (e) {
                  console.error(e);
              }
            },
            search: function (thisForm) {
                try {
                    $.ajax({
                        url: '/app/devInfo.do',
                        type: 'POST',
                        dataType: 'json',
                        contentType: 'application/json; charset=UTF-8',
                        data: JSON.stringify({
                            searchKeyword: $("#modelDevInfoForm_searchKeyword").val(),
                            devPhone: $("#modelDevInfoForm_devPhone").val(),
                            devAddr: $("#modelDevInfoForm_devAddr").val(),
                        }),
                        beforeSend: function( jqXHR, settings) {
                            // console.log("beforeSend", jqXHR, settings);
                            try {
                                if (!validateModelDevInfoForm(thisForm)) {
                                    return false;
                                } else if (
                                    $("#modelDevInfoForm_searchKeyword").val().length == 0 &&
                                    $("#modelDevInfoForm_devPhone").val().length == 0 &&
                                    $("#modelDevInfoForm_devAddr").val().length == 0
                                ) {
                                    alert(alert_condition_size);
                                    return false;
                                } else {
                                    return true;
                                }
                            } catch (e) {
                                console.error(e);
                            }
                            return false;
                        },
                        success: function (data,textStatus,jqXHR) {
                            console.log("success", data, textStatus, jqXHR);
                            devInfoData = data;
                            var devInfoHTML = "";
                            for (var i=0; i<devInfoData.length;i++) {
                                // console.log(d);
                                devInfoData[i]['seq'] = i+1;
                                if (!devInfoData[i]['devNm']) devInfoData[i]['devNm'] = '';
                                if (!devInfoData[i]['devEmail']) devInfoData[i]['devEmail'] = '';
                                if (!devInfoData[i]['devPhone']) devInfoData[i]['devPhone'] = '';
                                if (!devInfoData[i]['devAddr']) devInfoData[i]['devAddr'] = '';
                                if (!devInfoData[i]['devHomepy']) devInfoData[i]['devHomepy'] = '';
                                devInfoHTML += '<tr><td>{seq}</td><td><a href="#" onclick="amtDetail.dev.click({seq});">{devNm}</a></td><td>{devEmail}</td><td>{devPhone}</td><td>{devAddr}</td><td>{devHomepy}</td></tr>'.format(devInfoData[i]);
                            }
                            $("#devInfoTbody").html(devInfoHTML);
                        },
                        /*done: function (data, textStatus, jqXHR ) {
                            console.log("done", data, textStatus, jqXHR);
                        },*/
                        fail: function (jqXHR, textStatus, errorThrown) {
                            alert(alert_global_msg);
                            console.error(jqXHR, textStatus, errorThrown);
                        },
                        /*always: function (data_jqXHR, textStatus, jqXHR_errorThrown) {
                            console.log("always", data_jqXHR, textStatus, jqXHR_errorThrown);
                        },*/
                    });
                } catch (e) {
                    console.error(e);
                }
            }
        },
        fnSubmit: function (thisForm) {
            try {
                if (false) {
                    return false;
                } else if (false) {
                    return false;
                } else {
                    thisForm.submit();
                    return true;
                }
            } catch (e) {
                console.error(e);
                return false;
            }
            return false;
        }
    }
})();

$(window).load(function(){

    $("#popupBtn, #devSearch").on("click",function(e){
        e.preventDefault();
        $("#modalPop,#shadow").show();
    });
});