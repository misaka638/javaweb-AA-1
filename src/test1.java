import database.DatabaseInteraction;
import ga.GeneticAlgorithm;

import java.util.Random;

public class test1 {
    private static final String[] commonLastNames = {
            "赵", "钱", "孙", "李", "周", "吴", "郑", "王", "冯", "陈", "楮", "卫", "蒋", "沈", "韩", "杨",
            "朱", "秦", "尤", "许", "何", "吕", "施", "张", "孔", "曹", "严", "华", "金", "魏", "陶", "姜",
            "戚", "谢", "邹", "喻", "柏", "水", "窦", "章", "云", "苏", "潘", "葛", "奚", "范", "彭", "郎",
            "鲁", "韦", "昌", "马", "苗", "凤", "花", "方", "俞", "任", "袁", "柳", "酆", "鲍", "史", "唐",
            "费", "廉", "岑", "薛", "雷", "贺", "倪", "汤", "滕", "殷", "罗", "毕", "郝", "邬", "安", "常",
            "乐", "于", "时", "傅", "皮", "卞", "齐", "康", "伍", "余", "元", "卜", "顾", "孟", "平", "黄",
            "和", "穆", "萧", "尹", "姚", "邵", "湛", "汪", "祁", "毛", "禹", "狄", "米", "贝", "明", "臧",
            "计", "伏", "成", "戴", "谈", "宋", "茅", "庞", "熊", "纪", "舒", "屈", "项", "祝", "董", "梁"
    };

    private static final String[] commonFirstNames = {
            "伟", "芳", "娜", "秀英", "敏", "静", "丽", "强", "磊", "洋", "艳", "勇", "军", "霞", "平", "刚",
            "桂英", "桂芳", "桂兰", "燕", "萍", "红", "玲", "明", "超", "秀兰", "桂珍", "凯", "杰", "婷", "秀珍",
            "颖", "华", "俊", "娟", "辉", "莉", "新", "壮", "凤英", "健", "红梅", "阳", "建华", "晶", "文", "丹",
            "兰", "博", "欣", "建国", "建军", "云", "鹏", "建设", "慧", "少华", "少敏", "少杰", "志强", "凡", "坤",
            "梅", "瑞", "元", "岩", "英", "华英", "国庆", "淑珍", "国发", "伟光", "盈盈", "冬梅", "文华", "贵英", "文华",
            "洪", "晓华", "美丽", "晓光", "凌云", "桂荣", "继东", "国栋", "秀荣", "晓东", "文明", "少华", "清", "文珍",
            "庆华", "雪梅", "文中", "文利", "英男", "文贵", "玉芳", "勇军", "国庆", "文华", "明辉", "文中", "志坚", "佩文",
            "志刚", "利军", "明华", "金凤", "小凡", "洪霞", "桂芝", "秀玲", "小庆", "宏伟", "绍武", "国庆", "书文", "建军"
    };
    private static final String[] commonPosition = {
            "店长", "零售销售助理", "收银员", "库存员", "库存管理员", "保安", "电商助理"
    };
    private static final String[] commonPreferences = {
            "工作日", "工作时间", "工作岗位"
    };
    private static final String[] commonSpeciality = {
            " 领导", " 团队合作", " 产品知识 ", "计算 ", "耐心和细心", " 友好", " 学习能力"
    };

    public static String generateRandomChineseName() {
        Random random = new Random();
        String lastName = commonLastNames[random.nextInt(commonLastNames.length)];
        String firstName = commonFirstNames[random.nextInt(commonFirstNames.length)];
        return lastName + firstName;
    }

    private static String generateRandomPosition() {
        Random random = new Random();
        String str_position = commonPosition[random.nextInt(commonPosition.length)];
        return str_position;
    }

    private static String generateRandomPreference() {
        Random random = new Random();
        return commonPreferences[random.nextInt(commonPreferences.length)];
    }

    private static String generateRandomSpeciality() {
        Random random = new Random();
        return commonSpeciality[random.nextInt(commonSpeciality.length)];
    }

    // 随机生成3到6个英文字符，首字母大写
    private String RandomName() {
        Random random = new Random();
        int nameLength = random.nextInt(4) + 3;
        StringBuilder nameBuilder = new StringBuilder();
        char randomChar1 = (char) (random.nextInt(26) + 'A');
        nameBuilder.append(randomChar1);
        for (int i = 0; i < nameLength - 1; i++) {
            char randomChar = (char) (random.nextInt(26) + 'a');
            nameBuilder.append(randomChar);
        }

        return nameBuilder.toString();
    }

    private static String generateRandom12() {
        Random random = new Random();
        int preferenceValue = random.nextInt(7) + 1;
        return String.format("%02d", preferenceValue);
    }


    public static void main(String[] args) {
        GeneticAlgorithm geneticAlgorithm=new GeneticAlgorithm();
        geneticAlgorithm.GA();
//        Do();
    }

    private static void Do() {
        DatabaseInteraction dbInteraction = new DatabaseInteraction();
        for (int i = 0; i < 100; i++) {//生成员工
            String name = generateRandomChineseName();
            int id = i;
            String position = generateRandomPosition();
            String preferences = generateRandomPreference();
            String preferences_value = generateRandom12();
            String speciality = generateRandomSpeciality();
            System.out.println(name + id + position + preferences);
            dbInteraction.insertStaffData(name, id, preferences, preferences_value, position, speciality, 0);
        }
        dbInteraction.closeConnection();
    }
}
