
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>排班表统计</title>
    <link rel="stylesheet" href="css/tab-style.css">
    <link rel="stylesheet" href="css/sto-tab-style.css">
    <link rel="stylesheet" href="css/sche-cal-style.css">
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
<table class="table1">
    <tr>
        <th>周一</th>
        <th>周二</th>
        <th>周三</th>
        <th>周四</th>
        <th>周五</th>
        <th>周六</th>
        <th>周日</th>
    </tr>

    <%
        int daysInMonth = 31; // 假设当前月份有31天
        int currentDay = 1; // 当前日期
        int dayOfWeek = 1; // 当前日期的星期几，1表示周一
        int rows = (daysInMonth + dayOfWeek - 2) / 7 + 1; // 计算总行数

        for (int i = 0; i < rows; i++) { %>
    <tr>
        <% for (int j = 1; j <= 7; j++) { %>
        <td>
            <% if (dayOfWeek > 1 && currentDay <= daysInMonth) { %>
            <div class="date"><%= currentDay %></div>
            <div class="content">
                Line 1<br>
                Line 2<br>
                Line 3
            </div>
            <% currentDay++; %>
            <% } %>
        </td>
        <% dayOfWeek++; %>
        <% } %>
    </tr>
    <% } %>
</table>


</body>
</html>
