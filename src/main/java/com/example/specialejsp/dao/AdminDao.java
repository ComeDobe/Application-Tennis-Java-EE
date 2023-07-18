

package com.example.specialejsp.dao;
import com.example.specialejsp.model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AdminDao {

    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String DB_URL = "jdbc:mysql://localhost:3306/tennis?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=Europe/Paris";
    private static final String USER = "root";
    private static final String PASS = "";

    public void addUser(User user) {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            String sql = "INSERT INTO connexion (login, password, profil) VALUES (?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, user.getLogin());
            stmt.setString(2, user.getPassword());
            stmt.setInt(3, user.getProfil());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if(stmt != null) stmt.close();
                if(conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

//    public void updateUser(User user) {
//        Connection conn = null;
//        PreparedStatement stmt = null;
//
//        try {
//            Class.forName(JDBC_DRIVER);
//            conn = DriverManager.getConnection(DB_URL, USER, PASS);
//            String sql = "UPDATE connexion SET login=?, password=?, profil=? WHERE id=?";
//            stmt = conn.prepareStatement(sql);
//            stmt.setString(1, user.getLogin());
//            stmt.setString(2, user.getPassword());
//            stmt.setInt(3, user.getProfil());
//            stmt.setInt(4, user.getId());
//            stmt.executeUpdate();
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            try {
//                if(stmt != null) stmt.close();
//                if(conn != null) conn.close();
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
//        }
//    }


    public void updateUser(User user) {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            String sql = "UPDATE connexion SET login=?, password=?, profil=? WHERE id=?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, user.getLogin());
            stmt.setString(2, user.getPassword());
            stmt.setInt(3, user.getProfil());
            stmt.setInt(4, user.getId());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if(stmt != null) stmt.close();
                if(conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public void deleteUser(int id) {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            String sql = "DELETE FROM connexion WHERE id=?";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if(stmt != null) stmt.close();
                if(conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public List<User> getAllUsers() {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        List<User> users = new ArrayList<User>();

        try {
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            stmt = conn.createStatement();
            String sql = "SELECT * FROM connexion";
            rs = stmt.executeQuery(sql);
            while(rs.next()) {
                int id = rs.getInt("id");
                String login = rs.getString("login");
                String password = rs.getString("password");
                int profil = rs.getInt("profil");
                User user = new User(login, password, profil);
                user.setId(id);
                users.add(user);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if(rs != null) rs.close();
                if(stmt != null) stmt.close();
                if(conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return users;
    }

}





//tesssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssst
//
//
//package com.example.specialejsp;
//
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.List;
//
//public class AdminDAO {
//
//    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
//    private static final String DB_URL = "jdbc:mysql://localhost:3306/tennis?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=Europe/Paris";
//    private static final String USER = "root";
//    private static final String PASS = "";
//
//    public void addConnexion(Connexion connexion) {
//        Connection conn = null;
//        PreparedStatement stmt = null;
//
//        try {
//            Class.forName(JDBC_DRIVER);
//            conn = DriverManager.getConnection(DB_URL, USER, PASS);
//            String sql = "INSERT INTO connexion (login, password, profil) VALUES (?, ?, ?)";
//            stmt = conn.prepareStatement(sql);
//            stmt.setString(1, connexion.getLogin());
//            stmt.setString(2, connexion.getPassword());
//            stmt.setInt(3, connexion.getProfil());
//            stmt.executeUpdate();
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            try {
//                if(stmt != null) stmt.close();
//                if(conn != null) conn.close();
//
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
//        }
//    }
//
//    public void updateConnexion(Connexion connexion) {
//        Connection conn = null;
//        PreparedStatement stmt = null;
//
//        try {
//            Class.forName(JDBC_DRIVER);
//            conn = DriverManager.getConnection(DB_URL, USER, PASS);
//            String sql = "UPDATE connexion SET login=?, password=?, profil=? WHERE id=?";
//            stmt = conn.prepareStatement(sql);
//            stmt.setString(1, connexion.getLogin());
//            stmt.setString(2, connexion.getPassword());
//            stmt.setInt(3, connexion.getProfil());
//            stmt.setInt(4, connexion.getId());
//            stmt.executeUpdate();
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            try {
//                if(stmt != null) stmt.close();
//                if(conn != null) conn.close();
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
//        }
//    }
//
//    public void deleteConnexion(int id) {
//        Connection conn = null;
//        PreparedStatement stmt = null;
//
//        try {
//            Class.forName(JDBC_DRIVER);
//            conn = DriverManager.getConnection(DB_URL, USER, PASS);
//            String sql = "DELETE FROM connexion WHERE id=?";
//            stmt = conn.prepareStatement(sql);
//            stmt.setInt(1, id);
//            stmt.executeUpdate();
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            try {
//                if(stmt != null) stmt.close();
//                if(conn != null) conn.close();
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
//        }
//    }
//
//    public List<Connexion> getAllConnexions() {
//        Connection conn = null;
//        Statement stmt = null;
//        ResultSet rs = null;
//        List<Connexion> connexions = new ArrayList<Connexion>();
//
//        try {
//            Class.forName(JDBC_DRIVER);
//            conn = DriverManager.getConnection(DB_URL, USER, PASS);
//            stmt = conn.createStatement();
//            String sql = "SELECT * FROM connexion";
//            rs = stmt.executeQuery(sql);
//            while(rs.next()) {
//                int id = rs.getInt("id");
//                String login = rs.getString("login");
//                String password = rs.getString("password");
//                int profil = rs.getInt("profil");
//                Connexion connexion = new Connexion(login, password, profil);
//                connexion.setId(id);
//                connexions.add(connexion);
//            }
//        } catch (ClassNotFoundException | SQLException e) {
//            e.printStackTrace();
//        } finally {
//            try {
//                if(rs != null) rs.close();
//                if(stmt != null) stmt.close();
//                if(conn != null) conn.close();
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
//        }
//
//        return connexions;
//    }
//}
//
//
