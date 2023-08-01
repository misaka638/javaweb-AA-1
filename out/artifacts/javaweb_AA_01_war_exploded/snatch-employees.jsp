
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工抢班</title>
    <link rel="stylesheet" href="css/tab-style.css">
    <link rel="stylesheet" href="css/sto-tab-style.css">
    <link rel="stylesheet" type="text/css" href="css/table-style.css">
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
        <h5>抢班管理 > 企业抢班 > 详情</h5>
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
                <div class="table-sto">
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>日期</th>
                            <th>班次</th>
                            <th>岗位</th>
                            <th>交易金额</th>
                            <th>状态</th>
                            <th>发布者</th>
                            <th>接受者</th>
                            <th>操作</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>2022-12-19</td>
                            <td>早班 09:00-12:00</td>
                            <td>收银员</td>
                            <td>105</td>
                            <td>待确定</td>
                            <td>赵恒</td>
                            <td>张志华</td>
                            <td>
                                <button class="btn_queren">确认抢班</button>
                                <button class="btn_2" onclick="window.location.href='snatch-employees-form.jsp'">查看详情</button>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>2022-12-19</td>
                            <td>晚班 18:00-22:00</td>
                            <td>导购</td>
                            <td>140</td>
                            <td>待确定</td>
                            <td>王宇</td>
                            <td>--</td>
                            <td>
                                <button class="btn_queren">确认抢班</button>
                                <button class="btn_2" onclick="window.location.href='snatch-employees-form.jsp'">查看详情</button>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>2022-12-20</td>
                            <td>晚班 18:00-22:00</td>
                            <td>收银员</td>
                            <td>140</td>
                            <td>待确认</td>
                            <td>钱明</td>
                            <td>--</td>
                            <td>
                                <button class="btn_queren">确认抢班</button>
                                <button class="btn_2" onclick="window.location.href='snatch-employees-form.jsp'">查看详情</button>
                            </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>2022-12-19</td>
                            <td>午班 13:00-17:00</td>
                            <td>收银员</td>
                            <td>140</td>
                            <td>抢班中</td>
                            <td>陆虹妹</td>
                            <td>--</td>
                            <td>
                                <button class="btn_jieshu_1">结束抢班</button>
                                <button class="btn_2" onclick="window.location.href='snatch-employees-form.jsp'">查看详情</button>
                            </td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>2022-12-20</td>
                            <td>早班 09:00-12:00</td>
                            <td>导购</td>
                            <td>1</td>
                            <td>120%</td>
                            <td>抢班中</td>
                            <td>--</td>
                            <td>
                                <button class="btn_jieshu_1">结束抢班</button>
                                <button class="btn_2" onclick="window.location.href='snatch-employees-form.jsp'">查看详情</button>
                            </td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>2022-12-18</td>
                            <td>早班 09:00-12:00</td>
                            <td>导购</td>
                            <td>105</td>
                            <td>已结束</td>
                            <td>廖丽君</td>
                            <td>王铭</td>
                            <td>
                                <button class="btn_jieshu_2">结束抢班</button>
                                <button class="btn_2" onclick="window.location.href='snatch-employees-form.jsp'">查看详情</button>
                            </td>
                        </tr>
                    </table>
                    <script>
                        var button = document.getElementById('myButton');

                        button.addEventListener('click', function() {
                            window.open('form/fixrule-form.jsp', '_blank');
                        });
                    </script>
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

