package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Mydatabase {
    public int put_data(String username, String cipher, String email,String salt) {
        Connection conn = null;
        PreparedStatement pstmt =null;
        try {
            // 加载MySQL驱动程序
            Class.forName("com.mysql.cj.jdbc.Driver");

            // 建立数据库连接
            String database_url = "jdbc:mysql://localhost:3306/net_user";
            String database_username = "root";
            String database_password = "wsgjh922";
            conn = DriverManager.getConnection(database_url, database_username, database_password);


            String query = "INSERT INTO user (username, password, email, salt) VALUES (?, ?, ?, ?)";
            pstmt = conn.prepareStatement(query);
            pstmt.setString(1, username);
            pstmt.setString(2, cipher);
            pstmt.setString(3, email);
            pstmt.setString(4, salt);
            pstmt.executeUpdate();
            return 1;

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // 关闭数据库连接
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return 0;
    }
}
