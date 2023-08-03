
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
    <title>工时统计</title>
    <link rel="stylesheet" href="css/tab-style.css">
    <link rel="stylesheet" href="css/sto-tab-style.css">
    <link rel="stylesheet" type="text/css" href="css/table-style.css">
    <link rel="stylesheet" href="css/overall.css">
    <link rel="stylesheet" href="css/sche.css">
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
                <a href="sche-dule.jsp">排班详情</a>
                <a href="sche-sta.jsp">班次统计</a>
                <a href="sche-work.jsp" class="act">工时统计</a>
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
                <div class="table-nav">
                    <input type="text" placeholder="输入员工姓名" />
                </div>
                <div class="table-sto">
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>员工姓名</th>
                            <th>工号</th>
                            <th>岗位</th>
                            <th>日工时</th>
                            <th>周工时</th>
                            <th>月工时</th>
                            <th>操作</th>
                        </tr>
                        <% for (Staff staff : staffList) { %>
                        <tr>
                            <td><%= staff.getId()%></td>
                            <td><%= staff.getName() %></td>
                            <td><%= "2022013045" + staff.getId() %></td>
                            <td><%= staff.getPosition() %></td>
                            <%
                                java.util.Random random = new java.util.Random();
                                int randomNumber1 = random.nextInt(8); // 生成0到10的随机整数
                                int randomNumber2=20+random.nextInt(15);
                                int randomNumber3=80+random.nextInt(30);
                            %>
                            <td><%= randomNumber1 %></td>
                            <td><%= randomNumber2 %></td>
                            <td><%= randomNumber3 %></td>
                            <td>
                                <button class="edit" onclick="window.location.href='form/stf-form.jsp'">编辑</button>
                                <button class="delete">删除</button>
                            </td>
                        </tr>
                        <% } %>
                        <tr>
                            <td>2</td>
                            <td>李明</td>
                            <td>20221215002</td>
                            <td>门店副经理</td>
                            <td>3</td>
                            <td>21</td>
                            <td>87</td>
                            <td>
                                <button class="edit">编辑</button>
                                <button class="delete">删除</button>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>王一庭</td>
                            <td>20221215003</td>
                            <td>导购</td>
                            <td>3</td>
                            <td>12</td>
                            <td>87</td>
                            <td>
                                <button class="edit">编辑</button>
                                <button class="delete">删除</button>
                            </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>张芳菲</td>
                            <td>20221215004</td>
                            <td>导购</td>
                            <td>3</td>
                            <td>21</td>
                            <td>87</td>
                            <td>
                                <button class="edit">编辑</button>
                                <button class="delete">删除</button>
                            </td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>唐子珊</td>
                            <td>20221215005</td>
                            <td>收银员</td>
                            <td>3</td>
                            <td>21</td>
                            <td>86</td>
                            <td>
                                <button class="edit">编辑</button>
                                <button class="delete">删除</button>
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

