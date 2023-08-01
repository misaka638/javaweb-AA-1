
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工抢班查看详情</title>
    <link rel="stylesheet" href="css/tab-style.css">
    <link rel="stylesheet" href="css/sto-tab-style.css">
    <link rel="stylesheet" type="text/css" href="css/table-style.css">
    <link rel="stylesheet" href="css/overall.css">
    <link rel="stylesheet" href="css/snatch-form.css">
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
            <div id="tab-sch" class="tab-content">
                <a href="sche-cal.jsp">排班日历</a>
                <a href="sche-dule.jsp">排班详情</a>
                <a href="sche-sta.jsp">班次统计</a>
                <a href="sche-work.jsp">工时统计</a>
            </div>
        </div>

        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="media/navigation bar/tiaoxingtu-xianxing.png" alt="">
                <a href="#" onclick="toggleTabs(event, 'tab-sna')">抢班管理</a>
            </div>
            <div id="tab-sna" class="tab-content active">
                <a href="snatch-enterprise.jsp">企业抢班</a>
                <a href="snatch-employees.jsp" class="act">员工抢班</a>
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
        <div class="bd-tl">
            <h5>抢班管理 > 员工抢班 > 详情</h5>
            <button onclick="window.location.href='snatch-employees.jsp'">返回</button>
        </div>
        <div class="details">
            <div class="row">
                <div class="row-tl">抢班流程</div>
                <div class="row-bd">
                    <div class="row-m">
                        <div class="item">
                            <div class="process">
                                <img src="media/snatch/mark.png" alt="">
                                <div class="name">发起抢班</div>
                            </div>
                            <div class="human">
                                <div class="person">
                                    <img src="" alt="">
                                    <div class="person-name">赵恒</div>
                                </div>
                                <div class="time">2022-12-16 08:35:23</div>
                            </div>
                        </div>
                        <div class="line"></div>
                        <div class="item">
                            <div class="process">
                                <img src="media/snatch/mark.png" alt="">
                                <div class="name">抢班中</div>
                            </div>
                            <div class="human">
                                <div class="person">
                                    <img src="" alt="">
                                    <div class="person-name">张志华</div>
                                </div>
                                <div class="time">2022-12-16 10:05:09</div>
                            </div>
                        </div>
                        <div class="line"></div>
                        <div class="item">
                            <div class="process">
                                <img src="media/snatch/3.png" alt="">
                                <div class="name">待确定</div>
                            </div>
                        </div>
                        <div class="line"></div>
                        <div class="item">
                            <div class="process">
                                <img src="media/snatch/4.png" alt="">
                                <div class="name">结束抢班</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="row-tl">班次信息</div>
                <div class="row-bd">
                    <div class="row-m">
                        <div class="item">日期： 2022-12-19</div>
                        <div class="item">班次：早班 09:00-12:00</div>
                        <div class="item">门店： 杭州市余杭区快步001店</div>
                        <div class="item">岗位： 收银员</div>
                    </div>
                    <div class="row-m">
                        <div class="item">交易金额： 105</div>
                        <div class="item"></div>
                        <div class="item"></div>
                        <div class="item"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="row-tl">发起人人信息</div>
                <div class="row-bd">
                    <div class="row-m">
                        <div class="item">姓名： 赵恒</div>
                        <div class="item">工号： 20221215124</div>
                        <div class="item">门店： 杭州市余杭区快步001店</div>
                        <div class="item">岗位： 收银员</div>
                    </div>
                    <div class="row-m">
                        <div class="item">电话： 1336548215</div>
                        <div class="item">本月请假次数： 1</div>
                        <div class="item">请假时间：2022-12-19 09:00  --  2022-12-19 22:00</div>
                        <div class="item"></div>
                    </div>
                    <div class="row-m">
                        <div class="item">请假原因： 身体不适请假休息。</div>
                        <div class="item"></div>
                        <div class="item"></div>
                        <div class="item"></div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="row-tl">抢班人信息</div>
                <div class="row-bd">
                    <div class="row-m">
                        <div class="item">姓名： 张志华</div>
                        <div class="item">工号： 20221215031</div>
                        <div class="item">门店： 杭州市余杭区快步001店</div>
                        <div class="item">岗位： 收银员</div>
                    </div>
                    <div class="row-m">
                        <div class="item">电话： 19845120364</div>
                        <div class="item">本月抢班次数： 1</div>
                        <div class="item"></div>
                        <div class="item"></div>
                    </div>
                </div>
            </div>
            <div class="btn">
                <button onclick="window.location.href='snatch-employees.jsp'">取消</button>
                <button onclick="window.location.href='snatch-employees.jsp'">确认</button>
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

