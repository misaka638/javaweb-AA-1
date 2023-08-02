package database;

import model.Staff;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DatabaseInteraction {
    // 数据库连接参数
    private static final String DB_URL = "jdbc:mysql://localhost:3306/unqiue_store";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "wsgjh922";

    // 数据库连接对象
    private Connection connection;

    public DatabaseInteraction() {
        try {
            // 加载数据库驱动
            Class.forName("com.mysql.cj.jdbc.Driver");
            // 建立数据库连接
            connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    // 在staff表中插入数据
    public void insertStaffData(String name, int id, String preferences, String position, String speciality,
                                String assignedShifts, int entileworktime, String dailyWorkHours, int flag_work) {
        try {
            String sql = "INSERT INTO staff (name,id,preferences,position,speciality,assignedShifts,entileworktime," +
                    "dailyWorkHours,flag_work) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setInt(2, id);
            statement.setString(3, preferences);
            statement.setString(4, position);
            statement.setString(5, speciality);
            statement.setString(6, assignedShifts);
            statement.setInt(7, entileworktime);
            statement.setString(8, dailyWorkHours);
            statement.setInt(9, flag_work);
            statement.executeUpdate();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void insertStaffData(String name, int id, String preferences, String preferences_value, String position, String speciality, int flag_work) {
        try {

            String sql = "INSERT INTO staff (name, id, preferences,preferences_value, position, speciality, flag_work) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setInt(2, id);
            statement.setString(3, preferences);
            statement.setString(4, preferences_value);
            statement.setString(5, position);
            statement.setString(6, speciality);
            statement.setInt(7, flag_work);
            statement.executeUpdate();
            statement.close();

            // 关闭数据库连接等操作（省略）
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void insertShiftData(int timeslotid, int employees_num, String assignedEmployees) {
        try {
            String sql = "INSERT INTO shift (timeslotid, employees_num,assignedEmployees) VALUES (?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, timeslotid);
            statement.setInt(2, employees_num);
            statement.setString(3, assignedEmployees);
            statement.executeUpdate();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void insertData(String name, int age) {
        try {
            String sql = "INSERT INTO person (name, age) VALUES (?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setInt(2, age);
            statement.executeUpdate();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // 删除数据
    public void deleteData(int id) {
        try {
            String sql = "DELETE FROM person WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            statement.executeUpdate();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // 更新数据
    public void updateData(int id, String name, int age) {
        try {
            String sql = "UPDATE person SET name = ?, age = ? WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, name);
            statement.setInt(2, age);
            statement.setInt(3, id);
            statement.executeUpdate();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateData(int id, String preferences, String preferences_value, String assignedShifts,
                           String position, String speciality, String dailyWorkHours, boolean flag_work) {
        try {
            String sql = "UPDATE staff SET preferences = ?, preferences_value = ?, assignedShifts = ?," +
                    " position = ?, speciality = ?, dailyWorkHours = ?, flag_work = ?, WHERE id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, preferences);
            statement.setString(2, preferences_value);
            statement.setString(3, assignedShifts);
            statement.setString(4, position);
            statement.setString(5, speciality);
            statement.setBoolean(6, flag_work);
            statement.setString(7, dailyWorkHours);
            statement.setInt(8, id);
            statement.executeUpdate();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // 查询数据
    public List<Staff> queryData_staff_init() {
        List<Staff> staffList = new ArrayList<>();

        try {
            String sql = "SELECT * FROM staff";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Staff staff = new Staff();
                staff.setId(String.format("%02d", resultSet.getInt("id")));
                staff.setPreferences(resultSet.getString("preferences"));
                staff.setPreferences_value(resultSet.getString("preferences_value"));
                staff.setPosition(resultSet.getString("position"));
                staff.setSpeciality(resultSet.getString("speciality"));

                staffList.add(staff);
            }

            resultSet.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return staffList;
    }

    public List<Staff> queryData_staff_sto1() {
        List<Staff> staffList = new ArrayList<>();

        try {
            String sql = "SELECT * FROM staff";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Staff staff = new Staff();
                staff.setId(String.format("%02d", resultSet.getInt("id")));
                staff.setName(resultSet.getString("name"));
                staff.setPreferences(resultSet.getString("preferences"));
                staff.setPreferences_value(resultSet.getString("preferences_value"));
                staff.setPosition(resultSet.getString("position"));
                staff.setSpeciality(resultSet.getString("speciality"));
                staff.setStr_assignedShifts(resultSet.getString("assignedShifts"));
                staff.setFlag_work(resultSet.getBoolean("flag_work"));
                staffList.add(staff);
            }

            resultSet.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return staffList;
    }

    // 查询数据
    public void queryData() {
        try {
            String sql = "SELECT * FROM staff";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String preferences = resultSet.getString("preferences");
                String preferences_value = resultSet.getString("preferences_value");
                String position = resultSet.getString("position");
                String speciality = resultSet.getString("speciality");
                System.out.println("从数据库读取员工数据：" + id + preferences + preferences_value + position + speciality);
            }

            resultSet.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // 关闭数据库连接
    public void closeConnection() {
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        DatabaseInteraction dbInteraction = new DatabaseInteraction();
//        dbInteraction.insertData("John", 30);
//        dbInteraction.insertData("Alice", 25);
//        dbInteraction.queryData();
//        dbInteraction.updateData(1, "Tom", 35);
//        dbInteraction.queryData();
//        dbInteraction.deleteData(2);
//        dbInteraction.queryData();
//        dbInteraction.closeConnection();
        dbInteraction.insertShiftData(1, 3, "love");
        dbInteraction.closeConnection();
    }
}

