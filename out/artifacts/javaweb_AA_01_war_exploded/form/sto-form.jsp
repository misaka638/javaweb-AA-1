
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>表单</title>
    <link rel="stylesheet" href="../css/sto-form-style.css">
</head>
<body>

<form action="process-form.jsp" method="post">
    <label for="name">门店名称：</label>
    <input type="text" id="name" name="name" required>
    <br>
    <label for="address">门店地址：</label>
    <input type="text" id="address" name="address" required>
    <br>
    <label for="area">门店面积：</label>
    <input type="text" id="area" name="area" required>
    <br>
    <label for="stfnumber">员工人数：</label>
    <input type="text" id="stfnumber" name="stfnumber" required>
    <br>

    <label for="employee">员工：</label>
    <select id="employee" name="employee" required>
        <option value="1">员工1</option>
        <option value="2">员工2</option>
        <option value="3">员工3</option>
    </select>
    <br>
    <label for="els">其他备注：</label>
    <input type="text" id="els" name="els" required>
    <br>
    <input type="submit" value="提交">
</form>

</body>
</html>
