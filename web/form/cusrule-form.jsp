
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>表单</title>
    <link rel="stylesheet" href="../css/fixrule-form-style.css">
</head>
<body>
<div class="tab-container">
    <div class="tab-nav">
        <button class="tab-button active" onclick="changeTab(0)">营业时间</button>
        <button class="tab-button" onclick="changeTab(1)">工时规定</button>
        <button class="tab-button" onclick="changeTab(2)">休息时段</button>
        <button class="tab-button" onclick="changeTab(3)">技能选择</button>
        <button class="tab-button" onclick="changeTab(4)">岗位规定</button>
        <button class="tab-button" onclick="changeTab(5)">员工人数</button>
        <button class="tab-button" onclick="changeTab(6)">员工偏好</button>
    </div>
    <div class="tab-content">
        <div class="option1">
            <div class="container">
                <div class="row">
                    <div class="item">
                        <label for="text1">营业时间：</label>
                        <input type="text" name="text1" id="text1">
                        <label for="text2">---</label>
                        <input type="text" name="text2" id="text2">
                    </div>
                    <div class="item">
                        <label for="selectBox1">特殊事项1：</label>
                        <select id="selectBox1" name="selectBox1">
                            <option value="option1">选项1</option>
                            <option value="option2">选项2</option>
                            <option value="option3">选项3</option>
                        </select>
                        <label for="text3">具体时间：</label>
                        <input type="text" name="text3" id="text3">
                        <label for="text4">---</label>
                        <input type="text" name="text4" id="text4">
                    </div>
                </div>
                <div class="row">
                    <div class="item">
                        <label for="selectBox2">特殊事项1：</label>
                        <select id="selectBox2" name="selectBox2">
                            <option value="option1">选项1</option>
                            <option value="option2">选项2</option>
                            <option value="option3">选项3</option>
                        </select>
                        <label for="text5">具体时间：</label>
                        <input type="text" name="text5" id="text5">
                        <label for="text6">---</label>
                        <input type="text" name="text6" id="text6">
                    </div>
                    <div class="item">
                        <label for="selectBox3">特殊事项1：</label>
                        <select id="selectBox3" name="selectBox3">
                            <option value="option1">选项1</option>
                            <option value="option2">选项2</option>
                            <option value="option3">选项3</option>
                        </select>
                        <label for="text7">具体时间：</label>
                        <input type="text" name="text7" id="text7">
                        <label for="text8">---</label>
                        <input type="text" name="text8" id="text8">
                    </div>
                </div>
            </div>
        </div>
        <div class="option2" style="display: none;">
            <div class="container">
                <div class="row">
                    <div class="item">
                        <label for="text9">员工每日工作时长：</label>
                        <input type="text" name="text9" id="text9">
                        <label for="text10">---</label>
                        <input type="text" name="text10" id="text10">
                    </div>
                    <div class="item">
                        <label for="text11">员工每周工作时长：</label>
                        <input type="text" name="text11" id="text11">
                        <label for="text12">---</label>
                        <input type="text" name="text12" id="text12">
                    </div>
                </div>
                <div class="row">
                    <div class="item">
                        <label for="text13">员工每月工作时长：</label>
                        <input type="text" name="text13" id="text13">
                        <label for="text14">---</label>
                        <input type="text" name="text14" id="text14">
                    </div>
                    <div class="item">
                        <label for="text15">员工持续工作时长：</label>
                        <input type="text" name="text15" id="text15">
                        <label for="text16">---</label>
                        <input type="text" name="text16" id="text16">
                    </div>
                </div>
                <div class="row">
                    <div class="item">
                        <label for="text17">单个班次持续时长：</label>
                        <input type="text" name="text17" id="text17">
                        <label for="text18">---</label>
                        <input type="text" name="text18" id="text18">
                    </div>
                    <div class="item">
                        <label for="text19">连续班次间隔时长：</label>
                        <input type="text" name="text19" id="text19">
                        <label for="text20">---</label>
                        <input type="text" name="text20" id="text20">
                    </div>
                </div>
                <div class="row">
                    <div class="item">
                        <label for="text21">员工一周工时差值：</label>
                        <input type="text" name="text21" id="text21">
                        <label for="text22">---</label>
                        <input type="text" name="text22" id="text22">
                    </div>
                </div>
            </div>


        </div>
        <div class="option3" style="display: none;">
            <div class="container">
                <div class="row">
                    <div class="item">
                        <label for="text23">员工每周休息天数：</label>
                        <input type="text" name="text23" id="text23">
                        <label for="text24">---</label>
                        <input type="text" name="text24" id="text24">
                    </div>
                    <div class="item">
                        <label for="text25">员工每月休息天数：</label>
                        <input type="text" name="text25" id="text25">
                        <label for="text26">---</label>
                        <input type="text" name="text26" id="text26">
                    </div>
                </div>
                <div class="row">
                    <div class="item">
                        <label for="text27">员工单次休息时长：</label>
                        <input type="text" name="text27" id="text27">
                        <label for="text28">---</label>
                        <input type="text" name="text28" id="text28">
                    </div>
                    <div class="item">
                        <label for="text29">午餐时间：</label>
                        <input type="text" name="text29" id="text29">
                        <label for="text30">---</label>
                        <input type="text" name="text30" id="text30">
                    </div>
                </div>
                <div class="row">
                    <div class="item">
                        <label for="text31">晚餐时间：</label>
                        <input type="text" name="text31" id="text31">
                        <label for="text32">---</label>
                        <input type="text" name="text32" id="text32">
                    </div>
                    <div class="item">
                        <label for="selectBox4">特殊休息事件：</label>
                        <select id="selectBox4" name="selectBox4">
                            <option value="option1">选项1</option>
                            <option value="option2">选项2</option>
                            <option value="option3">选项3</option>
                        </select>
                        <label for="text33">具体时间：</label>
                        <input type="text" name="text33" id="text33">
                        <label for="text34">---</label>
                        <input type="text" name="text34" id="text34">
                    </div>
                </div>
            </div>


        </div>
        <div class="option4" style="display: none;">
            <label for="selectBox5">决策能力：</label>
            <select id="selectBox5" name="selectBox5">
                <option value="option1">选项1</option>
                <option value="option2">选项2</option>
                <option value="option3">选项3</option>
            </select>
            <label for="selectBox6">执行能力：</label>
            <select id="selectBox6" name="selectBox6">
                <option value="option1">选项1</option>
                <option value="option2">选项2</option>
                <option value="option3">选项3</option>
            </select>
            <label for="selectBox7">管理能力：</label>
            <select id="selectBox7" name="selectBox7">
                <option value="option1">选项1</option>
                <option value="option2">选项2</option>
                <option value="option3">选项3</option>
            </select>
            <label for="selectBox8">IT能力：</label>
            <select id="selectBox8" name="selectBox8">
                <option value="option1">选项1</option>
                <option value="option2">选项2</option>
                <option value="option3">选项3</option>
            </select>
        </div>
        <div class="option5" style="display: none;">
            <label for="select-options">规定岗位选择：</label>
            <select id="select-options" multiple>
                <option value="option1">选项1</option>
                <option value="option2">选项2</option>
                <option value="option3">选项3</option>
            </select>
        </div>
        <div class="option6" style="display: none;">
            <div class="row">
                <div class="item">
                    <label for="toggle-button">开启/关闭：</label>
                    <input type="checkbox" id="toggle-button">
                    <label for="text35">预测客流：</label>
                    <input type="text" name="text35" id="text35">
                    <label for="text36">/</label>
                    <input type="text" name="text36" id="text36">
                </div>
                <div class="item">
                    <label for="toggle-button">开启/关闭：</label>
                    <input type="checkbox" id="toggle-button1">
                    <label for="text37">门店面积：</label>
                    <input type="text" name="text37" id="text37">
                    <label for="text38">/</label>
                    <input type="text" name="text38" id="text38">
                </div>
            </div>
        </div>
        <div class="option7" style="display: none;">
            <select id="selectBox10" name="selectBox10">
                <option value="option1">选项1</option>
                <option value="option2">选项2</option>
                <option value="option3">选项3</option>
            </select>
            <label for="text39">工时要求：</label>
            <input type="text" name="text39" id="text39">
            <label for="text40">---</label>
            <input type="text" name="text40" id="text40">
            <br>
            <h6>可接受的班次安排：</h6>
            <br>
            <label>
                <input type="checkbox" name="field1" value="Field 1">
                工作日早班
            </label>
            <label>
                <input type="checkbox" name="field2" value="Field 2">
                工作日午班
            </label>
            <label>
                <input type="checkbox" name="field3" value="Field 3">
                工作日晚班
            </label>
            <label>
                <input type="checkbox" name="field4" value="Field 4">
                周末早班
            </label>
            <label>
                <input type="checkbox" name="field5" value="Field 5">
                周末午班
            </label>
            <label>
                <input type="checkbox" name="field6" value="Field 6">
                周末晚班
            </label>

            <br>
            <h6>可接受的工作日：</h6>
            <br>
            <label>
                <input type="checkbox" name="field1" value="Field 1">
                周一
            </label>
            <label>
                <input type="checkbox" name="field2" value="Field 2">
                周二
            </label>
            <label>
                <input type="checkbox" name="field3" value="Field 3">
                周三
            </label>
            <label>
                <input type="checkbox" name="field4" value="Field 4">
                周四
            </label>
            <label>
                <input type="checkbox" name="field5" value="Field 5">
                周五
            </label>
            <label>
                <input type="checkbox" name="field6" value="Field 6">
                周六
            </label>
            <label>
                <input type="checkbox" name="field7" value="Field 7">
                周日
            </label>
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
        tabContents[index].style.display = 'block';
        tabButtons[index].classList.add('active');
    }
    var toggleButton = document.getElementById("toggle-button");
    toggleButton.addEventListener("change", function() {
        if (this.checked) {
            console.log("按钮已开启");
        } else {
            console.log("按钮已关闭");
        }
    });
    var toggleButton1 = document.getElementById("toggle-button1");
    toggleButton1.addEventListener("change", function() {
        if (this.checked) {
            console.log("按钮已开启");
        } else {
            console.log("按钮已关闭");
        }
    });
</script>
<input type="submit" value="提交">
</body>
</html>
