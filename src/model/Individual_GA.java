package model;

import database.DatabaseInteraction;

import java.util.*;

/**
 * Individual_GA以shift类为基础，每个Individual_GA类包括168个shift类的员工安排情况
 */
public class Individual_GA {
    private List<Shift> shifts;
    private List<Staff> staffList;

    public void addStaffToStaffList() {
        staffList = new ArrayList<Staff>();
        DatabaseInteraction dbInteraction = new DatabaseInteraction();
        staffList = dbInteraction.queryData_staff_init();
        dbInteraction.closeConnection();
    }

    public void addStaffToAssignedEmployees(List<Staff> assignedEmployees, int n) { // 随机将员工的信息输入到assignedEmployees中
//        Set<Integer> randomNumbers = generateRandomUniqueNumbers(n);
        Random random = new Random();
        for (int i = 0; i < n; i++) {
            Staff staff = staffList.get(random.nextInt(100));//随机生成0-99整数填入staffList中
            assignedEmployees.add(staff);
        }
    }

    public Individual_GA(int[] number1) { // 定义类时生成每个时间段的shift类,int[] number1是预测业务数据
        addStaffToStaffList();//在初始化时需要将数据库中的staff读入individual中
        shifts = new ArrayList<>();
        for (int i = 0; i < 168; i++) {
            Shift shift = new Shift();
            shift.setTimeslotid(i); // 设置时间槽id
            shift.setEmployees_num(number1[i]);//设置每个时间段的员工数
            List<Staff> assignedEmployees = new ArrayList<>();

            int numberOfStaffToAdd = number1[i];
            addStaffToAssignedEmployees(assignedEmployees, numberOfStaffToAdd);
            shift.setAssignedEmployees(assignedEmployees); // 初始化每个时间段的员工列表
            shifts.add(shift); // 将 Shift 对象添加到 shifts 列表中
//            System.out.println("输入Shift类信息到shitfs列表中！！！"+shift.getTimeslotid());
        }

        for (int i = 0; i < 168; i++) {//遍历所有shift，读取assignedEmployees，对其中的每个assignedEmployees都赋值assignedShifts
            Shift shift = shifts.get(i);
//            System.out.println("shift: ");
//            System.out.println(shift.toString_shift1());
            int len = shift.getEmployees_num();
            for (int j = 0; j < len; j++) {
                Staff staff = shift.getAssignedEmployees().get(j);
                for (int k = 0; k < 100; k++) {
                    if (staffList.get(k).getId().equals(staff.getId())) {
                        staffList.get(k).getAssignedShifts().add(shift);
                        break;
                    }
                }
            }
        }
    }

    public void calculateEmployeeWorkTime() {//根据shifts计算员工的工作时间
        for (int i = 0; i < 168; i++) {
            Shift shift = shifts.get(i);
            int staff_num = shift.getEmployees_num();//确定员工人数
            List<String> worker_id = new ArrayList<>();//保存当前shift的员工id
            List<Staff> assignedEmployees = new ArrayList<>();
            for (int j = 0; j < staff_num; j++) {
                assignedEmployees = shift.getAssignedEmployees();//将每个shift的员工数据放入assignedEmployees
                worker_id.add(assignedEmployees.get(j).getId());//记录每个在这个时间段工作的员工id
                assignedEmployees.get(j).setFlag_work(true);//设置flag为1

                double entileworktime = assignedEmployees.get(j).getEntileworktime();//增加连续工作时间
                entileworktime += 0.5;
                assignedEmployees.get(j).setEntileworktime(entileworktime);

                int time = (i / 24) % 7;//确定周几
                if(assignedEmployees.get(j).getDailyWorkHours().size()<time+1){
                    assignedEmployees.get(j).getDailyWorkHours().add(0.5);
                }
                else{
                    double num=assignedEmployees.get(j).getDailyWorkHours().get(time);
                    num+=0.5;
                    assignedEmployees.get(j).getDailyWorkHours().set(time,num);
                }
            }
            int len_staffList = staffList.size();
            for (int j = 0; j < len_staffList; j++) {//设置其他员工flag为0，并且清空他们的entileworktime
                for (int k = 0; k < worker_id.size(); k++) {
                    if (!staffList.get(j).getId().equals(worker_id.get(k))) {//如果找到当前时段不工作的
                        staffList.get(j).setFlag_work(false);
                        staffList.get(j).setEntileworktime(0);
                    }
                }
            }
        }
    }


    public static Set<Integer> generateRandomUniqueNumbers(int n) {
        if (n <= 0 || n > 100) {
            throw new IllegalArgumentException("n must be in the range of 1 to 100");
        }

        Set<Integer> resultSet = new HashSet<>();
        Random random = new Random();

        while (resultSet.size() < n) {
            int randomNumber = random.nextInt(100); // 生成0~99的随机整数
            resultSet.add(randomNumber);
        }

        return resultSet;
    }

    public List<Shift> getShifts() {
        return shifts;
    }

    public void setShifts(List<Shift> shifts) {
        this.shifts = shifts;
    }

    public List<Staff> getStaffList() {
        return staffList;
    }

    public void setStaffList(List<Staff> staffList) {
        this.staffList = staffList;
    }
}
