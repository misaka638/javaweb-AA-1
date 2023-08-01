package model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class Population {
    private List<String> population_shift;
    private double populationFitness = -1;
    private Individual_GA individual_ga; //每个种群保存一个染色体

    public Population() {
        population_shift = new ArrayList<>();
    }

    /*
    extractShiftScheduleInfo函数的作用是
    把每个shift类的内容存储到一个字段中
    生成的内容即为排班表，作为染色体在遗传算法中使用
     */
//    public void extractShiftScheduleInfo() {
//        for (Shift shift : individual_ga.getShifts()) {
//            int timeslotId = shift.getTimeslotid();
//            List<Staff> assignedEmployees = shift.getAssignedEmployees();
//            StringBuilder str1 = new StringBuilder();
//
//            str1.append("TimeslotID:").append(timeslotId).append("\n");
//            for (Staff staff : assignedEmployees) {//将一个shift内的所有员工数据读取，包括姓名，ID，
//                str1.append("Employee:").append(staff.getName()).append(",ID:").append(staff.getId()).append("\n");
//            }
//            str1.append("\n");
//            population_shift.add(str1.toString());//每个shift类的信息都存储在对应的population_shift中
//            System.out.println("str1.toString():\n" + str1.toString());
//        }
//        System.out.println("population_shift:" + population_shift);
//    }

    public void extractShiftScheduleInfo() {
        for (Shift shift : individual_ga.getShifts()) {
            int timeslotId = shift.getTimeslotid();
            List<Staff> assignedEmployees = shift.getAssignedEmployees();
            StringBuilder str1 = new StringBuilder();
            // 使用字符串格式化方法生成三个字符
            String formattedTimeslotId = String.format("%03d", timeslotId);
            str1.append(formattedTimeslotId);

            for (Staff staff : assignedEmployees) {//将一个shift内的所有员工数据读取，包括ID/职务/特长/偏好值类型/偏好值具体值
                str1.append("name: ").append(staff.getName()).append(" id: ").append(staff.getId()).append(" position: ")
                        .append(staff.getPosition()).append(" preferences: ").append(staff.getPreferences())
                        .append(" preferencesValue: ").append(staff.getPreferences_value());
            }
            str1.append("\n");
            population_shift.add(str1.toString());//每个shift类的信息都存储在对应的population_shift中
//            System.out.println("str1.toString():\n" + str1.toString());
        }
//        System.out.println("population_shift:" + population_shift);
//        System.out.println("");
    }

    public double calculateFitness() {//计算适应度
        double ans = 0.0;
        individual_ga.calculateEmployeeWorkTime();
        int len_StaffList = individual_ga.getStaffList().size();
        Staff staff = new Staff();
        for (int i = 0; i < len_StaffList; i++) {
            staff = individual_ga.getStaffList().get(i);
            if (staff.getEntileworktime() < 4.5) {//持续工作时间小于4小时，否则
                ans += 1;
            } else {
                ans -= 1;
            }

            Set<Map.Entry<String, Double>> entrySet = staff.getDailyWorkHours().entrySet();
            // 使用增强型 for 循环遍历DailyWorkHours
            for (Map.Entry<String, Double> entry : entrySet) {
                String name = entry.getKey();
                Double hours = entry.getValue();
                if (hours < 8.5) {
                    ans += 1;
                } else {
                    ans -= 1;
                }
            }

            if (staff.getPreferences().equals("工作日")) {
                if (staff.getPreferences_value().equals("01")) {

                }
            }
        }
        populationFitness = ans;
        return ans;
    }

    public double getPopulationFitness() {
        return populationFitness;
    }

    public void setPopulationFitness(double populationFitness) {
        this.populationFitness = populationFitness;
    }

    public List<String> getPopulation_shift() {
        return population_shift;
    }

    public void setPopulation_shift(List<String> population_shift) {
        this.population_shift = population_shift;
    }

    public Individual_GA getIndividual_ga() {
        return individual_ga;
    }

    public void setIndividual_ga(Individual_GA individual_ga) {
        this.individual_ga = individual_ga;
    }

}
