package com.example.specialejsp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
    private String jdbcURL = "jdbc:mysql://localhost/tennis?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=Europe/Paris";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    private static final String SELECT_USER_BY_LOGIN_AND_PASSWORD = "SELECT id, login, password, profil FROM connexion WHERE login = ? AND password = ?";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public User getUser(String login, String password) {
        User user = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_LOGIN_AND_PASSWORD);) {
            preparedStatement.setString(1, login);
            preparedStatement.setString(2, password);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                int profil = rs.getInt("profil");
                user = new User(id, login, password, profil);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
}
