var amtChange = (function () {
    return {
        validatePasswdEqual: function (thisForm) {
            try {
                if (thisForm.userPw.value == thisForm.userPwCheck.value) {
                    return true;
                } else {
                    alert("입력된 비밀번호가 다릅니다. 확인해 주세요");
                    thisForm.userPw.focus();
                    return false;
                }
            }   catch (e) {
                alert("오류가 발생 했습니다.");
                console.error(e);
                return false;
            }
            return false;
        },
        fnSubmit: function (thisForm) {
            try {
                if (!validatePasswordChangeForm(thisForm)) {
                    return false;
                } else if (!this.validatePasswdEqual(thisForm)) {
                    return false;
                } else {
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