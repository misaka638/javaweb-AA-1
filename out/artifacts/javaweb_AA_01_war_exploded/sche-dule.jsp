<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="database.DatabaseInteraction"%>
<%@ page import="java.util.List" %>
<%@ page import="model.Staff" %>

<%
    DatabaseInteraction dbInteraction = new DatabaseInteraction();
    List<Staff> staffList = dbInteraction.queryData_staff_sto1();
    dbInteraction.closeConnection();
%>
<html>
<head>
    <title>排班详情</title>
    <!-- <link rel="stylesheet" href="css/atd-style.css"> -->
    <link rel="stylesheet" href="css/tab-style.css">
    <link rel="stylesheet" href="css/sto-tab-style.css">
    <link rel="stylesheet" type="text/css" href="css/table-style.css">
    <link rel="stylesheet" href="css/overall.css">
    <link rel="stylesheet" href="css/sche-dule-style.css">
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
                <a href="sche-cal.jsp">排班日历</a>
                <a href="sche-dule.jsp" class="act">排班详情</a>
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
        <h5>排班表统计 > 排班详情</h5>
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
                    <button class="tab-button active" onclick="changeTab(0)">日排班表</button>
                    <button class="tab-button" onclick="changeTab(1)">周排班表</button>
                </div>
                <div class="tab-content">
                    <div class="option1">
                        <div class="option1-hd">
                            <h3 class="time">2022年12月15日</h3>
                            <div class="btn">
                                <button onclick="btn_fun1()">按班次排</button>
                                <button onclick="btn_fun2()">按岗位排</button>
                            </div>
                        </div>
                        <div class="table-container">
                            <div class="table-sto">
                                <table>
                                    <tr>
                                        <th>ID</th>
                                        <th>班次</th>
                                        <th>工时</th>
                                        <th>岗位</th>
                                        <th>姓名</th>
                                        <th>员工工号</th>
                                        <th>状态</th>
                                        <th>操作</th>
                                    </tr>
                                            <% for (Staff staff : staffList) { %>
                                    <tr>
                                        <td><%= staff.getId()%></td>
                                        <td><%= staff.judge_assignedShifts()%></td>
                                        <td><%= staff.getEntileworktime() %></td>
                                        <td><%= staff.getPosition() %></td>
                                        <td><%= staff.getName() %></td>
                                        <td><%= "2022013045" + staff.getId() %></td>
                                        <td>
                                            <% if (!staff.getFlag_work()) { %>
                                            请假
                                            <% } else { %>
                                            在职
                                            <% } %>
                                        </td>
                                        <td>
                                            <button class="edit" onclick="btn_fun1()">编辑</button>
                                            <button class="delete">删除</button>
                                        </td>
                                    </tr>
                                    <% } %>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="option2" style="display: none;">
                        <div class="option2-hd">
                            <h3 class="time">2022年12月15日</h3>
                            <div class="btn-con">
                                <button class="btn" id="btn1">按班次排</button>
                                <button class="btn" id="btn2">按岗位排</button>
                            </div>
                        </div>
                        <div class="table-container">
                            <div id="image-container">
                                <img id="image1" src="media/sche/sche-dule-1.png" class="active">
                                <img id="image2" src="media/sche/sche-dule-2.png">
                            </div>
                        </div>
                        <script>
                            var btns = document.getElementsByClassName("btn");
                            var images = document.querySelectorAll("#image-container img");

                            for (var i = 0; i < btns.length; i++) {
                                btns[i].addEventListener("click", function() {
                                    var btnId = this.getAttribute("id");
                                    var imageId = btnId.replace("btn", "image");

                                    for (var j = 0; j < images.length; j++) {
                                        images[j].classList.remove("active");
                                    }

                                    document.getElementById(imageId).classList.add("active");
                                });
                            }
                        </script>
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
        //
        tabContents[index].style.display = 'block';
        tabButtons[index].classList.add('active');
    }

    function btn_fun1() {
        window.location.href = "form/stf-form.jsp";
        console.log("按钮1被点击了");
    }

    function btn_fun2() {
        console.log("按钮2被点击了");
    }
</script>
</body>
</html>

