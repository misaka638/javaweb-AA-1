
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页面</title>
    <link rel="stylesheet" type="text/css" href="css/tab-style.css">
    <link rel="stylesheet" type="text/css" href="css/image-style.css">

</head>
<body>
<h1>这是主页面</h1>
<div class="tab">
    <a href="#" onclick="toggleTabs(event, 'tab-sto')">组织管理</a>
    <div id="tab-sto" class="tab-content">
        <a href="sto-manage.jsp">门店管理</a>
        <a href="stf-manage.jsp">员工管理</a>
    </div>

    <a href="#" onclick="toggleTabs(event, 'tab-reu')">排班规则管理</a>
    <div id="tab-reu" class="tab-content">
        <a href="fixrule-manage.jsp">固定规则</a>
        <a href="cusrule-manage.jsp">自定义规则</a>
    </div>

    <a href="#" onclick="toggleTabs(event, 'tab-sch')">排班表统计</a>
    <div id="tab-sch" class="tab-content">
        <a href="sche-cal.jsp">排班日历</a>
        <a href="sche-dule.jsp">排班表</a>
    </div>
    <a href="#" onclick="toggleTabs(event, 'tab-day')">日常管理</a>
    <div id="tab-day" class="tab-content">
        <a href="atd-manage.jsp">考勤管理</a>
        <a href="apr-manage.jsp">审批管理</a>
    </div>
    <a href="bus-forecast.jsp">业务预测</a>
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

<div class="main-image">
    <img src="image/package2/2.jpg" alt="Icon">
    <img src="image/package2/2.jpg" alt="Icon">
    <img src="image/package2/2.jpg" alt="Icon">
    <img src="image/package2/2.jpg" alt="Icon">
    <img src="image/package2/2.jpg" alt="Icon">
</div>

</body>
</html>
