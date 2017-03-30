<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户中心_注册</title>
    <meta charset="utf-8" />
    <link rel="shortcut icon" href="favicon.ico" />
    <link rel="icon" href="Images/user.png" type="image/gif" />
    <link href="CSS/style.css" rel="stylesheet" type="text/css" />
    <link href="CSS/headerfooterindex.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="CSS/head.css" />
    <link href="CSS/reg.css" rel="stylesheet" type="text/css" />
</head>
<body>
<jsp:include page="homeTop.jsp"></jsp:include>



<div class="clear"></div>
<div class="tabBox">
    <span id="regper" class="reg_hide reg_show regMr5">注册商家用户</span>
    <div class="login">
        已有账号，立即
        <a href="login.jsp">登录</a>
    </div>
</div>
<div id="perDiv" class="reg_main reg_border regTab">
    <ul class="individualUserBg">
        <form action="addSeller.html" method="post" name="formUser">
            <li class="regMb30">
                <label>
                    <font>*</font>
                    账户名：
                </label>
                <span class="regM defaultBorder">
                        <input name="sellerName" type="text" class="regInput" id="userName" maxlength="80">
                    </span>
                <span id="username_notice" class="reg_error1"></span>
            </li>
            <li class="regMb30">
                <label>
                    <font>*</font>
                    姓名：
                </label>
                <span class="regM defaultBorder">
                        <input name="name" type="text" class="regInput"   maxlength="80">
                    </span>
                <span  class="reg_error1"></span>
            </li>

            <li>
                <label>
                    <font>*</font>
                    登录密码：
                </label>
                <span class="regM defaultBorder">
                        <input class="regInput" name="password" type="password" id="password1" onblur="check_password(this.value);" onkeyup="checkIntensity(this.value)">
                    </span>
                <span id="password_notice" class="reg_error2"></span>
            </li>
            <li id="pwdStrong" class="safetyLayer regPl191">
                <font style="font-size:12px;">安全程度：</font>
                <em class="default" id="pwd_lower">弱</em>
                <em class="default" id="pwd_middle">中</em>
                <em class="default" id="pwd_high">强</em>
            </li>
            <li class="regMb30">
                <label>
                    <font>*</font>
                    确认密码：
                </label>
                <span class="regM defaultBorder">
                        <input class="regInput" name="confirm_password" type="password" id="conform_password" onblur="check_conform_password(this.value);">
                    </span>
                <span id="conform_password_notice" class="reg_error1"></span>
            </li>
            <li class="regMb30">
                <label>
                    <font>*</font>
                    地址：
                </label>
                <span class="regM defaultBorder">
                        <input name="address" type="text" class="regInput"   maxlength="80">
                    </span>
                <span  class="reg_error1"></span>
            </li>
            <li class="regMb30">
                <label>
                    <font>*</font>
                    身份证：
                </label>
                <span class="regM defaultBorder">
                        <input name="card" type="text" class="regInput"   maxlength="80">
                    </span>
                <span  class="reg_error1"></span>
            </li>
            <li class="regMb30">
                <label>
                    <font>*</font>                    手机：
                </label>
                <span class="regM defaultBorder"><input name="tel" type="text" class="regInput" /></span>
            </li>
            <div class="clear"></div>
            <li class="regPl88">
                    <span class="regM" style="margin-left:29px">
                        <input name="agreement" type="checkbox" value="1" checked="checked" style="border:none;" />
                        我已看过并接受《<a href="article.php?cat_id=-1" style="color:blue" target="_blank">用户协议</a>》
                    </span>
            </li>

            <li id="sub_per" class="register regPl88 regMt10" style="margin-left:29px; padding-bottom:30px">

                <input name="act" type="hidden" value="act_register" />
                <input type="hidden" name="back_act" value="" />
                <input name="Submit" type="submit" value="立即注册" class="registerNow" style="background-color:coral" />

            </li>

        </form>
    </ul>
</div>




<jsp:include page="homeBottom.jsp"></jsp:include>

</body>
</html>

