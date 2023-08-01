<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页面</title>
    <link rel="stylesheet" href="css/overall.css">
    <link rel="stylesheet" type="text/css" href="css/tab-style.css">
    <link rel="stylesheet" type="text/css" href="css/mainpage.css">
</head>
<body>
<div class="title">
    <img src="media/logo.png" alt="">
    <h1>智能排班系统</h1>
</div>
<div class="main">
    <div class="tab">
        <div class="tab-lst active">
            <div class="tab-lst-tl act">
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
            <div id="tab-sch" class="tab-content">
                <a href="sche-cal.jsp">排班日历</a>
                <a href="sche-dule.jsp">排班详情</a>
                <a href="sche-sta.jsp">班次统计</a>
                <a href="sche-work.jsp">工时统计</a>
            </div>
        </div>

        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="media/navigation bar/yewu-xianxing.png" alt="">
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
        <h5>首页></h5>
        <div class="details">
            <div class="column">
                <div class="row">
                    <div class="row-tl">快捷功能</div>
                    <div class="row-bd">
                        <div class="row-bd-choose">
                            <img src="media\mainpage\生成排班表.png" alt="" onclick="window.location.href='sche-dule.jsp'">
                            <div class="row-choose-name">生成排班表</div>
                        </div>
                        <div class="row-bd-choose">
                            <img src="media\mainpage\生成排班日历.png" alt="" onclick="window.location.href='sche-cal.jsp'">
                            <div class="row-choose-name">生成排班日历</div>
                        </div>
                        <div class="row-bd-choose">
                            <img src="media\mainpage\审批管理.png" alt="" onclick="window.location.href='apr-manage.jsp'">
                            <div class="row-choose-name">审批管理</div>
                        </div>
                        <div class="row-bd-choose">
                            <img src="media\mainpage\员工信息.png" alt="" onclick="window.location.href='stf-manage.jsp'">
                            <div class="row-choose-name">员工信息</div>
                        </div>
                        <div class="row-bd-choose">
                            <img src="media\mainpage\店铺信息.png" alt="">
                            <div class="row-choose-name">店铺信息</div>
                        </div>
                        <div class="row-bd-choose">
                            <img src="media\mainpage\客流量预测.png" alt="">
                            <div class="row-choose-name">客流量预测</div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="row-tl">员工情况</div>
                    <div class="row-bd">
                        <div class="row-bd-details">
                            <img src="media\mainpage\员工总人数.png" alt="">
                            <div class="row-details-txt">
                                <div class="row-details-name">员工总人数</div>
                                <div class="row-details-num">10000</div>
                            </div>
                        </div>
                        <div class="row-bd-details">
                            <img src="media\mainpage\在岗人数.png" alt="">
                            <div class="row-details-txt">
                                <div class="row-details-name">在岗人数</div>
                                <div class="row-details-num">8000</div>
                            </div>
                        </div>
                        <div class="row-bd-details">
                            <img src="media\mainpage\休假人数.png" alt="">
                            <div class="row-details-txt">
                                <div class="row-details-name">休假人数</div>
                                <div class="row-details-num">1400</div>
                            </div>
                        </div>
                        <div class="row-bd-details">
                            <img src="media\mainpage\请假人数.png" alt="">
                            <div class="row-details-txt">
                                <div class="row-details-name">请假人数</div>
                                <div class="row-details-num">500</div>
                            </div>
                        </div>
                        <div class="row-bd-details">
                            <img src="media\mainpage\缺勤人数.png" alt="">
                            <div class="row-details-txt">
                                <div class="row-details-name">缺勤人数</div>
                                <div class="row-details-num">100</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="row-tl">门店情况</div>
                    <div class="row-bd">
                        <div class="row-bd-details">
                            <img src="media\mainpage\店铺总数.png" alt="">
                            <div class="row-details-txt">
                                <div class="row-details-name">店铺总数</div>
                                <div class="row-details-num">50</div>
                            </div>
                        </div>
                        <div class="row-bd-details">
                            <img src="media\mainpage\营业中.png" alt="">
                            <div class="row-details-txt">
                                <div class="row-details-name">营业中</div>
                                <div class="row-details-num">45</div>
                            </div>
                        </div>
                        <div class="row-bd-details">
                            <img src="media\mainpage\休息中.png" alt="">
                            <div class="row-details-txt">
                                <div class="row-details-name">休息中</div>
                                <div class="row-details-num">3</div>
                            </div>
                        </div>
                        <div class="row-bd-details">
                            <img src="media\mainpage\整顿中.png" alt="">
                            <div class="row-details-txt">
                                <div class="row-details-name">整顿中</div>
                                <div class="row-details-num">2</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="row-tl">业务预测</div>
                    <div class="row-bd">
                        <img src="media\mainpage\bus-forecast.png" alt="" class="pic-1">
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="row">
                    <div class="row-tl">今日考勤</div>
                    <div class="row-bd">
                        <img src="media\mainpage\today's attendance.png" alt="" class="pic-2">
                    </div>
                </div>
                <div class="row">
                    <div class="row-tl">审批概况</div>
                    <div class="row-bd apr">
                        <img src="media\mainpage\apr-1.png" alt="" class="pic-3">
                        <div class="row-bd-num">
                            <div class="row-num">176</div>
                            <div class="row-num-name">审批统计</div>
                            <div class="row-num">148</div>
                            <div class="row-num-name">已完成</div>
                            <div class="row-num">28</div>
                            <div class="row-num-name">审批中</div>
                        </div>
                        <img src="media\mainpage\apr-2.png" alt="" class="pic-4">
                    </div>
                </div>
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
        // 展开或折叠点击的 tab 内容
        tabContent.classList.toggle("active");
    }
</script>
</body>
</html>

