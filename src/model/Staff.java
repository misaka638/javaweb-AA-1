package model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Staff {
    private String id;
    private String name;
    private String preferences;//员工偏好
    private String preferences_value;//偏好值具体值
    private String position;//职务
    private String speciality;//特长
    private List<Shift> assignedShifts= new ArrayList<>();//班次安排
    private double entileworktime;//连续工作时间
    private Map<String, Double> dailyWorkHours = new HashMap<>(); // 存储每日工作时长的数据，key为日期，value为工作时长
    private Map<String, Double> weeklyWorkHours; // 存储每周工作时长的数据，key为周数，value为工作时长
    private String str_assignedShifts;
    private boolean flag_work = false;

    public double calculateTotalWorkHours() {
        double totalHours = 0.0;
        for (String day : dailyWorkHours.keySet()) {
            double hours = dailyWorkHours.get(day);
            totalHours += hours;
        }
        return totalHours;
    }
    public String toStringassignedShifts(){
        StringBuilder str = new StringBuilder();
        int len=assignedShifts.size();
        for(int i=0;i<len;i++){
            str.append(String.format("%03d", assignedShifts.get(i).getTimeslotid()));
        }
        return str.toString();
    }

    public Staff(String id, String name, String preferences, String preferences_value, String position, String speciality) {
        this.id = id;
        this.name = name;
        this.preferences = preferences;
        this.preferences_value = preferences_value;
        this.position = position;
        this.speciality = speciality;
    }

    public Staff(String id, String name, String preferences, List<Shift> assignedShifts) {
        this.id = id;
        this.name = name;
        this.preferences = preferences;
        this.assignedShifts = assignedShifts;
    }

    public Staff(String id, String name, String preferences) {
        this.id = id;
        this.name = name;
        this.preferences = preferences;
    }

    public Staff(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public Staff() {

    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPreferences() {
        return preferences;
    }

    public void setPreferences(String preferences) {
        this.preferences = preferences;
    }

    public List<Shift> getAssignedShifts() {
        return assignedShifts;
    }

    public void setAssignedShifts(List<Shift> assignedShifts) {
        this.assignedShifts = assignedShifts;
    }

    public String getPreferences_value() {
        return preferences_value;
    }

    public void setPreferences_value(String preferences_value) {
        this.preferences_value = preferences_value;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getSpeciality() {
        return speciality;
    }

    public void setSpeciality(String speciality) {
        this.speciality = speciality;
    }

    public double getEntileworktime() {
        return entileworktime;
    }

    public void setEntileworktime(double entileworktime) {
        this.entileworktime = entileworktime;
    }

    public Map<String, Double> getDailyWorkHours() {
        return dailyWorkHours;
    }

    public void setDailyWorkHours(Map<String, Double> dailyWorkHours) {
        this.dailyWorkHours = dailyWorkHours;
    }

    public void putDailyWorkHours(String str, Double dbl) {
        this.dailyWorkHours.put(str,dbl);
    }

    public Map<String, Double> getWeeklyWorkHours() {
        return weeklyWorkHours;
    }

    public void setWeeklyWorkHours(Map<String, Double> weeklyWorkHours) {
        this.weeklyWorkHours = weeklyWorkHours;
    }

    public void putWeeklyWorkHours(String str, Double dbl) {
        this.weeklyWorkHours.put(str,dbl);
    }

    public boolean getFlag_work() {
        return flag_work;
    }

    public void setFlag_work(boolean flag_work) {
        this.flag_work = flag_work;
    }

    public String getStr_assignedShifts() {
        return str_assignedShifts;
    }

    public void setStr_assignedShifts(String str_assignedShifts) {
        this.str_assignedShifts = str_assignedShifts;
    }

    public String toString_staff1() {
        StringBuilder sb = new StringBuilder();
        sb.append("Employee Details: ");
        sb.append("ID: ").append(id).append(", ");
        sb.append("Name: ").append(name).append(", ");
        sb.append("Preferences: ").append(preferences).append(", ");
        sb.append("Preferences Value: ").append(preferences_value).append(", ");
        sb.append("Position: ").append(position).append(", ");
        sb.append("Speciality: ").append(speciality).append(", ");
        sb.append("Assigned Shifts: ").append(assignedShifts).append(", ");
        sb.append("Entile Work Time: ").append(entileworktime);
        return sb.toString();
    }
}
