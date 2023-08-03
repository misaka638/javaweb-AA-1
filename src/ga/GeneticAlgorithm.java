package ga;

import database.DatabaseInteraction;
import model.Individual_GA;
import model.Population;
import model.Shift;
import model.Staff;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 * 遗传函数实现
 * 种群初始化、适应度计算、迭代过程（计算适应度、选择子代、交叉、变异、更新种群）、找到最优解
 */
public class GeneticAlgorithm {
    private static final int POPULATION_SIZE = 50; // 种群大小
    private static final int MAX_GENERATIONS = 100; // 最大迭代次数
    private static final double MUTATION_RATE = 0.01; // 突变率
    private List<Population> populationList;

    public GeneticAlgorithm() {
        populationList = new ArrayList<>();
    }

    public void GA() {
        List<Individual_GA> individual_gaList = new ArrayList<>();
        for (int ks = 0; ks < POPULATION_SIZE; ks++) {//初始化种群大小数量的Individual_GA，并导入各自的Population，最后放入populationList中
            int arraySize = 168;
            int[] numbersArray = new int[arraySize];
            Random random = new Random();
            // 生成168个1到10之间的随机整数并填入数组
            for (int i = 0; i < arraySize; i++) {
                int randomNumber = random.nextInt(6) + 1; // 生成1到10之间的随机整数
                numbersArray[i] = randomNumber;
            }
            Individual_GA individual_ga = new Individual_GA(numbersArray);
            individual_gaList.add(individual_ga);
        }
        initializePopulation(individual_gaList);
        System.out.println("种群的初始化完成");
        // 迭代优化
        for (int generation = 0; generation < MAX_GENERATIONS; generation++) {
            // 计算适应度
            for (int i = 0; i < POPULATION_SIZE; i++) {
                populationList.get(i).calculateFitness();//计算适应度
            }
            // 选择操作（锦标赛选择）
            selectPopulation();
            // 交叉操作
            offspringPopulation();
            // 变异操作
            mutatedIndividualPopulation();
        }
        // 找到最佳个体
        double bestFitness = Double.NEGATIVE_INFINITY;
        Population bestPopulation = new Population();
        for (int i = 0; i < POPULATION_SIZE; i++) {
            double fitness = populationList.get(i).calculateFitness();
            if (fitness > bestFitness) {
                bestFitness = fitness;
                bestPopulation = populationList.get(i);
            }
        }
        //使用bestPopulation的数据更新数据库中的数值
        DatabaseInteraction dbInteraction = new DatabaseInteraction();
        List<Staff> staffList = bestPopulation.getIndividual_ga().getStaffList();
        for (int i = 0; i < 100; i++) {
            Staff staff = staffList.get(i);

            Random random = new Random();
            if (random.nextDouble() < 0.9) {
                dbInteraction.updateData(Integer.parseInt(staff.getId()), staff.getPreferences(),
                        staff.getPreferences_value(), staff.toStringassignedShifts(), staff.getPosition(),
                        staff.getSpeciality(),Double.toString(staff.calculateTotalWorkHours()),true);
            }
            else{
                dbInteraction.updateData(Integer.parseInt(staff.getId()), staff.getPreferences(),
                        staff.getPreferences_value(), staff.toStringassignedShifts(), staff.getPosition(),
                        staff.getSpeciality(),Double.toString(staff.calculateTotalWorkHours()),false);
            }
        }

        dbInteraction.closeConnection();
        System.out.println("最佳个体：" + bestPopulation.getPopulation_shift());
    }

    public void initializePopulation(List<Individual_GA> individual_gaList) {//初始化种群
        for (int i = 0; i < POPULATION_SIZE; i++) {
            Population population = new Population();
            Individual_GA individual_ga = individual_gaList.get(i);
            population.setIndividual_ga(individual_ga);//添加时间表至染色体
            population.extractShiftScheduleInfo();//通过函数将individual_ga的信息以字符串格式存储在population中
            populationList.add(population); // 添加个体到种群
        }
    }

    public void selectPopulation() {//锦标赛选择法
        Random random = new Random();
        for (int i = 0; i < POPULATION_SIZE; i++) {//一次比较两个个体，锦标赛选择法通常需要比较的次数等于种群大小
            int idx1 = random.nextInt(POPULATION_SIZE);
            int idx2 = random.nextInt(POPULATION_SIZE);
            if (populationList.get(idx1).calculateFitness() >= populationList.get(idx2).calculateFitness()) {
                populationList.get(i).setIndividual_ga(populationList.get(idx1).getIndividual_ga());
                populationList.get(i).setPopulation_shift(populationList.get(idx1).getPopulation_shift());
                populationList.get(i).setPopulationFitness(populationList.get(idx1).getPopulationFitness());
            } else {
                populationList.get(i).setIndividual_ga(populationList.get(idx2).getIndividual_ga());
                populationList.get(i).setPopulation_shift(populationList.get(idx2).getPopulation_shift());
                populationList.get(i).setPopulationFitness(populationList.get(idx2).getPopulationFitness());
            }
        }
    }

    public void offspringPopulation() {//交叉互换
        Random random = new Random();
        for (int i = 0; i < POPULATION_SIZE; i += 2) {
            int idx1 = random.nextInt(POPULATION_SIZE);
            int idx2 = random.nextInt(POPULATION_SIZE);
            Population population1 = populationList.get(idx1);
            Population population2 = populationList.get(idx2);
            if (random.nextDouble() < 0.5) {
//                System.out.println("不进行交换");
                populationList.get(i).setIndividual_ga(population1.getIndividual_ga());
                populationList.get(i).setPopulation_shift(population1.getPopulation_shift());
                populationList.get(i).setPopulationFitness(population1.getPopulationFitness());

                populationList.get(i + 1).setIndividual_ga(population2.getIndividual_ga());
                populationList.get(i + 1).setPopulation_shift(population2.getPopulation_shift());
                populationList.get(i + 1).setPopulationFitness(population2.getPopulationFitness());
            } else {
//                System.out.println("交换一次");
                populationList.get(i + 1).setIndividual_ga(population1.getIndividual_ga());
                populationList.get(i + 1).setPopulation_shift(population1.getPopulation_shift());
                populationList.get(i + 1).setPopulationFitness(population1.getPopulationFitness());

                populationList.get(i).setIndividual_ga(population2.getIndividual_ga());
                populationList.get(i).setPopulation_shift(population2.getPopulation_shift());
                populationList.get(i).setPopulationFitness(population2.getPopulationFitness());
            }
        }
    }

    public void mutatedIndividualPopulation() {
        Random random = new Random();
        List<Staff> staffList = new ArrayList<>();
        for (int i = 0; i < POPULATION_SIZE; i++) {
            if (random.nextDouble() < MUTATION_RATE) {
//                System.out.println("变异一次");
                //变异操作：改变选中染色体中StaffList的员工编号，保持员工人数不变
                Shift shift = populationList.get(i).getIndividual_ga().getShifts().get(random.nextInt(168));//从168个shift中随机算则员工
                staffList = populationList.get(i).getIndividual_ga().getStaffList();
                int num = shift.getEmployees_num();
                List<Staff> assignedEmployees = new ArrayList<>();
                for (int k = 0; k < num; k++) {
                    Staff staff = staffList.get(random.nextInt(100));//随机生成0-99整数填入staffList中
                    assignedEmployees.add(staff);
                }
                shift.setAssignedEmployees(assignedEmployees);
            }
        }
    }
}
