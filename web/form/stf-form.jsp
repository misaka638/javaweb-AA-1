
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>员工管理表单</title>
    <link rel="stylesheet" href="css/str-form-style.css">
    <link rel="stylesheet" href="css/tab-style.css">
    <link rel="stylesheet" href="css/sto-tab-style.css">
    <link rel="stylesheet" href="css/table-style.css">
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
            <div id="tab-sto" class="tab-content active">
                <a href="sto-manage.jsp">门店管理</a>
                <a href="stf-manage.jsp" class="act">员工管理</a>
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
        <h5>组织管理>员工管理>编辑</h5>
        <div class="details">
            <div class="form">
                <form action="process-form.jsp" method="post">
                    <label for="name">姓名：</label>
                    <input type="text" id="name" name="name" required>
                    <br>
                    <label for="gender1">性别：</label>
                    <input type="radio" id="gender1" value="male"> 男性
                    <input type="radio" id="gender2" value="female"> 女性
                    <br>
                    <label for="number1">员工工号：</label>
                    <input type="text" id="number1" name="number1" required>
                    <br>
                    <label for="phone">联系电话：</label>
                    <input type="text" id="phone" name="phone" required>
                    <br>
                    <label for="email">电子邮箱：</label>
                    <input type="text" id="email" name="email" required>
                    <br>

                    <label for="store">工作门店：</label>
                    <select id="store" name="store" required>
                        <option value="1">门店1</option>
                        <option value="2">门店2</option>
                        <option value="3">门店3</option>
                    </select>
                    <br>
                    <label for="employee">岗位：</label>
                    <select id="employee" name="employee" required>
                        <option value="1">岗位1</option>
                        <option value="2">岗位2</option>
                        <option value="3">岗位3</option>
                    </select>
                    <br>
                    <label for="address">家庭住址：</label>
                    <input type="text" id="address" name="address" required>
                    <br>
                    <label for="els">其他备注：</label>
                    <input type="text" id="els" name="els" required>
                    <br>
                    <div class="btn">
                        <input type="submit" value="提交" onclick="window.location.href='stf-manage.jsp'">
                        <input type="button" value="取消" onclick="window.location.href='stf-manage.jsp'" onclick="cancelForm()">
                        <script>
                            function cancelForm() {
                                // 重置表单字段
                                document.getElementById("name").value = "";
                                document.getElementById("gender").value = "";
                                document.getElementById("number1").value = "";
                                document.getElementById("phone").value = "";
                                document.getElementById("email").value = "";
                                document.getElementById("store").value = "";
                                document.getElementById("employee").value = "";
                                document.getElementById("address").value = "";
                                document.getElementById("els").value = "";

                                // 关闭当前页面
                                window.close();
                            }
                        </script>
                    </div>
                </form>
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

