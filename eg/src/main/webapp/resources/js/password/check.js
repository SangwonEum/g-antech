var amtCheck = (function () {
    return {
        fnSubmit: function (thisForm) {
            try {
                if (!validatePasswordCheckForm(thisForm)) {
                    return false;
                } /*else if (false) {
                    return false;
                } */ else {
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