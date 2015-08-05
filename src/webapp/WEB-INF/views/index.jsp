<%--
  Created by IntelliJ IDEA.
  User: yanzhixiang
  Date: 2015/6/28
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <title>欢迎使用电子商城系统</title>
    <link href="${pageContext.request.contextPath}/resources/css/stylesheet.css" rel="stylesheet" type="text/css">
</head>
<body class="body">
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF"
       style="border:1px; border-style:solid; border-color:#888888">
    <tbody>
    <tr>
        <td width="20">&nbsp;</td>
        <td height="50" align="right" valign="bottom">
            <img src="${pageContext.request.contextPath}/resources/images/icon_login.gif" align="absmiddle">
            <input id="qKey" name="qKey" value="商品关键字" onclick="this.value=&#39;&#39;">
            <select id="category">
                <option value="0">所有商品</option>


                <option value="1">计算机类</option>

                <option value="2">管理类</option>

                <option value="3">英语类</option>

                <option value="4">小说类</option>


            </select>
            <a href="javascript:QuickSearch()"><img src="${pageContext.request.contextPath}/resources/images/icon_search.gif" align="absmiddle"
                                                    border="0"></a>
        </td>
        <td width="20">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <table cellspacing="0" cellpadding="0" width="100%" border="0">
                <tbody>
                <tr align="center">
                    <td valign="top" width="9"><img src="${pageContext.request.contextPath}/resources/images/icon02.gif"></td>
                    <td class="header_menu" align="middle">
                        <a href="${pageContext.request.contextPath}/resources/images/欢迎使用电子商城系统.html"><span class="whiteTitle">商城首页</span></a>
                    </td>
                    <td background="${pageContext.request.contextPath}/resources/images/Bule_06.gif" width="2"></td>
                    <td class="header_menu" align="middle">
                        <a href="http://localhost:8080/demo/cart.do?method=browseCart"><span
                                class="whiteTitle">购物车管理	</span></a>
                    </td>
                    <td background="${pageContext.request.contextPath}/resources/images/Bule_06.gif" width="2"></td>
                    <td class="header_menu" align="middle">
                        <a href="http://localhost:8080/demo/order.do?method=browseOrder"><span
                                class="whiteTitle">订单管理</span></a>
                    </td>
                    <td background="${pageContext.request.contextPath}/resources/images/Bule_06.gif" width="2"></td>
                    <td class="header_menu" align="middle">
                        <a href="http://localhost:8080/demo/mem.do?method=browseWord"><span
                                class="whiteTitle">顾客留言</span></a>
                    </td>
                    <td background="${pageContext.request.contextPath}/resources/images/Bule_06.gif" width="2"></td>
                    <td class="header_menu" align="middle">
                        <a href="http://localhost:8080/demo/mem.do?method=loadMember"><span
                                class="whiteTitle">修改注册资料</span></a>
                    </td>
                    <td valign="top" width="7"><img src="${pageContext.request.contextPath}/resources/images/icon07.gif"></td>
                </tr>
                </tbody>
            </table>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <tbody>
                <tr>
                    <td width="200" valign="top">
                        <table cellspacing="0" cellpadding="0" width="100%" border="0">
                            <tbody>
                            <tr>
                                <td><img src="${pageContext.request.contextPath}/resources/images/Bule_43.gif"></td>
                            </tr>
                            <tr>
                                <td class="C_Item_bg">


                                    <script type="text/javascript" language="Javascript1.1">

                                        <
                                        !--Begin

                                        var bCancel = false;

                                        function validateMemLoginForm(form) {
                                            if (bCancel) {
                                                return true;
                                            } else {
                                                var formValidationResult;
                                                formValidationResult = validateRequired(form);
                                                return (formValidationResult == 1);
                                            }
                                        }

                                        function memLoginForm_required() {
                                            this.a0 = new Array("loginName", "登录帐号 是必须的！", new Function("varName", " return this[varName];"));
                                            this.a1 = new Array("loginPwd", "登录密码 是必须的！", new Function("varName", " return this[varName];"));
                                        }


                                        /*$RCSfile: validateMinLength.js,v $ $Revision: 1.11 $ $Date: 2004/03/28 16:53:21 $ */
                                        /**
                                         * A field is considered valid if greater than the specified minimum.
                                         * Fields are not checked if they are disabled.
                                         * <p>
                                         * <strong>Caution:</strong> Using <code>validateMinLength</code> on a password field in a
                                         *  login page gives unnecessary information away to hackers. While it only slightly
                                         *  weakens security, we suggest using it only when modifying a password.</p>
                                         * @param form The form validation is taking place on.
                                         */
                                        function validateMinLength(form) {
                                            var isValid = true;
                                            var focusField = null;
                                            var i = 0;
                                            var fields = new Array();
                                            var formName = form.getAttributeNode("name");


                                            oMinLength = eval('new ' + formName.value + '_minlength()');

                                            for (x in oMinLength) {
                                                var field = form[oMinLength[x][0]];

                                                if ((field.type == 'hidden' ||
                                                        field.type == 'text' ||
                                                        field.type == 'password' ||
                                                        field.type == 'textarea') &&
                                                        field.disabled == false) {

                                                    var iMin = parseInt(oMinLength[x][2]("minlength"));
                                                    if ((trim(field.value).length > 0) && (field.value.length < iMin)) {
                                                        if (i == 0) {
                                                            focusField = field;
                                                        }
                                                        fields[i++] = oMinLength[x][1];
                                                        isValid = false;
                                                    }
                                                }
                                            }
                                            if (fields.length > 0) {
                                                focusField.focus();
                                                alert(fields.join('\n'));
                                            }
                                            return isValid;
                                        }

                                        /*$RCSfile: validateUtilities.js,v $ $Revision: 1.2 $ $Date: 2004/03/28 16:53:21 $ */

                                        /**
                                         * This is a place holder for common utilities used across the javascript validation
                                         *
                                         **/


                                        /*$RCSfile: validateFloatRange.js,v $ $Revision: 1.9 $ $Date: 2004/03/28 16:53:21 $ */
                                        /**
                                         * Check to see if fields are in a valid float range.
                                         * Fields are not checked if they are disabled.
                                         * <p>
                                         * @param form The form validation is taking place on.
                                         */
                                        function validateFloatRange(form) {
                                            var isValid = true;
                                            var focusField = null;
                                            var i = 0;
                                            var fields = new Array();
                                            var formName = form.getAttributeNode("name");

                                            oRange = eval('new ' + formName.value + '_floatRange()');
                                            for (x in oRange) {
                                                var field = form[oRange[x][0]];

                                                if ((field.type == 'hidden' ||
                                                        field.type == 'text' || field.type == 'textarea') &&
                                                        (field.value.length > 0) &&
                                                        field.disabled == false) {

                                                    var fMin = parseFloat(oRange[x][2]("min"));
                                                    var fMax = parseFloat(oRange[x][2]("max"));
                                                    var fValue = parseFloat(field.value);
                                                    if (!(fValue >= fMin && fValue <= fMax)) {
                                                        if (i == 0) {
                                                            focusField = field;
                                                        }
                                                        fields[i++] = oRange[x][1];
                                                        isValid = false;
                                                    }
                                                }
                                            }
                                            if (fields.length > 0) {
                                                focusField.focus();
                                                alert(fields.join('\n'));
                                            }
                                            return isValid;
                                        }


                                        /*$RCSfile: validateIntRange.js,v $ $Revision: 1.10 $ $Date: 2004/03/28 16:53:21 $ */
                                        /**
                                         * Check to see if fields is in a valid integer range.
                                         * Fields are not checked if they are disabled.
                                         * <p>
                                         * @param form The form validation is taking place on.
                                         */
                                        function validateIntRange(form) {
                                            var isValid = true;
                                            var focusField = null;
                                            var i = 0;
                                            var fields = new Array();
                                            var formName = form.getAttributeNode("name");

                                            oRange = eval('new ' + formName.value + '_intRange()');
                                            for (x in oRange) {
                                                var field = form[oRange[x][0]];
                                                if (field.disabled == false) {
                                                    var value = '';
                                                    if (field.type == 'hidden' ||
                                                            field.type == 'text' || field.type == 'textarea' ||
                                                            field.type == 'radio') {
                                                        value = field.value;
                                                    }
                                                    if (field.type == 'select-one') {
                                                        var si = field.selectedIndex;
                                                        if (si >= 0) {
                                                            value = field.options[si].value;
                                                        }
                                                    }
                                                    if (value.length > 0) {
                                                        var iMin = parseInt(oRange[x][2]("min"));
                                                        var iMax = parseInt(oRange[x][2]("max"));
                                                        var iValue = parseInt(value);
                                                        if (!(iValue >= iMin && iValue <= iMax)) {
                                                            if (i == 0) {
                                                                focusField = field;
                                                            }
                                                            fields[i++] = oRange[x][1];
                                                            isValid = false;
                                                        }
                                                    }
                                                }
                                            }
                                            if (fields.length > 0) {
                                                focusField.focus();
                                                alert(fields.join('\n'));
                                            }
                                            return isValid;
                                        }


                                        /*$RCSfile: validateInteger.js,v $ $Revision: 1.9 $ $Date: 2004/03/28 16:53:21 $ */
                                        /**
                                         * Check to see if fields are a valid integer.
                                         * Fields are not checked if they are disabled.
                                         * <p>
                                         * @param form The form validation is taking place on.
                                         */
                                        function validateInteger(form) {
                                            var bValid = true;
                                            var focusField = null;
                                            var i = 0;
                                            var fields = new Array();
                                            var formName = form.getAttributeNode("name");

                                            oInteger = eval('new ' + formName.value + '_IntegerValidations()');
                                            for (x in oInteger) {
                                                var field = form[oInteger[x][0]];

                                                if ((field.type == 'hidden' ||
                                                        field.type == 'text' ||
                                                        field.type == 'textarea' ||
                                                        field.type == 'select-one' ||
                                                        field.type == 'radio') &&
                                                        field.disabled == false) {

                                                    var value = '';
                                                    // get field's value
                                                    if (field.type == "select-one") {
                                                        var si = field.selectedIndex;
                                                        if (si >= 0) {
                                                            value = field.options[si].value;
                                                        }
                                                    } else {
                                                        value = field.value;
                                                    }

                                                    if (value.length > 0) {

                                                        if (!isAllDigits(value)) {
                                                            bValid = false;
                                                            if (i == 0) {
                                                                focusField = field;
                                                            }
                                                            fields[i++] = oInteger[x][1];

                                                        } else {
                                                            var iValue = parseInt(value);
                                                            if (isNaN(iValue) || !(iValue >= -2147483648 && iValue <= 2147483647)) {
                                                                if (i == 0) {
                                                                    focusField = field;
                                                                }
                                                                fields[i++] = oInteger[x][1];
                                                                bValid = false;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            if (fields.length > 0) {
                                                focusField.focus();
                                                alert(fields.join('\n'));
                                            }
                                            return bValid;
                                        }

                                        function isAllDigits(argvalue) {
                                            argvalue = argvalue.toString();
                                            var validChars = "0123456789";
                                            var startFrom = 0;
                                            if (argvalue.substring(0, 2) == "0x") {
                                                validChars = "0123456789abcdefABCDEF";
                                                startFrom = 2;
                                            } else if (argvalue.charAt(0) == "0") {
                                                validChars = "01234567";
                                                startFrom = 1;
                                            } else if (argvalue.charAt(0) == "-") {
                                                startFrom = 1;
                                            }

                                            for (var n = startFrom; n < argvalue.length; n++) {
                                                if (validChars.indexOf(argvalue.substring(n, n + 1)) == -1) return false;
                                            }
                                            return true;
                                        }


                                        /*$RCSfile: validateMask.js,v $ $Revision: 1.10 $ $Date: 2004/03/28 16:53:21 $ */
                                        /**
                                         * Check to see if fields are a valid using a regular expression.
                                         * Fields are not checked if they are disabled.
                                         * <p>
                                         * @param form The form validation is taking place on.
                                         */
                                        function validateMask(form) {
                                            var isValid = true;
                                            var focusField = null;
                                            var i = 0;
                                            var fields = new Array();
                                            var formName = form.getAttributeNode("name");

                                            oMasked = eval('new ' + formName.value + '_mask()');
                                            for (x in oMasked) {
                                                var field = form[oMasked[x][0]];

                                                if ((field.type == 'hidden' ||
                                                        field.type == 'text' ||
                                                        field.type == 'textarea' ||
                                                        field.type == 'file') &&
                                                        (field.value.length > 0) &&
                                                        field.disabled == false) {

                                                    if (!matchPattern(field.value, oMasked[x][2]("mask"))) {
                                                        if (i == 0) {
                                                            focusField = field;
                                                        }
                                                        fields[i++] = oMasked[x][1];
                                                        isValid = false;
                                                    }
                                                }
                                            }

                                            if (fields.length > 0) {
                                                focusField.focus();
                                                alert(fields.join('\n'));
                                            }
                                            return isValid;
                                        }

                                        function matchPattern(value, mask) {
                                            return mask.exec(value);
                                        }


                                        /*$RCSfile: validateDate.js,v $ $Revision: 1.10 $ $Date: 2004/03/28 16:53:21 $ */
                                        /**
                                         * Check to see if fields are a valid date.
                                         * Fields are not checked if they are disabled.
                                         * <p>
                                         * @param form The form validation is taking place on.
                                         */
                                        function validateDate(form) {
                                            var bValid = true;
                                            var focusField = null;
                                            var i = 0;
                                            var fields = new Array();
                                            var formName = form.getAttributeNode("name");

                                            oDate = eval('new ' + formName.value + '_DateValidations()');

                                            for (x in oDate) {
                                                var field = form[oDate[x][0]];
                                                var value = field.value;
                                                var datePattern = oDate[x][2]("datePatternStrict");
                                                // try loose pattern
                                                if (datePattern == null)
                                                    datePattern = oDate[x][2]("datePattern");
                                                if ((field.type == 'hidden' ||
                                                        field.type == 'text' ||
                                                        field.type == 'textarea') &&
                                                        (value.length > 0) && (datePattern.length > 0) &&
                                                        field.disabled == false) {
                                                    var MONTH = "MM";
                                                    var DAY = "dd";
                                                    var YEAR = "yyyy";
                                                    var orderMonth = datePattern.indexOf(MONTH);
                                                    var orderDay = datePattern.indexOf(DAY);
                                                    var orderYear = datePattern.indexOf(YEAR);
                                                    if ((orderDay < orderYear && orderDay > orderMonth)) {
                                                        var iDelim1 = orderMonth + MONTH.length;
                                                        var iDelim2 = orderDay + DAY.length;
                                                        var delim1 = datePattern.substring(iDelim1, iDelim1 + 1);
                                                        var delim2 = datePattern.substring(iDelim2, iDelim2 + 1);
                                                        if (iDelim1 == orderDay && iDelim2 == orderYear) {
                                                            dateRegexp = new RegExp("^(\\d{2})(\\d{2})(\\d{4})$");
                                                        } else if (iDelim1 == orderDay) {
                                                            dateRegexp = new RegExp("^(\\d{2})(\\d{2})[" + delim2 + "](\\d{4})$");
                                                        } else if (iDelim2 == orderYear) {
                                                            dateRegexp = new RegExp("^(\\d{2})[" + delim1 + "](\\d{2})(\\d{4})$");
                                                        } else {
                                                            dateRegexp = new RegExp("^(\\d{2})[" + delim1 + "](\\d{2})[" + delim2 + "](\\d{4})$");
                                                        }
                                                        var matched = dateRegexp.exec(value);
                                                        if (matched != null) {
                                                            if (!isValidDate(matched[2], matched[1], matched[3])) {
                                                                if (i == 0) {
                                                                    focusField = field;
                                                                }
                                                                fields[i++] = oDate[x][1];
                                                                bValid = false;
                                                            }
                                                        } else {
                                                            if (i == 0) {
                                                                focusField = field;
                                                            }
                                                            fields[i++] = oDate[x][1];
                                                            bValid = false;
                                                        }
                                                    } else if ((orderMonth < orderYear && orderMonth > orderDay)) {
                                                        var iDelim1 = orderDay + DAY.length;
                                                        var iDelim2 = orderMonth + MONTH.length;
                                                        var delim1 = datePattern.substring(iDelim1, iDelim1 + 1);
                                                        var delim2 = datePattern.substring(iDelim2, iDelim2 + 1);
                                                        if (iDelim1 == orderMonth && iDelim2 == orderYear) {
                                                            dateRegexp = new RegExp("^(\\d{2})(\\d{2})(\\d{4})$");
                                                        } else if (iDelim1 == orderMonth) {
                                                            dateRegexp = new RegExp("^(\\d{2})(\\d{2})[" + delim2 + "](\\d{4})$");
                                                        } else if (iDelim2 == orderYear) {
                                                            dateRegexp = new RegExp("^(\\d{2})[" + delim1 + "](\\d{2})(\\d{4})$");
                                                        } else {
                                                            dateRegexp = new RegExp("^(\\d{2})[" + delim1 + "](\\d{2})[" + delim2 + "](\\d{4})$");
                                                        }
                                                        var matched = dateRegexp.exec(value);
                                                        if (matched != null) {
                                                            if (!isValidDate(matched[1], matched[2], matched[3])) {
                                                                if (i == 0) {
                                                                    focusField = field;
                                                                }
                                                                fields[i++] = oDate[x][1];
                                                                bValid = false;
                                                            }
                                                        } else {
                                                            if (i == 0) {
                                                                focusField = field;
                                                            }
                                                            fields[i++] = oDate[x][1];
                                                            bValid = false;
                                                        }
                                                    } else if ((orderMonth > orderYear && orderMonth < orderDay)) {
                                                        var iDelim1 = orderYear + YEAR.length;
                                                        var iDelim2 = orderMonth + MONTH.length;
                                                        var delim1 = datePattern.substring(iDelim1, iDelim1 + 1);
                                                        var delim2 = datePattern.substring(iDelim2, iDelim2 + 1);
                                                        if (iDelim1 == orderMonth && iDelim2 == orderDay) {
                                                            dateRegexp = new RegExp("^(\\d{4})(\\d{2})(\\d{2})$");
                                                        } else if (iDelim1 == orderMonth) {
                                                            dateRegexp = new RegExp("^(\\d{4})(\\d{2})[" + delim2 + "](\\d{2})$");
                                                        } else if (iDelim2 == orderDay) {
                                                            dateRegexp = new RegExp("^(\\d{4})[" + delim1 + "](\\d{2})(\\d{2})$");
                                                        } else {
                                                            dateRegexp = new RegExp("^(\\d{4})[" + delim1 + "](\\d{2})[" + delim2 + "](\\d{2})$");
                                                        }
                                                        var matched = dateRegexp.exec(value);
                                                        if (matched != null) {
                                                            if (!isValidDate(matched[3], matched[2], matched[1])) {
                                                                if (i == 0) {
                                                                    focusField = field;
                                                                }
                                                                fields[i++] = oDate[x][1];
                                                                bValid = false;
                                                            }
                                                        } else {
                                                            if (i == 0) {
                                                                focusField = field;
                                                            }
                                                            fields[i++] = oDate[x][1];
                                                            bValid = false;
                                                        }
                                                    } else {
                                                        if (i == 0) {
                                                            focusField = field;
                                                        }
                                                        fields[i++] = oDate[x][1];
                                                        bValid = false;
                                                    }
                                                }
                                            }
                                            if (fields.length > 0) {
                                                focusField.focus();
                                                alert(fields.join('\n'));
                                            }
                                            return bValid;
                                        }

                                        function isValidDate(day, month, year) {
                                            if (month < 1 || month > 12) {
                                                return false;
                                            }
                                            if (day < 1 || day > 31) {
                                                return false;
                                            }
                                            if ((month == 4 || month == 6 || month == 9 || month == 11) &&
                                                    (day == 31)) {
                                                return false;
                                            }
                                            if (month == 2) {
                                                var leap = (year % 4 == 0 &&
                                                (year % 100 != 0 || year % 400 == 0));
                                                if (day > 29 || (day == 29 && !leap)) {
                                                    return false;
                                                }
                                            }
                                            return true;
                                        }


                                        /*$RCSfile: validateFloat.js,v $ $Revision: 1.11 $ $Date: 2004/03/28 16:53:21 $ */
                                        /**
                                         * Check to see if fields are a valid float.
                                         * Fields are not checked if they are disabled.
                                         * <p>
                                         * @param form The form validation is taking place on.
                                         */
                                        function validateFloat(form) {
                                            var bValid = true;
                                            var focusField = null;
                                            var i = 0;
                                            var fields = new Array();
                                            var formName = form.getAttributeNode("name");

                                            oFloat = eval('new ' + formName.value + '_FloatValidations()');
                                            for (x in oFloat) {
                                                var field = form[oFloat[x][0]];

                                                if ((field.type == 'hidden' ||
                                                        field.type == 'text' ||
                                                        field.type == 'textarea' ||
                                                        field.type == 'select-one' ||
                                                        field.type == 'radio') &&
                                                        field.disabled == false) {

                                                    var value = '';
                                                    // get field's value
                                                    if (field.type == "select-one") {
                                                        var si = field.selectedIndex;
                                                        if (si >= 0) {
                                                            value = field.options[si].value;
                                                        }
                                                    } else {
                                                        value = field.value;
                                                    }

                                                    if (value.length > 0) {
                                                        // remove '.' before checking digits
                                                        var tempArray = value.split('.');
                                                        //Strip off leading '0'
                                                        var zeroIndex = 0;
                                                        var joinedString = tempArray.join('');
                                                        while (joinedString.charAt(zeroIndex) == '0') {
                                                            zeroIndex++;
                                                        }
                                                        var noZeroString = joinedString.substring(zeroIndex, joinedString.length);

                                                        if (!isAllDigits(noZeroString)) {
                                                            bValid = false;
                                                            if (i == 0) {
                                                                focusField = field;
                                                            }
                                                            fields[i++] = oFloat[x][1];

                                                        } else {
                                                            var iValue = parseFloat(value);
                                                            if (isNaN(iValue)) {
                                                                if (i == 0) {
                                                                    focusField = field;
                                                                }
                                                                fields[i++] = oFloat[x][1];
                                                                bValid = false;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            if (fields.length > 0) {
                                                focusField.focus();
                                                alert(fields.join('\n'));
                                            }
                                            return bValid;
                                        }


                                        /*$RCSfile: validateCreditCard.js,v $ $Revision: 1.8 $ $Date: 2004/03/28 16:53:21 $ */
                                        /**
                                         * Check to see if fields are a valid creditcard number based on Luhn checksum.
                                         * Fields are not checked if they are disabled.
                                         * <p>
                                         * @param form The form validation is taking place on.
                                         */
                                        function validateCreditCard(form) {
                                            var bValid = true;
                                            var focusField = null;
                                            var i = 0;
                                            var fields = new Array();
                                            var formName = form.getAttributeNode("name");

                                            oCreditCard = eval('new ' + formName.value + '_creditCard()');

                                            for (x in oCreditCard) {
                                                if ((form[oCreditCard[x][0]].type == 'text' ||
                                                        form[oCreditCard[x][0]].type == 'textarea') &&
                                                        (form[oCreditCard[x][0]].value.length > 0) &&
                                                        form[oCreditCard[x][0]].disabled == false) {
                                                    if (!luhnCheck(form[oCreditCard[x][0]].value)) {
                                                        if (i == 0) {
                                                            focusField = form[oCreditCard[x][0]];
                                                        }
                                                        fields[i++] = oCreditCard[x][1];
                                                        bValid = false;
                                                    }
                                                }
                                            }
                                            if (fields.length > 0) {
                                                focusField.focus();
                                                alert(fields.join('\n'));
                                            }
                                            return bValid;
                                        }

                                        /**
                                         * Checks whether a given credit card number has a valid Luhn checksum.
                                         * This allows you to spot most randomly made-up or garbled credit card numbers immediately.
                                         * Reference: http://www.speech.cs.cmu.edu/~sburke/pub/luhn_lib.html
                                         */
                                        function luhnCheck(cardNumber) {
                                            if (isLuhnNum(cardNumber)) {
                                                var no_digit = cardNumber.length;
                                                var oddoeven = no_digit & 1;
                                                var sum = 0;
                                                for (var count = 0; count < no_digit; count++) {
                                                    var digit = parseInt(cardNumber.charAt(count));
                                                    if (!((count & 1) ^ oddoeven)) {
                                                        digit *= 2;
                                                        if (digit > 9) digit -= 9;
                                                    }
                                                    ;
                                                    sum += digit;
                                                }
                                                ;
                                                if (sum == 0) return false;
                                                if (sum % 10 == 0) return true;
                                            }
                                            ;
                                            return false;
                                        }

                                        function isLuhnNum(argvalue) {
                                            argvalue = argvalue.toString();
                                            if (argvalue.length == 0) {
                                                return false;
                                            }
                                            for (var n = 0; n < argvalue.length; n++) {
                                                if ((argvalue.substring(n, n + 1) < "0") ||
                                                        (argvalue.substring(n, n + 1) > "9")) {
                                                    return false;
                                                }
                                            }
                                            return true;
                                        }


                                        /*$RCSfile: validateShort.js,v $ $Revision: 1.9 $ $Date: 2004/03/28 16:53:21 $ */
                                        /**
                                         *  Check to see if fields are a valid short.
                                         * Fields are not checked if they are disabled.
                                         * <p>
                                         * @param form The form validation is taking place on.
                                         */
                                        function validateShort(form) {
                                            var bValid = true;
                                            var focusField = null;
                                            var i = 0;
                                            var fields = new Array();
                                            var formName = form.getAttributeNode("name");

                                            oShort = eval('new ' + formName.value + '_ShortValidations()');

                                            for (x in oShort) {
                                                var field = form[oShort[x][0]];

                                                if ((field.type == 'hidden' ||
                                                        field.type == 'text' ||
                                                        field.type == 'textarea' ||
                                                        field.type == 'select-one' ||
                                                        field.type == 'radio') &&
                                                        field.disabled == false) {

                                                    var value = '';
                                                    // get field's value
                                                    if (field.type == "select-one") {
                                                        var si = field.selectedIndex;
                                                        if (si >= 0) {
                                                            value = field.options[si].value;
                                                        }
                                                    } else {
                                                        value = field.value;
                                                    }

                                                    if (value.length > 0) {
                                                        if (!isAllDigits(value)) {
                                                            bValid = false;
                                                            if (i == 0) {
                                                                focusField = field;
                                                            }
                                                            fields[i++] = oShort[x][1];

                                                        } else {

                                                            var iValue = parseInt(value);
                                                            if (isNaN(iValue) || !(iValue >= -32768 && iValue <= 32767)) {
                                                                if (i == 0) {
                                                                    focusField = field;
                                                                }
                                                                fields[i++] = oShort[x][1];
                                                                bValid = false;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            if (fields.length > 0) {
                                                focusField.focus();
                                                alert(fields.join('\n'));
                                            }
                                            return bValid;
                                        }


                                        /*$RCSfile: validateMaxLength.js,v $ $Revision: 1.10 $ $Date: 2004/03/28 16:53:21 $ */
                                        /**
                                         * A field is considered valid if less than the specified maximum.
                                         * Fields are not checked if they are disabled.
                                         * <p>
                                         * <strong>Caution:</strong> Using <code>validateMaxLength</code> on a password field in a
                                         *  login page gives unnecessary information away to hackers. While it only slightly
                                         *  weakens security, we suggest using it only when modifying a password.</p>
                                         * @param form The form validation is taking place on.
                                         */
                                        function validateMaxLength(form) {
                                            var isValid = true;
                                            var focusField = null;
                                            var i = 0;
                                            var fields = new Array();
                                            var formName = form.getAttributeNode("name");

                                            oMaxLength = eval('new ' + formName.value + '_maxlength()');
                                            for (x in oMaxLength) {
                                                var field = form[oMaxLength[x][0]];

                                                if ((field.type == 'hidden' ||
                                                        field.type == 'text' ||
                                                        field.type == 'password' ||
                                                        field.type == 'textarea') &&
                                                        field.disabled == false) {

                                                    var iMax = parseInt(oMaxLength[x][2]("maxlength"));
                                                    if (field.value.length > iMax) {
                                                        if (i == 0) {
                                                            focusField = field;
                                                        }
                                                        fields[i++] = oMaxLength[x][1];
                                                        isValid = false;
                                                    }
                                                }
                                            }
                                            if (fields.length > 0) {
                                                focusField.focus();
                                                alert(fields.join('\n'));
                                            }
                                            return isValid;
                                        }


                                        /*$RCSfile: validateEmail.js,v $ $Revision: 1.9 $ $Date: 2004/03/28 16:53:21 $ */
                                        /**
                                         * Check to see if fields are a valid email address.
                                         * Fields are not checked if they are disabled.
                                         * <p>
                                         * @param form The form validation is taking place on.
                                         */
                                        function validateEmail(form) {
                                            var bValid = true;
                                            var focusField = null;
                                            var i = 0;
                                            var fields = new Array();
                                            var formName = form.getAttributeNode("name");


                                            oEmail = eval('new ' + formName.value + '_email()');

                                            for (x in oEmail) {
                                                var field = form[oEmail[x][0]];
                                                if ((field.type == 'hidden' ||
                                                        field.type == 'text' ||
                                                        field.type == 'textarea') &&
                                                        (field.value.length > 0) &&
                                                        field.disabled == false) {
                                                    if (!checkEmail(field.value)) {
                                                        if (i == 0) {
                                                            focusField = field;
                                                        }
                                                        fields[i++] = oEmail[x][1];
                                                        bValid = false;
                                                    }
                                                }
                                            }
                                            if (fields.length > 0) {
                                                focusField.focus();
                                                alert(fields.join('\n'));
                                            }
                                            return bValid;
                                        }

                                        /**
                                         * Reference: Sandeep V. Tamhankar (stamhankar@hotmail.com),
                                         * http://javascript.internet.com
                                         */
                                        function checkEmail(emailStr) {
                                            if (emailStr.length == 0) {
                                                return true;
                                            }
                                            var emailPat = /^(.+)@(.+)$/;
                                            var specialChars = "\\(\\)<>@,;:\\\\\\\"\\.\\[\\]";
                                            var validChars = "\[^\\s" + specialChars + "\]";
                                            var quotedUser = "(\"[^\"]*\")";
                                            var ipDomainPat = /^(\d{1,3})[.](\d{1,3})[.](\d{1,3})[.](\d{1,3})$/;
                                            var atom = validChars + '+';
                                            var word = "(" + atom + "|" + quotedUser + ")";
                                            var userPat = new RegExp("^" + word + "(\\." + word + ")*$");
                                            var domainPat = new RegExp("^" + atom + "(\\." + atom + ")*$");
                                            var matchArray = emailStr.match(emailPat);
                                            if (matchArray == null) {
                                                return false;
                                            }
                                            var user = matchArray[1];
                                            var domain = matchArray[2];
                                            if (user.match(userPat) == null) {
                                                return false;
                                            }
                                            var IPArray = domain.match(ipDomainPat);
                                            if (IPArray != null) {
                                                for (var i = 1; i <= 4; i++) {
                                                    if (IPArray[i] > 255) {
                                                        return false;
                                                    }
                                                }
                                                return true;
                                            }
                                            var domainArray = domain.match(domainPat);
                                            if (domainArray == null) {
                                                return false;
                                            }
                                            var atomPat = new RegExp(atom, "g");
                                            var domArr = domain.match(atomPat);
                                            var len = domArr.length;
                                            if ((domArr[domArr.length - 1].length < 2) ||
                                                    (domArr[domArr.length - 1].length > 3)) {
                                                return false;
                                            }
                                            if (len < 2) {
                                                return false;
                                            }
                                            return true;
                                        }


                                        /*$RCSfile: validateByte.js,v $ $Revision: 1.9 $ $Date: 2004/03/28 16:53:21 $ */
                                        /**
                                         * Check to see if fields are a valid byte.
                                         * Fields are not checked if they are disabled.
                                         * <p>
                                         * @param form The form validation is taking place on.
                                         */
                                        function validateByte(form) {
                                            var bValid = true;
                                            var focusField = null;
                                            var i = 0;
                                            var fields = new Array();
                                            var formName = form.getAttributeNode("name");
                                            oByte = eval('new ' + formName.value + '_ByteValidations()');

                                            for (x in oByte) {
                                                var field = form[oByte[x][0]];

                                                if ((field.type == 'hidden' ||
                                                        field.type == 'text' ||
                                                        field.type == 'textarea' ||
                                                        field.type == 'select-one' ||
                                                        field.type == 'radio') &&
                                                        field.disabled == false) {

                                                    var value = '';
                                                    // get field's value
                                                    if (field.type == "select-one") {
                                                        var si = field.selectedIndex;
                                                        if (si >= 0) {
                                                            value = field.options[si].value;
                                                        }
                                                    } else {
                                                        value = field.value;
                                                    }

                                                    if (value.length > 0) {
                                                        if (!isAllDigits(value)) {
                                                            bValid = false;
                                                            if (i == 0) {
                                                                focusField = field;
                                                            }
                                                            fields[i++] = oByte[x][1];

                                                        } else {

                                                            var iValue = parseInt(value);
                                                            if (isNaN(iValue) || !(iValue >= -128 && iValue <= 127)) {
                                                                if (i == 0) {
                                                                    focusField = field;
                                                                }
                                                                fields[i++] = oByte[x][1];
                                                                bValid = false;
                                                            }
                                                        }
                                                    }

                                                }
                                            }
                                            if (fields.length > 0) {
                                                focusField.focus();
                                                alert(fields.join('\n'));
                                            }
                                            return bValid;
                                        }


                                        /*$RCSfile: validateRequired.js,v $ $Revision: 1.13 $ $Date: 2004/03/28 16:53:21 $ */
                                        /**
                                         *  Check to see if fields must contain a value.
                                         * Fields are not checked if they are disabled.
                                         * <p>
                                         * @param form The form validation is taking place on.
                                         */

                                        function validateRequired(form) {
                                            var isValid = true;
                                            var focusField = null;
                                            var i = 0;
                                            var fields = new Array();
                                            var formName = form.getAttributeNode("name");

                                            oRequired = eval('new ' + formName.value + '_required()');

                                            for (x in oRequired) {
                                                var field = form[oRequired[x][0]];

                                                if ((field.type == 'hidden' ||
                                                        field.type == 'text' ||
                                                        field.type == 'textarea' ||
                                                        field.type == 'file' ||
                                                        field.type == 'checkbox' ||
                                                        field.type == 'select-one' ||
                                                        field.type == 'password') &&
                                                        field.disabled == false) {

                                                    var value = '';
                                                    // get field's value
                                                    if (field.type == "select-one") {
                                                        var si = field.selectedIndex;
                                                        if (si >= 0) {
                                                            value = field.options[si].value;
                                                        }
                                                    } else if (field.type == 'checkbox') {
                                                        if (field.checked) {
                                                            value = field.value;
                                                        }
                                                    } else {
                                                        value = field.value;
                                                    }

                                                    if (trim(value).length == 0) {

                                                        if (i == 0) {
                                                            focusField = field;
                                                        }
                                                        fields[i++] = oRequired[x][1];
                                                        isValid = false;
                                                    }
                                                } else if (field.type == "select-multiple") {
                                                    var numOptions = field.options.length;
                                                    lastSelected = -1;
                                                    for (loop = numOptions - 1; loop >= 0; loop--) {
                                                        if (field.options[loop].selected) {
                                                            lastSelected = loop;
                                                            value = field.options[loop].value;
                                                            break;
                                                        }
                                                    }
                                                    if (lastSelected < 0 || trim(value).length == 0) {
                                                        if (i == 0) {
                                                            focusField = field;
                                                        }
                                                        fields[i++] = oRequired[x][1];
                                                        isValid = false;
                                                    }
                                                } else if ((field.length > 0) && (field[0].type == 'radio' || field[0].type == 'checkbox')) {
                                                    isChecked = -1;
                                                    for (loop = 0; loop < field.length; loop++) {
                                                        if (field[loop].checked) {
                                                            isChecked = loop;
                                                            break; // only one needs to be checked
                                                        }
                                                    }
                                                    if (isChecked < 0) {
                                                        if (i == 0) {
                                                            focusField = field[0];
                                                        }
                                                        fields[i++] = oRequired[x][1];
                                                        isValid = false;
                                                    }
                                                }
                                            }
                                            if (fields.length > 0) {
                                                focusField.focus();
                                                alert(fields.join('\n'));
                                            }
                                            return isValid;
                                        }

                                        // Trim whitespace from left and right sides of s.
                                        function trim(s) {
                                            return s.replace(/^\s*/, "").replace(/\s*$/, "");
                                        }


                                        //End -->
                                    </script>


                                    <form name="memLoginForm" method="post"
                                          action="http://localhost:8080/demo/login.do;jsessionid=FCF13AE3F216591F42BA21206DB0F430?method=login"
                                          onsubmit="return validateMemLoginForm(this);" style="margin:0px;">
                                        <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                            <tbody>
                                            <tr>
                                                <td class="C_login_Title">会员登录</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <table cellspacing="0" cellpadding="0" width="90%" align="center"
                                                           border="0">
                                                        <tbody>
                                                        <tr height="30">
                                                            <td class="text">登录帐号：
                                                                <input type="text" name="loginName" size="10" value=""
                                                                       class="textBox">
                                                            </td>
                                                        </tr>
                                                        <tr height="30">
                                                            <td class="text">登录密码：
                                                                <input type="password" name="loginPwd" size="10"
                                                                       value="" class="textBox">
                                                            </td>
                                                        </tr>
                                                        <tr height="30">
                                                            <td class="UserRegster" align="right">
                                                                <input type="button" name="btn" value="注册"
                                                                       onclick="reg()">
                                                                <input type="submit" value="登录">
                                                            </td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>

                                    </form>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="${pageContext.request.contextPath}/resources/images/Bule_58.gif"></td>
                            </tr>
                            </tbody>
                        </table>
                        <table cellspacing="0" cellpadding="0" width="100%" border="0">
                            <tbody>
                            <tr>
                                <td><img src="${pageContext.request.contextPath}/resources/images/Bule_43.gif"></td>
                            </tr>
                            <tr>
                                <td class="C_Item_bg" valign="top">
                                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                                        <tbody>
                                        <tr>
                                            <td class="C_Sort_Title">商品类别</td>
                                        </tr>
                                        <tr height="10">
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td class="text">
                                                &nbsp;<img src="${pageContext.request.contextPath}/resources/images/cateIcon.gif" border="0">
                                                <a href="http://localhost:8080/demo/mer.do?method=searchMer&cateid=1">计算机类</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text">
                                                &nbsp;<img src="${pageContext.request.contextPath}/resources/images/cateIcon.gif" border="0">
                                                <a href="http://localhost:8080/demo/mer.do?method=searchMer&cateid=2">管理类</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text">
                                                &nbsp;<img src="${pageContext.request.contextPath}/resources/images/cateIcon.gif" border="0">
                                                <a href="http://localhost:8080/demo/mer.do?method=searchMer&cateid=3">英语类</a>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="text">
                                                &nbsp;<img src="${pageContext.request.contextPath}/resources/images/cateIcon.gif" border="0">
                                                <a href="http://localhost:8080/demo/mer.do?method=searchMer&cateid=4">小说类</a>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="${pageContext.request.contextPath}/resources/images/Bule_58.gif"></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                    <td width="20">&nbsp;</td>
                    <td valign="top"><br>
                        <table class="C_Goods_Title" cellspacing="0" cellpadding="0" width="100%" border="0">
                            <tbody>
                            <tr>
                                <td><img hspace="5" src="${pageContext.request.contextPath}/resources/images/Icon_TeJia.gif"></td>
                                <td>&nbsp;</td>
                                <td align="right">
                                    <a href="http://localhost:8080/demo/mer.do?method=browseSMer">
                                        <img hspace="5" src="${pageContext.request.contextPath}/resources/images/icon_more.gif"  border="0">
                                    </a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <table class="C_Goods_Border" cellspacing="0" cellpadding="0" width="100%" border="0">
                            <tbody>
                            <tr>
                                <td valign="top" width="33%">
                                    <table cellspacing="0" cellpadding="0" width="180" border="0">
                                        <tbody>
                                        <tr>
                                            <td align="TOP">
                                                <table width="118" height="118" border="0" align="center"
                                                       cellpadding="0" cellspacing="0"
                                                       style="border:1px; border-style:solid; border-color:#888888">
                                                    <tbody>
                                                    <tr align="center" valign="middle">
                                                        <td>
                                                            <a href="http://localhost:8080/demo/cart.do?method=showMer&id=15"
                                                               target="_blank"> <img
                                                                    src="${pageContext.request.contextPath}/resources/images/8768781-1_b.jpg" width="100"
                                                                    height="100" border="0"> </a></td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr align="center" height="30">
                                            <td><a href="http://localhost:8080/demo/mer.do?method=showMer&id=15"
                                                   target="_blank"><span class="blueText">管理是什么</span></a></td>
                                        </tr>
                                        <tr align="center" height="20">
                                            <td class="text">市场价： ￥56.0</td>
                                        </tr>
                                        <tr align="center" height="20">
                                            <td class="text">特 价： ￥50.0</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="http://localhost:8080/demo/mer.do?method=showMer&id=15"><img
                                                        src="${pageContext.request.contextPath}/resources/images/icon_car.gif" border="0"></a>
                                                <a href="http://localhost:8080/demo/cart.do?method=addCart&id=15"><img
                                                        alt="" src="${pageContext.request.contextPath}/resources/images/icon_buy.gif" border="0"></a>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td valign="top" width="33%">
                                    <table cellspacing="0" cellpadding="0" width="180" border="0">
                                        <tbody>
                                        <tr>
                                            <td align="TOP">
                                                <table width="118" height="118" border="0" align="center"
                                                       cellpadding="0" cellspacing="0"
                                                       style="border:1px; border-style:solid; border-color:#888888">
                                                    <tbody>
                                                    <tr align="center" valign="middle">
                                                        <td>
                                                            <a href="http://localhost:8080/demo/mer.do?method=showMer&id=12"
                                                               target="_blank"> <img
                                                                    src="${pageContext.request.contextPath}/resources/images/20525341-1_b.jpg"
                                                                    width="100" height="100" border="0"> </a></td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr align="center" height="30">
                                            <td><a href="http://localhost:8080/demo/mer.do?method=showMer&id=12"
                                                   target="_blank"><span class="blueText">贫民窟的百万富翁</span></a></td>
                                        </tr>
                                        <tr align="center" height="20">
                                            <td class="text">市场价： ￥66.0</td>
                                        </tr>
                                        <tr align="center" height="20">
                                            <td class="text">特 价： ￥45.0</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="http://localhost:8080/demo/mer.do?method=showMer&id=12"><img
                                                        src="${pageContext.request.contextPath}/resources/images/icon_car.gif" border="0"></a>
                                                <a href="http://localhost:8080/demo/cart.do?method=addCart&id=12"><img
                                                        alt="" src="${pageContext.request.contextPath}/resources/images/icon_buy.gif" border="0"></a>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </td>
                                <td valign="top" width="33%">
                                    <table cellspacing="0" cellpadding="0" width="180" border="0">
                                        <tbody>
                                        <tr>
                                            <td align="TOP">
                                                <table width="118" height="118" border="0" align="center"
                                                       cellpadding="0" cellspacing="0"
                                                       style="border:1px; border-style:solid; border-color:#888888">
                                                    <tbody>
                                                    <tr align="center" valign="middle">
                                                        <td>
                                                            <a href="http://localhost:8080/demo/mer.do?method=showMer&id=11"
                                                               target="_blank"> <img
                                                                    src="${pageContext.request.contextPath}/resources/images/9304959-1_b.jpg" width="100"
                                                                    height="100" border="0"> </a></td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr align="center" height="30">
                                            <td><a href="http://localhost:8080/demo/mer.do?method=showMer&id=11"
                                                   target="_blank"><span class="blueText">货币战争</span></a></td>
                                        </tr>
                                        <tr align="center" height="20">
                                            <td class="text">市场价： ￥56.0</td>
                                        </tr>
                                        <tr align="center" height="20">
                                            <td class="text">特 价： ￥45.0</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <a href="http://localhost:8080/demo/mer.do?method=showMer&id=11"><img
                                                        src="${pageContext.request.contextPath}/resources/images/icon_car.gif" border="0"></a>
                                                <a href="http://localhost:8080/demo/cart.do?method=addCart&id=11"><img
                                                        alt="" src="${pageContext.request.contextPath}/resources/images/icon_buy.gif" border="0"></a>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </td>


                            </tr>
                            </tbody>
                        </table>
                        <br>
                        <table class="C_Goods_Title" cellspacing="0" cellpadding="0" width="100%" border="0">
                            <tbody>
                            <tr>
                                <td><img hspace="5" src="${pageContext.request.contextPath}/resources/images/NewGoods_03.gif"></td>
                                <td>&nbsp;</td>
                                <td align="right"><a href="http://localhost:8080/demo/mer.do?method=browseMer"><img
                                        hspace="5" src="${pageContext.request.contextPath}/resources/images/icon_more.gif" border="0"></a></td>
                            </tr>
                            </tbody>
                        </table>
                        <table class="C_Goods_Border" cellspacing="0" cellpadding="0" width="100%" border="0">
                            <tbody>
                            <tr>


                                <td valign="top" width="33%">
                                    <table cellspacing="0" cellpadding="0" width="180" border="0">
                                        <tbody>
                                        <tr>
                                            <td align="TOP">
                                                <table width="118" height="118" border="0" align="center"
                                                       cellpadding="0" cellspacing="0"
                                                       style="border:1px; border-style:solid; border-color:#888888">
                                                    <tbody>
                                                    <tr align="center" valign="middle">
                                                        <td>
                                                            <a href="http://localhost:8080/demo/mer.do?method=showMer&id=14"
                                                               target="_blank"> <img
                                                                    src="${pageContext.request.contextPath}/resources/images/9250656-1_b.jpg" width="100"
                                                                    height="100" border="0"> </a></td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr align="center" height="30">
                                            <td><a href="http://localhost:8080/demo/mer.do?method=showMer&id=14"
                                                   target="_blank"><span class="blueText">领导力是什么</span></a></td>
                                        </tr>
                                        <tr align="center" height="20">
                                            <td class="text">市场价： ￥66.0</td>
                                        </tr>
                                        <tr>
                                            <td class="GoodsItem_buy">
                                                <a href="http://localhost:8080/demo/mer.do?method=showMer&id=14"><img
                                                        src="${pageContext.request.contextPath}/resources/images/icon_car.gif" border="0"></a>
                                                <a href="http://localhost:8080/demo/cart.do?method=addCart&id=14"><img
                                                        alt="" src="${pageContext.request.contextPath}/resources/images/icon_buy.gif" border="0"></a>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </td>

                                <td valign="top" width="33%">
                                    <table cellspacing="0" cellpadding="0" width="180" border="0">
                                        <tbody>
                                        <tr>
                                            <td align="TOP">
                                                <table width="118" height="118" border="0" align="center"
                                                       cellpadding="0" cellspacing="0"
                                                       style="border:1px; border-style:solid; border-color:#888888">
                                                    <tbody>
                                                    <tr align="center" valign="middle">
                                                        <td>
                                                            <a href="http://localhost:8080/demo/mer.do?method=showMer&id=13"
                                                               target="_blank"> <img
                                                                    src="${pageContext.request.contextPath}/resources/images/9255064-1_b.jpg" width="100"
                                                                    height="100" border="0"> </a></td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr align="center" height="30">
                                            <td><a href="http://localhost:8080/demo/mer.do?method=showMer&id=13"
                                                   target="_blank"><span class="blueText">士兵突击</span></a></td>
                                        </tr>
                                        <tr align="center" height="20">
                                            <td class="text">市场价： ￥36.0</td>
                                        </tr>
                                        <tr>
                                            <td class="GoodsItem_buy">
                                                <a href="http://localhost:8080/demo/mer.do?method=showMer&id=13"><img
                                                        src="${pageContext.request.contextPath}/resources/images/icon_car.gif" border="0"></a>
                                                <a href="http://localhost:8080/demo/cart.do?method=addCart&id=13"><img
                                                        alt="" src="${pageContext.request.contextPath}/resources/images/icon_buy.gif" border="0"></a>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </td>

                                <td valign="top" width="33%">
                                    <table cellspacing="0" cellpadding="0" width="180" border="0">
                                        <tbody>
                                        <tr>
                                            <td align="TOP">
                                                <table width="118" height="118" border="0" align="center"
                                                       cellpadding="0" cellspacing="0"
                                                       style="border:1px; border-style:solid; border-color:#888888">
                                                    <tbody>
                                                    <tr align="center" valign="middle">
                                                        <td>
                                                            <a href="http://localhost:8080/demo/mer.do?method=showMer&id=10"
                                                               target="_blank"> <img
                                                                    src="${pageContext.request.contextPath}/resources/images/20522936-1_b.jpg"
                                                                    width="100" height="100" border="0"> </a></td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr align="center" height="30">
                                            <td><a href="http://localhost:8080/demo/mer.do?method=showMer&id=10"
                                                   target="_blank"><span class="blueText">巴菲特教你读财报</span></a></td>
                                        </tr>
                                        <tr align="center" height="20">
                                            <td class="text">市场价： ￥75.0</td>
                                        </tr>
                                        <tr>
                                            <td class="GoodsItem_buy">
                                                <a href="http://localhost:8080/demo/mer.do?method=showMer&id=10"><img
                                                        src="${pageContext.request.contextPath}/resources/images/icon_car.gif" border="0"></a>
                                                <a href="http://localhost:8080/demo/cart.do?method=addCart&id=10"><img
                                                        alt="" src="${pageContext.request.contextPath}/resources/images/icon_buy.gif" border="0"></a>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </td>


                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td height="30" bgcolor="#4282CE" class="whiteText" align="center">
            本电子商城系统仅供学习交流使用，未经授权严禁用于商业用途！！
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td height="20" colspan="3">&nbsp;</td>
    </tr>
    </tbody>
</table>
<script type="text/javascript">
    //会员注册
    function reg() {
        window.location = "reg.jsp";
    }

    //搜索商品
    function QuickSearch() {
        var url = "mer.do?method=searchMer&cateid=" + document.all.category.value;
        var key = document.all.qKey.value;
        if (key != null && key != "商品关键字" && key.length > 0)url = url + "&key=" + key;
        window.location = url;
    }
</script>
</body>
</html>
