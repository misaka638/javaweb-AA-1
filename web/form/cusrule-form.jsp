<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>自定义规则表单</title>
    <link rel="stylesheet" href="../css/cusrule-form-style.css">
    <link rel="stylesheet" href="../css/tab-style.css">
    <link rel="stylesheet" type="text/css" href="../css/table-style.css">
    <link rel="stylesheet" href="../css/overall.css">
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
                <a href="../fixrule-manage.jsp">固定规则</a>
                <a href="../cusrule-manage.jsp" class="act">自定义规则</a>
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
        <h5>排班规则管理 > 自定义规则 > 编辑</h5>
        <div class="details">
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
                                    <input type="time" name="text1" id="text1" value="9:00">
                                    <label for="text2">---</label>
                                    <input type="time" name="text2" id="text2" value="21:00">
                                </div>
                            </div>
                            <div class="row">
                                <div class="item">
                                    <label for="selectBox2">特殊事项1：</label>
                                    <select id="selectBox2" name="selectBox2">
                                        <option value="option1">打扫卫生</option>
                                        <option value="option2">开会</option>
                                        <option value="option3">盘点</option>
                                        <option value="option4">布置卖场</option>
                                        <option value="option5">更换商品</option>
                                        <option value="option6">门店装修</option>
                                        <option value="option7">营业额结算</option>
                                    </select>
                                    <label for="text3">具体时间：</label>
                                    <input type="time" name="text3" id="text3" value="上午8：00">
                                    <label for="text4">---</label>
                                    <input type="time" name="text4" id="text4" value="上午9：00">
                                </div>
                                <div class="item">
                                    <label for="selectBox3">特殊事项2：</label>
                                    <select id="selectBox3" name="selectBox2">
                                        <option value="option1">打扫卫生</option>
                                        <option value="option2">开会</option>
                                        <option value="option3">盘点</option>
                                        <option value="option4">布置卖场</option>
                                        <option value="option5">更换商品</option>
                                        <option value="option6">门店装修</option>
                                        <option value="option7">营业额结算</option>
                                    </select>
                                    <label for="text5">具体时间：</label>
                                    <input type="time" name="text5" id="text5" value="上午9：00">
                                    <label for="text6">---</label>
                                    <input type="time" name="text6" id="text6" value="下午10：00">
                                </div>
                                <div class="item">
                                    <label for="selectBox4">特殊事项3：</label>
                                    <select id="selectBox4" name="selectBox4">
                                        <option value="option1">打扫卫生</option>
                                        <option value="option2">开会</option>
                                        <option value="option3">盘点</option>
                                        <option value="option4">布置卖场</option>
                                        <option value="option5">更换商品</option>
                                        <option value="option6">门店装修</option>
                                        <option value="option7">营业额结算</option>
                                    </select>
                                    <label for="text7">具体时间：</label>
                                    <input type="time" name="text7" id="text7" value="上午9：00">
                                    <label for="text8">---</label>
                                    <input type="time" name="text8" id="text8" value="下午10：00">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="option2" style="display: none;">
                        <div class="container">
                            <div class="row">
                                <div class="item">
                                    <label for="text9">员工每日工作时长：</label>
                                    <input type="number" name="text9" id="text9" value="4">小时
                                    <label for="text10">---</label>
                                    <input type="number" name="text10" id="text10" value="8">小时
                                </div>
                                <div class="item">
                                    <label for="text11">员工每周工作时长：</label>
                                    <input type="number" name="text11" id="text11" value="20">小时
                                    <label for="text12">---</label>
                                    <input type="number" name="text12" id="text12" value="40">小时
                                </div>
                                <div class="item">
                                    <label for="text13">员工每月工作时长：</label>
                                    <input type="number" name="text13" id="text13" value="80">小时
                                    <label for="text14">---</label>
                                    <input type="number" name="text14" id="text14" value="160">小时
                                </div>
                            </div>
                            <div class="row">
                                <div class="item">
                                    <label for="text17">单个班次持续时长：</label>
                                    <input type="number" name="text17" id="text17" value="2">小时
                                    <label for="text18">---</label>
                                    <input type="number" name="text18" id="text18" value="4">小时
                                </div>
                                <div class="item">
                                    <label for="text15">员工持续工作时长：</label>
                                    <input type="number" name="text15" id="text15" value="2">小时
                                    <label for="text16">---</label>
                                    <input type="number" name="text16" id="text16" value="4">小时
                                </div>
                                <div class="item">
                                    <label for="text19">连续班次间隔时长：</label>
                                    <input type="number" name="text19" id="text19" value="0">小时
                                    <label for="text20">---</label>
                                    <input type="number" name="text20" id="text20" value="1">小时
                                </div>
                            </div>
                            <div class="row">
                                <div class="item">
                                    <label for="text21">员工一周工时差值：</label>
                                    <input type="number" name="text21" id="text21" value="0">小时
                                    <label for="text22">---</label>
                                    <input type="number" name="text22" id="text22" value="2">小时
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="option3" style="display: none;">
                        <div class="container">
                            <div class="row">
                                <div class="item">
                                    <label for="text23">员工每周休息天数：</label>
                                    <input type="number" name="text23" id="text23" value="1">天
                                    <label for="text24">---</label>
                                    <input type="number" name="text24" id="text24" value="2">天
                                </div>
                                <div class="item">
                                    <label for="text25">员工每月休息天数：</label>
                                    <input type="number" name="text25" id="text25" value="4">天
                                    <label for="text26">---</label>
                                    <input type="number" name="text26" id="text26" value="8">天
                                </div>
                                <div class="item">
                                    <label for="text27">员工单次休息时长：</label>
                                    <input type="number" name="text27" id="text27" value="30">分钟
                                    <label for="text28">---</label>
                                    <input type="number" name="text28" id="text28" value="60">分钟
                                </div>
                            </div>
                            <div class="row">
                                <!-- <h5 class="row-tl">固定休息时间</h5> -->
                                <div class="item">
                                    <label for="text29">午餐时间：</label>
                                    <input type="time" name="text29" id="text29" value="12:00">
                                    <label for="text30">---</label>
                                    <input type="time" name="text30" id="text30" value="13:00">
                                </div>
                                <div class="item">
                                    <label for="text31">晚餐时间：</label>
                                    <input type="time" name="text31" id="text31" value="17:00">
                                    <label for="text32">---</label>
                                    <input type="time" name="text32" id="text32" value="18:00">
                                </div>
                            </div>
                            <div class="row">
                                <div class="item">
                                    <label for="selectBox5">特殊休息事件：</label>
                                    <select id="selectBox5" name="selectBox4">
                                        <option value="option1">午休</option>
                                        <option value="option2">小憩</option>
                                    </select>
                                </div>
                                <div class="item">
                                    <label for="text33">具体时间：</label>
                                    <input type="time" name="text33" id="text33" value="12:30">
                                    <label for="text34">---</label>
                                    <input type="time" name="text34" id="text34" value="13；00">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="option4" style="display: none;">
                        <div class="container">
                            <div class="row">
                                <div class="row-hd">未选中能力标签</div>
                            </div>
                            <div class="row">
                                <div class="row-m">
                                    <div class="item">
                                        <input type="checkbox">
                                        <div class="row-txt">决策能力（经理、副经理）</div>
                                    </div>
                                    <div class="item">
                                        <input type="checkbox">
                                        <div class="row-txt">执行能力（经理、副经理）</div>
                                    </div>
                                    <div class="item">
                                        <input type="checkbox">
                                        <div class="row-txt">管理能力（经理、副经理、库房管理员）</div>
                                    </div>
                                    <div class="item">
                                        <input type="checkbox">
                                        <div class="row-txt">沟通能力（导购、经理、副经理）</div>
                                    </div>
                                </div>
                                <div class="row-m">
                                    <div class="item">
                                        <input type="checkbox">
                                        <div class="row-txt">IT能力（收银员、库房管理员）</div>
                                    </div>
                                    <div class="item">
                                        <input type="checkbox">
                                        <div class="row-txt">销售能力（导购）</div>
                                    </div>
                                    <div class="item">
                                        <input type="checkbox">
                                        <div class="row-txt">逻辑思维能力（收银员、库房管理员）</div>
                                    </div>
                                    <div class="item">
                                        <input type="checkbox" style="display:none;">
                                        <div class="row-txt"></div>
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="row-hd">
                                    <img src="" alt="">
                                    <div class="row-txt">帮助</div>
                                </div>
                                <div class="row-p">
                                    <p>
                                        决策能力：策者所具有的参与决策活动、进行方案选择的技能和本领，它是进行决策活动应具备的起码的技能和本领。</br>
                                        IT能力：能够熟练操作计算机，熟练使用各类办公软件，如word excel等，能够对数据进行分析与处理。</br>
                                        执行能力：贯彻企业战略意图，把战略、规划转化成为效益、成果的关键。其中包含完成任务的意愿，完成任务的能力，完成任务的程度。</br>
                                        管理能力：管理队伍的规模、素质和结构，管理手段的科学化、现代化程度，管理教育的广度与深度，以及管理科学研究与理论水平。沟通能力：</br>
                                        与他人有效地进行沟通信息的能力，包含着表达能力、倾听能力和设计能力（形象设计、动作设计、环境设计）。</br>
                                        销售能力：企业市场营销能力最直接的体现，也是所有市场销售行为结果的体现。</br>
                                        逻辑思维能力：对事物进行观察、比较、分析、综合、抽象、概括、判断、推理的能力，采用科学的逻辑方法，准确而有条理地表达自己思维过程的能力。</br>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="option5" style="display: none;">
                        <div class="container">
                            <div class="row">
                                <%--<fieldset>--%>
                                    规定岗位选择：
                                    <input type="checkbox" name="">经理
                                    <input type="checkbox" name="">副经理
                                    <input type="checkbox" name="">库房管理员
                                    <input type="checkbox" name="">收银员
                                    <input type="checkbox" name="">导购
                                    </label>
                                <%--</fieldset>--%>
                            </div>
                        </div>
                    </div>
                    <div class="option6" style="display: none;">
                        <div class="container">
                            <div class="row">
                                <div class="row-hd">员工人数需求 ：</div>
                                <div class="item">
                                    <label for="toggle-button">开启/关闭：</label>
                                    <input type="checkbox" id="toggle-button">
                                    <label for="text35">预测客流：</label>
                                    <input type="number" name="text35" id="text35" value="30">
                                    <label for="text36">/</label>
                                    <input type="number" name="text36" id="text36" value="3.8">
                                    <label for="text37">（无客流时最少员工需求人数 :</label>
                                    <input type="number" name="text37" id="text37" value="1">
                                    <label for="text37">)</label>
                                </div>
                                <div class="item">
                                    <label for="toggle-button">开启/关闭：</label>
                                    <input type="checkbox" id="toggle-button1">
                                    <label for="text38">门店面积：</label>
                                    <input type="number" name="text38" id="text38" value="100">
                                    <label for="text39">/</label>
                                    <input type="number" name="text39" id="text39" value="30">
                                    <label for="text40">+</label>
                                    <input type="number" name="text40" id="text40" value="2">
                                </div>
                            </div>
                            <div class="row">
                                <div class="row-hd">岗位人数特殊需求 :</div>
                                <div class="row-m">
                                    <div class="item">
                                        <input type="checkbox" name="text41" id="text41">经理：
                                        <input type="number" value="1">
                                    </div>
                                    <div class="item">
                                        <input type="checkbox" name="text42" id="text42">副经理：
                                        <input type="number" value="1">
                                    </div>
                                    <div class="item">
                                        <input type="checkbox" name="text43" id="text43">导购：
                                        <input type="number" value="5">
                                    </div>
                                    <div class="item">
                                        <input type="checkbox" name="text44" id="text44">收银员：
                                        <input type="number" value="2">
                                    </div>
                                    <div class="item">
                                        <input type="checkbox" name="text45" id="text45">库房管理员：
                                        <input type="number" value="2">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="row-hd">替补人数需求 ：</div>
                                <div class="row-m">
                                    <div class="item">
                                        <input type="checkbox" name="text46" id="text46">替补人数
                                        <input type="number" name="text46" value="1">
                                    </div>
                                    <div class="item">
                                        <label for="text40">未上岗工时</label>
                                        <input type="number" name="text47" id="text47" value="0">
                                    </div>
                                    <div class="item">
                                        <label for="text40">上岗工时</label>
                                        <input type="number" name="text48" id="text48" value="100">
                                        <label for="text40">%</label>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="option7" style="display: none;">
                        <div class="container">
                            <div class="table-container">
                                <div class="table-sto">
                                    <table>
                                        <tr>
                                            <th>ID</th>
                                            <th>员工姓名</th>
                                            <th>岗位</th>
                                            <th>可接受工作日</th>
                                            <th>可接受加班节假日</th>
                                            <th>可接受工作时间段</th>
                                            <th>可接受连续工作时长</th>
                                            <th>不可到岗特殊时间及原因</th>
                                            <th>是否同意请求</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>李财</td>
                                            <td>收银员</td>
                                            <td>普通工作日</td>
                                            <td>无</td>
                                            <td>上午、下午、晚上</td>
                                            <td>2-3小时</td>
                                            <td>2022-12-30</td>
                                            <td>
                                                <input type="checkbox" name="">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>李财</td>
                                            <td>收银员</td>
                                            <td>普通工作日</td>
                                            <td>无</td>
                                            <td>上午、下午、晚上</td>
                                            <td>2-3小时</td>
                                            <td>2022-12-30</td>
                                            <td>
                                                <input type="checkbox" name="">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>王志远</td>
                                            <td>导购</td>
                                            <td>均可</td>
                                            <td>端午节</td>
                                            <td>下午、晚上</td>
                                            <td>2-4小时</td>
                                            <td>无</td>
                                            <td>
                                                <input type="checkbox" name="">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>张丽华</td>
                                            <td>导购</td>
                                            <td>均可</td>
                                            <td>劳动节、端午节、国庆节</td>
                                            <td>上午、下午、晚上</td>
                                            <td>2-4小时</td>
                                            <td>无</td>
                                            <td>
                                                <input type="checkbox" name="">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>吴瑀</td>
                                            <td>库房管理员</td>
                                            <td>普通工作日</td>
                                            <td>劳动节、中秋节、国庆节</td>
                                            <td>下午、晚上</td>
                                            <td>3-4小时</td>
                                            <td>2022-12-27</td>
                                            <td>
                                                <input type="checkbox" name="">
                                            </td>
                                        </tr>
                                    </table>

                                    <script>
                                        var button = document.getElementById('myButton');

                                        button.addEventListener('click', function () {
                                            window.open('form/apr-form.jsp', '_blank');
                                        });
                                    </script>
                                </div>
                            </div>
                        </div>
                        <!-- <div class="container">
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
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
        <div class="btn">
            <input type="submit" value="提交" onclick="window.location.href='../cusrule-manage.jsp'">
            <input type="button" value="取消" onclick="window.location.href='../cusrule-manage.jsp'" onclick="cancelForm()">
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
    toggleButton.addEventListener("change", function () {
        if (this.checked) {
            console.log("按钮已开启");
        } else {
            console.log("按钮已关闭");
        }
    });
    var toggleButton1 = document.getElementById("toggle-button1");
    toggleButton1.addEventListener("change", function () {
        if (this.checked) {
            console.log("按钮已开启");
        } else {
            console.log("按钮已关闭");
        }
    });
</script>
</body>
</html>

