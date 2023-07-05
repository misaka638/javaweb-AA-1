
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>表单</title>
    <link rel="stylesheet" href="../css/str-form-style.css">
</head>
<body>
<form action="process-form.jsp" method="post">
    <label for="name">姓名：</label>
    <input type="text" id="name" name="name" required>
    <br>
    <label>
        <input type="radio" name="gender" value="male"> 男性
    </label>
    <label>
        <input type="radio" name="gender" value="female"> 女性
    </label>
    <br>
    <label for="number1">员工工号：</label>
    <input type="text" id="number1" name="number1" required>
    <br>
    <label for="phone">联系电话：</label>
    <input type="text" id="phone" name="phone" required>
    <br>
    <label for="email">电子邮箱：</label>
    <input type="text" id="email" name="email" required>
    <br>

    <label for="store">工作门店：</label>
    <select id="store" name="store" required>
        <option value="1">门店1</option>
        <option value="2">门店2</option>
        <option value="3">门店3</option>
    </select>
    <br>
    <label for="employee">岗位：</label>
    <select id="employee" name="employee" required>
        <option value="1">岗位1</option>
        <option value="2">岗位2</option>
        <option value="3">岗位3</option>
    </select>
    <br>
    <label for="address">家庭住址：</label>
    <input type="text" id="address" name="address" required>
    <br>
    <label for="els">其他备注：</label>
    <input type="text" id="els" name="els" required>
    <br>
    <input type="submit" value="提交">
</form>
</body>
</html>
