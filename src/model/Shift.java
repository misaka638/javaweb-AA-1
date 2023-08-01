package model;

import java.util.List;

/*
shift类的主要作用是实现每个时间段的安排,需要首先初始化两个类的实例，然后添加staff类到shift类中，最后
在调用数据库时再考虑把shift添加到staff类中
 */
public class Shift {
    private int timeslotid;//时间槽id
    private int employees_num;//员工人数
    private List<Staff>assignedEmployees;//每个时间段的具体员工

    public Shift(int timeslotid, List<Staff> assignedEmployees) {
        this.timeslotid = timeslotid;
        this.assignedEmployees = assignedEmployees;
    }

    public Shift(int timeslotid, int employees_num) {
        this.timeslotid = timeslotid;
        this.employees_num = employees_num;
    }

    public Shift(int timeslotid) {
        this.timeslotid = timeslotid;
    }

    public Shift() {
    }

    public int getEmployees_num() {
        return employees_num;
    }

    public void setEmployees_num(int employees_num) {
        this.employees_num = employees_num;
    }

    public int getTimeslotid() {
        return timeslotid;
    }

    public void setTimeslotid(int timeslotid) {
        this.timeslotid = timeslotid;
    }

    public List<Staff> getAssignedEmployees() {
        return assignedEmployees;
    }

    public void setAssignedEmployees(List<Staff> assignedEmployees) {
        this.assignedEmployees = assignedEmployees;
    }

    public String toString_shift1() {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format("%03d", timeslotid));
        sb.append(String.format("%02d", employees_num));
        for(int i=0;i<employees_num;i++){
            sb.append(assignedEmployees.get(i).getId());
        }
        return sb.toString();
    }
}
