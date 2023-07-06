
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>考勤管理</title>
    <%--<link rel="stylesheet" href="css/tab-style.css">--%>
    <link rel="stylesheet" href="css/sto-tab-style.css">
    <link rel="stylesheet" href="css/atd-style.css">
</head>
<body>
<div class="tab">
    <a href="#" onclick="toggleTabs(event, 'tab-sto')">组织管理</a>
    <div id="tab-sto" class="tab-content">
        <a href="sto-manage.jsp">门店管理</a>
        <a href="stf-manage.jsp">员工管理</a>
    </div>

    <a href="#" onclick="toggleTabs(event, 'about')">排班规则管理</a>
    <div id="tab-reu" class="tab-content">
        <!-- About Tab Content -->
    </div>

    <a href="#">排班表统计</a>

    <a href="#" onclick="toggleTabs(event, 'contact')">日常管理</a>
    <div id="tab-day" class="tab-content">
        <!-- Contact Tab Content -->
    </div>
    <a href="#">业务预测</a>
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
<div class="tab1">
    <a href="#" onclick="toggleTabs(event, 'sto-tab-hang')">杭州市门店</a>
    <div id="sto-tab-hang" class="tab-content">
        <a href="sto-manage.jsp">余杭区门店</a>
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
<div class="tab-container">
    <div class="tab-nav">
        <button class="tab-button active" onclick="changeTab(0)">日排班表</button>
        <button class="tab-button" onclick="changeTab(1)">周排班表</button>
    </div>
    <div class="tab-content">
        <div class="option1">
            <div class="table-container">
                <div class="table-sto">
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>门店名称</th>
                            <th>门店地址</th>
                            <th>面积</th>
                            <th>主管</th>
                            <th>员工数</th>
                            <th>修改人</th>
                            <th>修改时间</th>
                            <th>状态</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>张三</td>
                            <td>张三</td>
                            <td>2sffs</td>
                            <td>d</td>
                            <td>d</td>
                            <td>18883993</td>
                            <td>253241414@hh.com</td>
                            <td>营业中</td>
                        </tr>
                    </table>

                    <button id="myButton">编辑</button>
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
                <div class="table-sto">
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>门店名称</th>
                            <th>门店地址</th>
                            <th>面积</th>
                            <th>主管</th>
                            <th>员工数</th>
                            <th>修改人</th>
                            <th>修改时间</th>
                            <th>状态</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>张三</td>
                            <td>张三</td>
                            <td>2sffs</td>
                            <td>d</td>
                            <td>d</td>
                            <td>18883993</td>
                            <td>253241414@hh.com</td>
                            <td>营业中</td>
                        </tr>
                    </table>

                    <button id="myButton1">编辑</button>
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
        console.log("按钮1被点击了");
    }

    function btn_fun2() {
        console.log("按钮2被点击了");
    }

</script>
</body>
</html>
