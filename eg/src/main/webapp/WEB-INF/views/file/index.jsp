<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <script type="text/javascript" src="<c:url value='/resources/js/util/EgovMultiFile.js'/>"></script>
    <script>
        window.onload = function () {
            var maxFileNum = document.frm.posblAtchFileNumber.value;
            if (maxFileNum == null || maxFileNum == "") {
                maxFileNum = 3;
            }
            var multi_selector = new MultiSelector(document.getElementById('egovComFileList'), maxFileNum, "file_label");
            console.info(document.getElementById('egovComFileUploader'));
            multi_selector.addElement(document.getElementById('egovComFileUploader'));
        }
    </script>
</head>
<body>
<form name="frm" action="<c:url value='/file/fileUpload.do'/>" method="post" enctype="multipart/form-data">
    <input type="hidden" name="posblAtchFileNumber" value="2"/>
    <table width="680px" cellspacing="0" cellpadding="0" border="0" align="center" class="UseTable">
        <tr>
            <td><input name="file_1" id="egovComFileUploader" type="file"/></td>
            <td><label id="file_label">라벨</label></td>
        </tr>
        <tr>
            <td>
                <div id="egovComFileList"></div>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit">
            </td>
        </tr>
    </table>

</form>
</body>
</html>