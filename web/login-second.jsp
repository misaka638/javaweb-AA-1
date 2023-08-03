
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>企业登录</title>
</head>
<body>
<form action="mainpage.jsp" method="post">
    <label for="companyName">企业名称：</label>
    <input type="text" name="companyName" id="companyName" required><br>

    <label for="storeCount">门店数量：</label>
    <input type="number" name="storeCount" id="storeCount" required><br>

    <label for="employeeCount">员工人数：</label>
    <input type="number" name="employeeCount" id="employeeCount" required><br>

    <label for="fruitSelect">企业规模：</label>
    <select name="fruit" id="fruitSelect">
        <option value="apple">大</option>
        <option value="banana">中</option>
        <option value="orange">小</option>
    </select><br>
    <label for="remarks">其他备注：</label>
    <textarea name="remarks" id="remarks" rows="4" cols="50"></textarea><br>

    <input type="submit" value="提交">
</form>
</body>
</html>

