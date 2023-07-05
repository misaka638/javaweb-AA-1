
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工管理</title>
    <link rel="stylesheet" href="css/tab-style.css">
    <link rel="stylesheet" href="css/sto-tab-style.css">
    <link rel="stylesheet" href="css/stf-table-style.css">
</head>
<body>
<div class="tab">
    <a href="#" onclick="toggleTabs(event, 'tab-sto')">组织管理</a>
    <div id="tab-sto" class="tab-content">
        <a href="sto-manage.jsp">门店管理</a>
        <a href="stf-manage.jsp">员工管理</a>
    </div>

    <a href="#" onclick="toggleTabs(event, 'about')">排班规则管理</a>
    <div id="tab-reu" class="tab-content">
        <!-- About Tab Content -->
    </div>

    <a href="#">排班表统计</a>

    <a href="#" onclick="toggleTabs(event, 'contact')">日常管理</a>
    <div id="tab-day" class="tab-content">
        <!-- Contact Tab Content -->
    </div>
    <a href="#">业务预测</a>
</div>
<script>
    function toggleTabs(event, tabId) {
        event.preventDefault();

        var tabContent = document.getElementById(tabId);

        // 先隐藏所有 tab 内容
        var allTabContents = document.getElementsByClassName("tab-content");
        for (var i = 0; i < allTabContents.length; i++) {
            allTabContents[i].classList.remove("active");
        }

        // 展开或折叠点击的 tab 内容
        tabContent.classList.toggle("active");
    }
</script>
<div class="tab1">
    <a href="#" onclick="toggleTabs(event, 'sto-tab-hang')">杭州市门店</a>
    <div id="sto-tab-hang" class="tab-content">
        <a href="sto-manage.jsp">余杭区门店</a>
        <a href="stf-manage.jsp">上城区门店</a>
        <a href="stf-manage.jsp">西湖区门店</a>
    </div>

    <a href="#" onclick="toggleTabs(event, 'about')">广州市门店</a>
    <div id="sto-tab-sui" class="tab-content">
        <!-- About Tab Content -->
    </div>

    <a href="#" onclick="toggleTabs(event, 'contact')">深圳市门店</a>
    <div id="sto-tab-shen" class="tab-content">
        <!-- Contact Tab Content -->
    </div>
    <a href="#" onclick="toggleTabs(event, 'contact')">上海市门店</a>
    <div id="sto-tab-lu" class="tab-content">
        <!-- Contact Tab Content -->
    </div>
    <a href="#" onclick="toggleTabs(event, 'contact')">南京市门店</a>
    <div id="sto-tab-ning" class="tab-content">
        <!-- Contact Tab Content -->
    </div>
</div>
<script>
    function toggleTabs(event, tabId) {
        event.preventDefault();

        var tabContent = document.getElementById(tabId);

        // 先隐藏所有 tab 内容
        var allTabContents = document.getElementsByClassName("tab-content");
        for (var i = 0; i < allTabContents.length; i++) {
            allTabContents[i].classList.remove("active");
        }

        // 展开或折叠点击的 tab 内容
        tabContent.classList.toggle("active");
    }
</script>
<div class="table-container">
    <div class="table-sto">
        <table>
            <tr>
                <th>ID</th>
                <th>员工姓名</th>
                <th>工号</th>
                <th>岗位</th>
                <th>性别</th>
                <th>联系电话</th>
                <th>电子邮箱</th>
                <th>状态</th>
            </tr>
            <tr>
                <td>1</td>
                <td>张三</td>
                <td>张三</td>
                <td>2sffs</td>
                <td>d</td>
                <td>18883993</td>
                <td>253241414@hh.com</td>
                <td>营业中</td>
            </tr>
        </table>

        <button id="myButton">编辑</button>
        <script>
            var button = document.getElementById('myButton');

            button.addEventListener('click', function() {
                window.open('form/stf-form.jsp', '_blank');
            });
        </script>
    </div>
</div>
</body>
</html>
