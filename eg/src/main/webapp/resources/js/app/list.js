var list = (function () {

    return {
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

/* 글 수정 화면 function */
function fn_egov_select(appSn) {
    document.appList.appSn.value = appSn;
    document.appList.action = action_detail;
    document.appList.submit();
}

/* pagination 페이지 링크 function */
function fn_egov_link_page(pageNo) {
    document.appList.pageIndex.value = pageNo;
    document.appList.action = action_list;
    document.appList.submit();
}