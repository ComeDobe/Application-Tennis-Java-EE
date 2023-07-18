


package com.example.specialejsp.model;

import java.sql.*;

public class User {
    private int id;
    private String login;
    private String password;
    private int profil;

    private static final String jdbcURL = "jdbc:mysql://localhost/tennis?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=Europe/Paris";
    private static final String jdbcUsername = "root";
    private static final String jdbcPassword = "";

    public User(String login, String password, int profil) {
        this.id = id;
        this.login = login;
        this.password = password;
        this.profil = profil;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getProfil() {
        return profil;
    }

    public void setProfil(int profil) {
        this.profil = profil;
    }

    public static User isValidLogin(String login, String password) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        User user = null;

        try {
            conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

            String sql = "SELECT * FROM connexion WHERE login = ? AND password = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1, login);
            ps.setString(2, password);
            rs = ps.executeQuery();

            if (rs.next()) {
                user = new User(rs.getString("login"), rs.getString("password"), rs.getInt("profil"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return user;
    }

    public boolean save() {
        Connection conn = null;
        PreparedStatement ps = null;
        boolean result = false;

        try {
            conn = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

            String sql = "INSERT INTO connexion (login, password, profil) VALUES (?, ?, ?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1, this.login);
            ps.setString(2, this.password);
            ps.setInt(3, this.profil);
            int rows = ps.executeUpdate();
            if (rows > 0) {
                result = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return result;
    }
}
