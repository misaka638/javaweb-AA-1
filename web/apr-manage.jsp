
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>审批管理</title>
    <link rel="stylesheet" href="css/tab-style.css">
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
                <a href="atd-manage.jsp">考勤管理</a>
                <a href="apr-manage.jsp" class="act">审批管理</a>
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
        <h5>日常管理 > 审批管理</h5>
        <div class="details">
            <div class="table-container">
                <div class="table-sto">
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>审批类型</th>
                            <th>发起人</th>
                            <th>审批内容</th>
                            <th>发起时间</th>
                            <th>审批状态</th>
                            <th>状态</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>请假审批</td>
                            <td>张三</td>
                            <td>
                                请假理由：生病
                                <a href="apr-form.jsp">查看详情</a>
                            </td>
                            <td>2022-12-15 08:35:23</td>
                            <td>审批中</td>
                            <td>
                                <button class="edit">同意</button>
                                <button class="delete">拒绝</button>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>请假审批</td>
                            <td>王新宇</td>
                            <td>
                                请假理由：家中有事，请假回家
                                <a href="apr-form.jsp">查看详情</a>
                            </td>
                            <td>2022-12-16 08:46:48</td>
                            <td>审批中</td>
                            <td>
                                <button class="edit">同意</button>
                                <button class="delete">拒绝</button>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>请假审批</td>
                            <td>张三</td>
                            <td>
                                请假理由：生病
                                <a href="apr-form.jsp">查看详情</a>
                            </td>
                            <td>2022-12-15 08:35:23</td>
                            <td>审批中</td>
                            <td>
                                <button class="edit">同意</button>
                                <button class="delete">拒绝</button>
                            </td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>请假审批</td>
                            <td>吴子浩</td>
                            <td>
                                请假理由：发烧，身体不适
                                <a href="apr-form.jsp">查看详情</a>
                            </td>
                            <td>2022-12-16 10:48:20</td>
                            <td>审批中</td>
                            <td>
                                <button class="edit">同意</button>
                                <button class="delete">拒绝</button>
                            </td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>辞职审批</td>
                            <td>唐媛媛</td>
                            <td>
                                辞职原因：个人原因，不能胜任
                                <a href="apr-form.jsp">查看详情</a>
                            </td>
                            <td>2022-12-16 12:46:13</td>
                            <td>审批中</td>
                            <td>
                                <button class="edit">同意</button>
                                <button class="delete">拒绝</button>
                            </td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>辞职审批</td>
                            <td>刘永林</td>
                            <td>
                                辞职原因：去外地发展
                                <a href="apr-form.jsp">查看详情</a>
                            </td>
                            <td>2022-12-17 14:01:58</td>
                            <td>审批中</td>
                            <td>
                                <button class="edit">同意</button>
                                <button class="delete">拒绝</button>
                            </td>
                        </tr>
                    </table>

                    <script>
                        var button = document.getElementById('myButton');

                        button.addEventListener('click', function() {
                            window.open('form/apr-form.jsp', '_blank');
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
</body>
</html>

