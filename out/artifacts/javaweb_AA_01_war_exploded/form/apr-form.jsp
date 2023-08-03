
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>审批管理查看详情</title>
    <link rel="stylesheet" href="../css/tab-style.css">
    <link rel="stylesheet" href="../css/sto-tab-style.css">
    <link rel="stylesheet" type="text/css" href="../css/table-style.css">
    <link rel="stylesheet" href="../css/overall.css">
    <link rel="stylesheet" href="../css/snatch-form.css">
    <link rel="stylesheet" href="../css/apr-form.css">
</head>
<body>
<div class="title">
    <img src="../media/logo.png" alt="">
    <h1>智能排班系统</h1>
</div>
<div class="main">
    <div class="tab">
        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="../media/navigation bar/shouye-xianxing.png" alt="">
                <a href="../mainpage.jsp">首页</a>
            </div>
        </div>

        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="../media/navigation bar/rili.png" alt="">
                <a href="#" onclick="toggleTabs(event, 'tab-reu')">排班管理</a>
            </div>
            <div id="tab-reu" class="tab-content">
                <a href="../fixrule-manage.jsp">固定规则</a>
                <a href="../cusrule-manage.jsp">自定义规则</a>
            </div>
        </div>

        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="../media/navigation bar/tiaoxingtu-xianxing.png" alt="">
                <a href="#" onclick="toggleTabs(event, 'tab-sch')">排班统计</a>
            </div>
            <div id="tab-sch" class="tab-content">
                <a href="../sche-cal.jsp">排班日历</a>
                <a href="../sche-dule.jsp">排班详情</a>
                <a href="../sche-sta.jsp">班次统计</a>
                <a href="../sche-work.jsp">工时统计</a>
            </div>
        </div>

        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="../media/navigation bar/tiaoxingtu-xianxing.png" alt="">
                <a href="#" onclick="toggleTabs(event, 'tab-sna')">抢班管理</a>
            </div>
            <div id="tab-sna" class="tab-content active">
                <a href="../snatch-enterprise.jsp">企业抢班</a>
                <a href="../snatch-employees.jsp">员工抢班</a>
            </div>
        </div>

        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="../media/navigation bar/ziyuan-xianxing.png" alt="">
                <a href="#" onclick="toggleTabs(event, 'tab-day')">日常管理</a>
            </div>
            <div id="tab-day" class="tab-content">
                <a href="../atd-manage.jsp">考勤管理</a>
                <a href="../apr-manage.jsp" class="act">审批管理</a>
            </div>
        </div>

        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="../media/navigation bar/zuzhijiagoujiekou.png" alt="">
                <a href="#" onclick="toggleTabs(event, 'tab-sto')">组织管理</a>
            </div>
            <div id="tab-sto" class="tab-content">
                <a href="../sto-manage.jsp">门店管理</a>
                <a href="../stf-manage.jsp">员工管理</a>
            </div>
        </div>

        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="../media/navigation bar/leidatance.png" alt="">
                <a href="../bus-forecast.jsp">业务预测</a>
            </div>
        </div>
    </div>
    <div class="bd">
        <div class="bd-tl">
            <h5>日常管理 > 审批管理 > 详情</h5>
            <button onclick="window.location.href='../apr-manage.jsp'" onclick="goback()">返回</button>
        </div>
        <div class="details">
            <div class="row">
                <div class="row-tl">审批流程</div>
                <div class="row-bd">
                    <div class="row-m">
                        <div class="item">
                            <div class="process">
                                <img src="../media/apr/mark.png" alt="">
                                <div class="name">发起审批</div>
                            </div>
                            <div class="human">
                                <div class="person">
                                    <img src="" alt="">
                                    <div class="person-name">张雯</div>
                                </div>
                                <div class="time">2022-12-16 08:35:23</div>
                            </div>
                        </div>
                        <div class="line"></div>
                        <div class="item">
                            <div class="process">
                                <img src="../media/apr/2.png" alt="">
                                <div class="name">审批中</div>
                            </div>
                            <div class="human">
                                <div class="person">
                                    <img src="" alt="">
                                    <div class="person-name">Unique</div>
                                </div>
                                <div class="time"></div>
                            </div>
                        </div>
                        <div class="line"></div>
                        <div class="item">
                            <div class="process">
                                <img src="../media/apr/3-2.png" alt="">
                                <div class="name">完成</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="row-tl">审批详情</div>
                <div class="row-bd">
                    <div class="row-m">
                        <div class="item">审批类型： 请假审批</div>
                        <div class="item">发起时间： 2022-12-15 08:35:23</div>
                    </div>
                    <div class="row-m">
                        <div class="item">发起人： 张雯</div>
                        <div class="item">员工工号： 20221215063</div>
                    </div>
                    <div class="row-m">
                        <div class="item">联系电话： 19815634569</div>
                        <div class="item">所在店铺： 杭州市余杭区快步001店</div>
                    </div>
                    <div class="row-m">
                        <div class="item">请假时间： 2022年12月16日 09:00  --  2022年12月17日 22:00</div>
                        <div class="item">请假理由： 生病，请假去医院看病，并于家中休息一天，望批准。</div>
                    </div>
                    <div class="row-m">
                        <div class="item">替班员工： 于丽敏</div>
                        <div class="item">联系电话： 13516204512</div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="row-tl">业务预测</div>
                <div class="row-bd">
                    <img src="../media/apr/apr.png" alt="">
                </div>
            </div>
            <div class="btn">
                <button onclick="window.location.href='../apr-manage.jsp'">同意</button>
                <button onclick="window.location.href='../apr-manage.jsp'">拒绝</button>
            </div>
        </div>
        <script>
            function goBack() {
                history.back();  // 返回到上一页
            }
        </script>
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

