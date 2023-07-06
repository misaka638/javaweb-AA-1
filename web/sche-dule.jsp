<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>排班表</title>
    <link rel="stylesheet" href="css/sche-dule-style.css">
</head>
<body>
<div class="tab-container">
    <div class="tab-nav">
        <button class="tab-button active" onclick="changeTab(0)">日排班表</button>
        <button class="tab-button" onclick="changeTab(1)">周排班表</button>
    </div>
    <div class="tab-content">
        <div class="option1">
            <button onclick="btn_fun1()">按班次排</button>
            <button onclick="btn_fun2()">按岗位排</button>
            <br>
            <div class="table-container">
                <div class="table-sto">
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>员工姓名</th>
                            <th>工号</th>
                            <th>岗位</th>
                            <th>性别</th>
                            <th>联系电话</th>
                            <th>电子邮箱</th>
                            <th>状态</th>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>张三</td>
                            <td>张三</td>
                            <td>2sffs</td>
                            <td>d</td>
                            <td>18883993</td>
                            <td>253241414@hh.com</td>
                            <td>营业中</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="option2" style="display: none;">
            <table class="table1">
                <tr>
                    <th>周一</th>
                    <th>周二</th>
                    <th>周三</th>
                    <th>周四</th>
                    <th>周五</th>
                    <th>周六</th>
                    <th>周日</th>
                </tr>

                <%
                    int daysInMonth = 31; // 假设当前月份有31天
                    int currentDay = 1; // 当前日期
                    int dayOfWeek = 1; // 当前日期的星期几，1表示周一
                    int rows = (daysInMonth + dayOfWeek - 2) / 7 + 1; // 计算总行数

                    for (int i = 0; i < rows; i++) { %>
                <tr>
                    <% for (int j = 1; j <= 7; j++) { %>
                    <td>
                        <% if (dayOfWeek > 1 && currentDay <= daysInMonth) { %>
                        <div class="date"><%= currentDay %>
                        </div>
                        <div class="content">
                            Line 1<br>
                        </div>
                        <% currentDay++; %>
                        <% } %>
                    </td>
                    <% dayOfWeek++; %>
                    <% } %>
                </tr>
                <% } %>
            </table>
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
