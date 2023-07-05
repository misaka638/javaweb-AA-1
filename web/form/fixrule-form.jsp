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
    </div>
    <div class="tab-content">
        <div class="option1">
            <h6>门店营业时间</h6>
            <label>
                <input type="radio" name="option" value="option1">
                周一~周五：
                <div class="option-content">
                    <input type="number" name="input1" id="input1">
                    <label for="input2">——</label>
                    <input type="number" name="input2" id="input2">
                </div>
            </label>

            <label>
                <input type="radio" name="option" value="option2">
                周六周日：
                <div class="option-content">
                    <input type="text" name="text1">
                    <label for="input2">——</label>
                    <input type="number" name="input2">
                </div>

            </label>

        </div>
        <div class="option2" style="display: none;">
            <div class="container">
                <div class="row">
                    <div class="item">
                        <label for="text2">员工每日工作时长：</label>
                        <input type="text" name="text2" id="text2">
                        <label for="text3">---</label>
                        <input type="text" name="text3" id="text3">
                    </div>
                    <div class="item">
                        <label for="text4">员工每周工作时长：</label>
                        <input type="text" name="text4" id="text4">
                        <label for="text5">---</label>
                        <input type="text" name="text5" id="text5">
                    </div>
                </div>
                <div class="row">
                    <div class="item">
                        <label for="text6">员工每月工作时长：</label>
                        <input type="text" name="text6" id="text6">
                        <label for="text7">---</label>
                        <input type="text" name="text7" id="text7">
                    </div>
                    <div class="item">
                        <label for="text8">员工持续工作时长：</label>
                        <input type="text" name="text8" id="text8">
                        <label for="text9">---</label>
                        <input type="text" name="text9" id="text9">
                    </div>
                </div>
                <div class="row">
                    <div class="item">
                        <label for="text10">单个班次持续时长：</label>
                        <input type="text" name="text10" id="text10">
                        <label for="text11">---</label>
                        <input type="text" name="text11" id="text11">
                    </div>
                    <div class="item">
                        <label for="text12">连续班次间隔时长：</label>
                        <input type="text" name="text12" id="text12">
                        <label for="text13">---</label>
                        <input type="text" name="text13" id="text13">
                    </div>
                </div>
                <div class="row">
                    <div class="item">
                        <label for="text14">员工一周工时差值：</label>
                        <input type="text" name="text14" id="text14">
                        <label for="text15">---</label>
                        <input type="text" name="text15" id="text15">
                    </div>
                </div>
            </div>


        </div>
        <div class="option3" style="display: none;">
            <div class="container">
                <div class="row">
                    <div class="item">
                        <label for="text16">员工每周休息天数：</label>
                        <input type="text" name="text16" id="text16">
                        <label for="text17">---</label>
                        <input type="text" name="text17" id="text17">
                    </div>
                    <div class="item">
                        <label for="text18">员工每月休息天数：</label>
                        <input type="text" name="text18" id="text18">
                        <label for="text19">---</label>
                        <input type="text" name="text19" id="text19">
                    </div>
                </div>
                <div class="row">
                    <div class="item">
                        <label for="text20">员工单次休息时长：</label>
                        <input type="text" name="text20" id="text20">
                        <label for="text21">---</label>
                        <input type="text" name="text21" id="text21">
                    </div>
                    <div class="item">
                        <label for="text22">午餐时间：</label>
                        <input type="text" name="text22" id="text22">
                        <label for="text23">---</label>
                        <input type="text" name="text23" id="text23">
                    </div>
                </div>
                <div class="row">
                    <div class="item">
                        <label for="text24">晚餐时间：</label>
                        <input type="text" name="text24" id="text24">
                        <label for="text25">---</label>
                        <input type="text" name="text25" id="text25">
                    </div>
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
<input type="submit" value="提交">
</body>
</html>
