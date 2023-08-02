<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>固定规则表单</title>
    <link rel="stylesheet" href="../css/tab-style.css">
    <link rel="stylesheet" href="../css/sto-tab-style.css">
    <link rel="stylesheet" type="text/css" href="../css/table-style.css">
    <link rel="stylesheet" href="../css/overall.css">
    <link rel="stylesheet" href="../css/fixrule-form-style.css">
</head>
<body>
<div class="title">
    <img src="../media/logo.png" alt="">
    <h1>智能排班系统</h1>
</div>
<div class="main">
    <div class="tab">
        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="../media/navigation bar/shouye-xianxing.png" alt="">
                <a href="../mainpage.jsp">首页</a>
            </div>
        </div>

        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="../media/navigation bar/rili.png" alt="">
                <a href="#" onclick="toggleTabs(event, 'tab-reu')">排班管理</a>
            </div>
            <div id="tab-reu" class="tab-content active">
                <a href="../fixrule-manage.jsp" class="act">固定规则</a>
                <a href="../cusrule-manage.jsp">自定义规则</a>
            </div>
        </div>

        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="../media/navigation bar/tiaoxingtu-xianxing.png" alt="">
                <a href="#" onclick="toggleTabs(event, 'tab-sch')">排班统计</a>
            </div>
            <div id="tab-sch" class="tab-content">
                <a href="../sche-cal.jsp">排班日历</a>
                <a href="../sche-dule.jsp">排班详情</a>
                <a href="../sche-sta.jsp">班次统计</a>
                <a href="../sche-work.jsp">工时统计</a>
            </div>
        </div>
        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="../media/navigation bar/tiaoxingtu-xianxing.png" alt="">
                <a href="#" onclick="toggleTabs(event, 'tab-sna')">抢班管理</a>
            </div>
            <div id="tab-sna" class="tab-content">
                <a href="../snatch-enterprise.jsp">企业抢班</a>
                <a href="../snatch-employees.jsp">员工抢班</a>
            </div>
        </div>
        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="../media/navigation bar/ziyuan-xianxing.png" alt="">
                <a href="#" onclick="toggleTabs(event, 'tab-day')">日常管理</a>
            </div>
            <div id="tab-day" class="tab-content">
                <a href="../atd-manage.jsp">考勤管理</a>
                <a href="../apr-manage.jsp">审批管理</a>
            </div>
        </div>
        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="../media/navigation bar/zuzhijiagoujiekou.png" alt="">
                <a href="#" onclick="toggleTabs(event, 'tab-sto')">组织管理</a>
            </div>
            <div id="tab-sto" class="tab-content">
                <a href="../sto-manage.jsp">门店管理</a>
                <a href="../stf-manage.jsp">员工管理</a>
            </div>
        </div>
        <div class="tab-lst">
            <div class="tab-lst-tl">
                <img src="../media/navigation bar/leidatance.png" alt="">
                <a href="../bus-forecast.jsp">业务预测</a>
            </div>
        </div>
    </div>
    <div class="bd">
        <h5>排版规则管理 > 固定规则 > 编辑</h5>
        <div class="details">
            <div class="tab-container">
                <div class="tab-nav">
                    <button class="tab-button active" onclick="changeTab(0)">营业时间</button>
                    <button class="tab-button" onclick="changeTab(1)">工时规定</button>
                    <button class="tab-button" onclick="changeTab(2)">休息时段</button>
                </div>
                <div class="tab-content">
                    <div class="option1">
                        <h4>门店营业时间：</h4>
                        <label>
                            <input type="radio" name="option" value="option1">
                            周一 ~ 周五：
                            <div class="option-content">
                                <input type="time" name="input1" id="input1" value="9:00">
                                <label for="input2">——</label>
                                <input type="time" name="input2" id="input2" value="21:00">
                            </div>
                        </label>

                        <label>
                            <input type="radio" name="option" value="option2">
                            周六 ~ 周日：
                            <div class="option-content">
                                <input type="time" name="text1" value="10:00">
                                <label for="input2">——</label>
                                <input type="time" name="input2" value="22:00">
                            </div>

                        </label>
                    </div>
                    <div class="option2" style="display: none;">
                        <div class="container">
                            <div class="row">
                                <div class="item">
                                    <label for="text2">员工每日工作时长：</label>
                                    <input type="number" name="text2" id="text2" value="4"> 小时
                                    <label for="text3">---</label>
                                    <input type="number" name="text3" id="text3" value="8"> 小时
                                </div>
                                <div class="item">
                                    <label for="text4">员工每周工作时长：</label>
                                    <input type="number" name="text4" id="text4" value="20"> 小时
                                    <label for="text5">---</label>
                                    <input type="number" name="text5" id="text5" value="40"> 小时
                                </div>
                            </div>
                            <div class="row">
                                <div class="item">
                                    <label for="text6">员工每月工作时长：</label>
                                    <input type="number" name="text6" id="text6" value="80"> 小时
                                    <label for="text7">---</label>
                                    <input type="number" name="text7" id="text7" value="160"> 小时
                                </div>
                                <div class="item">
                                    <label for="text8">员工持续工作时长：</label>
                                    <input type="number" name="text8" id="text8" value="2"> 小时
                                    <label for="text9">---</label>
                                    <input type="number" name="text9" id="text9" value="4"> 小时
                                </div>
                            </div>
                            <div class="row">
                                <div class="item">
                                    <label for="text10">单个班次持续时长：</label>
                                    <input type="number" name="text10" id="text10" value="2"> 小时
                                    <label for="text11">---</label>
                                    <input type="number" name="text11" id="text11" value="4"> 小时
                                </div>
                                <div class="item">
                                    <label for="text12">连续班次间隔时长：</label>
                                    <input type="number" name="text12" id="text12" value="0"> 小时
                                    <label for="text13">---</label>
                                    <input type="number" name="text13" id="text13" value="1"> 小时
                                </div>
                            </div>
                            <div class="row">
                                <div class="item">
                                    <label for="text14">员工一周工时差值：</label>
                                    <input type="number" name="text14" id="text14" value="0"> 小时
                                    <label for="text15">---</label>
                                    <input type="number" name="text15" id="text15" value="2"> 小时
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="option3" style="display: none;">
                        <div class="container">
                            <div class="row">
                                <div class="item">
                                    <label for="text16">员工每周休息天数：</label>
                                    <input type="number" name="text16" id="text16" value="1"> 天
                                    <label for="text17">---</label>
                                    <input type="number" name="text17" id="text17" value="2"> 天
                                </div>
                                <div class="item">
                                    <label for="text18">员工每月休息天数：</label>
                                    <input type="number" name="text18" id="text18" value="4"> 天
                                    <label for="text19">---</label>
                                    <input type="number" name="text19" id="text19" value="8"> 天
                                </div>
                            </div>
                            <div class="row">
                                <div class="item">
                                    <label for="text20">员工单次休息时长：</label>
                                    <input type="number" name="text20" id="text20" value="30"> 分钟
                                    <label for="text21">---</label>
                                    <input type="number" name="text21" id="text21" value="60"> 分钟
                                </div>

                            </div>
                            <h4>固定休息时间：</h4>
                            <div class="row">
                                <div class="item">
                                    <label for="text22">午餐时间：</label>
                                    <input type="time" name="text22" id="text22" value="12:00">
                                    <label for="text23">---</label>
                                    <input type="time" name="text23" id="text23" value="13:00">
                                </div>
                            </div>
                            <div class="row">
                                <div class="item">
                                    <label for="text24">晚餐时间：</label>
                                    <input type="time" name="text24" id="text24" value="17:00">
                                    <label for="text25">---</label>
                                    <input type="time" name="text25" id="text25" value="18:00">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="btn">
                    <input type="submit" value="提交" onclick="window.location.href='../fixrule-manage.jsp'">
                    <input type="button" value="取消" onclick="window.location.href='../fixrule-manage.jsp'" onclick="cancelForm()">
                    <script>
                        function cancelForm() {
                            // 重置表单字段
                            document.getElementById("name").value = "";
                            document.getElementById("email").value = "";

                            // 关闭当前页面
                            window.close();
                        }
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

    // 初始化，显示第一个选项卡内容，给第一个按钮添加 active 类
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
</script>
</body>
</html>

