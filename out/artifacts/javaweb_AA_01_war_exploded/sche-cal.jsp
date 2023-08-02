
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>排班日历</title>
    <link rel="stylesheet" href="css/tab-style.css">
    <link rel="stylesheet" href="css/sto-tab-style.css">
    <link rel="stylesheet" href="css/sche-cal-style.css">
    <link rel="stylesheet" href="css/overall.css">
</head>
<body>
<div class="title">
    <img src="media/logo.png" alt="">
    <h1>智能排班系统</h1>
</div>
<div class="main">
    <div class="tab">
        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="media/navigation bar/shouye-xianxing.png" alt="">
                <a href="mainpage.jsp">首页</a>
            </div>
        </div>

        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="media/navigation bar/rili.png" alt="">
                <a href="#" onclick="toggleTabs(event, 'tab-reu')">排班管理</a>
            </div>
            <div id="tab-reu" class="tab-content">
                <a href="fixrule-manage.jsp">固定规则</a>
                <a href="cusrule-manage.jsp">自定义规则</a>
            </div>
        </div>

        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="media/navigation bar/tiaoxingtu-xianxing.png" alt="">
                <a href="#" onclick="toggleTabs(event, 'tab-sch')">排班统计</a>
            </div>
            <div id="tab-sch" class="tab-content active">
                <a href="sche-cal.jsp" class="act">排班日历</a>
                <a href="sche-dule.jsp">排班详情</a>
                <a href="sche-sta.jsp" >班次统计</a>
                <a href="sche-work.jsp">工时统计</a>
            </div>
        </div>

        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="media/navigation bar/tiaoxingtu-xianxing.png" alt="">
                <a href="#" onclick="toggleTabs(event, 'tab-sna')">抢班管理</a>
            </div>
            <div id="tab-sna" class="tab-content">
                <a href="snatch-enterprise.jsp">企业抢班</a>
                <a href="snatch-employees.jsp">员工抢班</a>
            </div>
        </div>

        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="media/navigation bar/ziyuan-xianxing.png" alt="">
                <a href="#" onclick="toggleTabs(event, 'tab-day')">日常管理</a>
            </div>
            <div id="tab-day" class="tab-content">
                <a href="atd-manage.jsp">考勤管理</a>
                <a href="apr-manage.jsp">审批管理</a>
            </div>
        </div>

        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="media/navigation bar/zuzhijiagoujiekou.png" alt="">
                <a href="#" onclick="toggleTabs(event, 'tab-sto')">组织管理</a>
            </div>
            <div id="tab-sto" class="tab-content">
                <a href="sto-manage.jsp">门店管理</a>
                <a href="stf-manage.jsp">员工管理</a>
            </div>
        </div>

        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="media/navigation bar/leidatance.png" alt="">
                <a href="bus-forecast.jsp">业务预测</a>
            </div>
        </div>
    </div>
    <div class="bd">
        <h5>排版规则管理>固定规则</h5>
        <div class="details">
            <div class="tab1">
                <div class="tab1-title">选择组织</div>
                <a href="#" onclick="toggleTabs(event, 'sto-tab-hang')">杭州市门店</a>
                <div id="sto-tab-hang" class="tab-content active">
                    <a href="sto-manage.jsp" class="act">余杭区门店</a>
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
            <div class="table-container">
                <img src="media/sche/sche-cal.png" alt="">
            </div>
        </div>
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

        tabContent.classList.toggle("active");
    }
</script>
<script>
    function toggleTabs(event, tabId) {
        event.preventDefault();

        var tabContent = document.getElementById(tabId);

        // 先隐藏所有 tab 内容
        var allTabContents = document.getElementsByClassName("tab-content");
        for (var i = 0; i < allTabContents.length; i++) {
            allTabContents[i].classList.remove("active");
        }

        tabContent.classList.toggle("active");
    }
</script>
</body>
</html>

