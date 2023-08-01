
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>考勤管理</title>
    <link rel="stylesheet" href="css/tab-style.css">
    <link rel="stylesheet" href="css/sto-tab-style.css">
    <link rel="stylesheet" href="css/overall.css">
    <link rel="stylesheet" href="css/atd-style.css">
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
            <div id="tab-day" class="tab-content active">
                <a href="atd-manage.jsp" class="act">考勤管理</a>
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
        <h5>日常管理>考勤管理</h5>
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
            <div class="tab-container">
                <div class="tab-nav">
                    <button class="tab-button active" onclick="changeTab(0)">日考勤表</button>
                    <button class="tab-button" onclick="changeTab(1)">月考勤表</button>
                </div>
                <div class="tab-content">
                    <div class="option1">
                        <div class="table-container">
                            <h3 class="time">2022年12月15日</h3>
                            <div class="table-sto">
                                <table>
                                    <tr>
                                        <th>ID</th>
                                        <th>姓名</th>
                                        <th>员工工号</th>
                                        <th>岗位</th>
                                        <th>打卡时间</th>
                                        <th>工时</th>
                                        <th>打卡结果</th>
                                        <th>操作</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>王芳</td>
                                        <td>20221215001</td>
                                        <td>门店经理</td>
                                        <td>08:35:33</td>
                                        <td>183分钟</td>
                                        <td>正常</td>
                                        <td>
                                            <button class="edit">编辑</button>
                                            <button class="delete">删除</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>欧阳静</td>
                                        <td>20221215011</td>
                                        <td>导购</td>
                                        <td>08:50:46</td>
                                        <td>186分钟</td>
                                        <td>正常</td>
                                        <td>
                                            <button class="edit">编辑</button>
                                            <button class="delete">删除</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>唐子珊</td>
                                        <td>20221215005</td>
                                        <td>收银员</td>
                                        <td>08:46:35</td>
                                        <td>191分钟</td>
                                        <td>正常</td>
                                        <td>
                                            <button class="edit">编辑</button>
                                            <button class="delete">删除</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>赵乾明</td>
                                        <td>20221215006</td>
                                        <td>库房管理员</td>
                                        <td>08:48:05</td>
                                        <td>188分钟</td>
                                        <td>正常</td>
                                        <td>
                                            <button class="edit">编辑</button>
                                            <button class="delete">删除</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>王一庭</td>
                                        <td>20221215003</td>
                                        <td>导购</td>
                                        <td>12:46:06</td>
                                        <td>249分钟</td>
                                        <td>正常</td>
                                        <td>
                                            <button class="edit">编辑</button>
                                            <button class="delete">删除</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>周笙笙</td>
                                        <td>20221215008</td>
                                        <td>库房管理员</td>
                                        <td>13:01:56</td>
                                        <td>254分钟</td>
                                        <td>迟到</td>
                                        <td>
                                            <button class="edit">编辑</button>
                                            <button class="delete">删除</button>
                                        </td>
                                    </tr>
                                </table>

                                <script>
                                    var button = document.getElementById('myButton');

                                    button.addEventListener('click', function() {
                                        window.open('form/sto-form.jsp', '_blank');
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="option2" style="display: none;">
                        <div class="table-container">
                            <h3 class="time">2022年12月</h3>
                            <div class="table-sto">
                                <table>
                                    <tr>
                                        <th>ID</th>
                                        <th>姓名</th>
                                        <th>员工工号</th>
                                        <th>岗位</th>
                                        <th>出勤</th>
                                        <th>缺勤</th>
                                        <th>请假</th>
                                        <th>迟到</th>
                                        <th>操作</th>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>王芳</td>
                                        <td>20221215001</td>
                                        <td>门店经理</td>
                                        <td>14/26</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>
                                            <button class="edit">编辑</button>
                                            <button class="delete">删除</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>欧阳静</td>
                                        <td>20221215011</td>
                                        <td>导购</td>
                                        <td>14/26</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>
                                            <button class="edit">编辑</button>
                                            <button class="delete">删除</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>唐子珊</td>
                                        <td>20221215005</td>
                                        <td>收银员</td>
                                        <td>14/26</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>
                                            <button class="edit">编辑</button>
                                            <button class="delete">删除</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>赵乾明</td>
                                        <td>20221215006</td>
                                        <td>库房管理员</td>
                                        <td>14/26</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>
                                            <button class="edit">编辑</button>
                                            <button class="delete">删除</button>
                                        </td>
                                    </tr>
                                </table>

                                <!-- <button id="myButton1">编辑</button> -->
                                <script>
                                    var button = document.getElementById('myButton1');

                                    button.addEventListener('click', function() {
                                        window.open('form/sto-form.jsp', '_blank');
                                    });
                                </script>
                            </div>
                        </div>
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
<script>
    // 获取选项卡按钮和选项卡内容元素
    var tabButtons = document.querySelectorAll('.tab-button');
    var tabContents = document.querySelectorAll('.tab-content > div');
    tabButtons[0].classList.add('active');
    tabContents[0].style.display = 'block';

    // 切换选项卡
    function changeTab(index) {
        // 隐藏所有选项卡内容
        for (var i = 0; i < tabContents.length; i++) {
            tabContents[i].style.display = 'none';
        }
        // 移除所有按钮的 active 类
        for (var i = 0; i < tabButtons.length; i++) {
            tabButtons[i].classList.remove('active');
        }
        // 显示选中的选项卡内容，给选中的按钮添加 active 类
        tabContents[index].style.display = 'block';
        tabButtons[index].classList.add('active');
    }

    function btn_fun1() {
        console.log("按钮1被点击了");
    }

    function btn_fun2() {
        console.log("按钮2被点击了");
    }

</script>
</body>
</html>

