//package com.example.specialejsp;
//
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.List;
//
//public class TournoisDao {
//
//    private static final String URL = "jdbc:mysql://localhost/tennis?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=Europe/Paris";
//    private static final String USER = "root";
//    private static final String PASSWORD = "";
//
//
////    public void ajouterTournoi(Tournoi tournois) {
////        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
////             PreparedStatement statement = connection.prepareStatement("INSERT INTO tournoi (nom, code) VALUES (?, ?)")) {
////
////            statement.setString(1, tournois.getNom());
////            statement.setString(2, tournois.getCode());
////
////            statement.executeUpdate();
////
////        } catch (SQLException e) {
////            e.printStackTrace();
////        }
////    }
////
//
//
//    public void ajouterTournoi(Tournoi tournoi) {
//        Connection connection = null;
//        PreparedStatement statement = null;
//        try {
//            connection = DriverManager.getConnection(URL, USER, PASSWORD);
//            statement = connection.prepareStatement("INSERT INTO tournoi (nom, code) VALUES (?, ?)");
//
//            statement.setString(1, tournoi.getNom());
//            statement.setString(2, tournoi.getCode());
//
//            statement.executeUpdate();
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        } finally {
//            if (statement != null) {
//                try {
//                    statement.close();
//                } catch (SQLException e) {
//                    e.printStackTrace();
//                }
//            }
//            if (connection != null) {
//                try {
//                    connection.close();
//                } catch (SQLException e) {
//                    e.printStackTrace();
//                }
//            }
//        }
//    }
//
//
//    public void editerTournoi(int tournoi) {
//        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
//            // PreparedStatement statement = connection.prepareStatement("UPDATE tournoi SET nom = ?, code = ? "))
//             PreparedStatement statement = connection.prepareStatement("UPDATE tournoi SET nom = ?, code = ? WHERE id = ?"))
//        {
//
//            statement.setString(1, tournoi.getNom());
//            statement.setString(2, tournoi.getCode());
//            statement.setInt(3, tournoi.getId());
//
//            statement.executeUpdate();
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
////    public void supprimerTournoi(Tournoi tournois) {
////        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
////             PreparedStatement statement = connection.prepareStatement("DELETE FROM tournoi WHERE id = ?")) {
////
////            statement.setInt(1, tournois.getId());
////
////            statement.executeUpdate();
////
////        } catch (SQLException e) {
////            e.printStackTrace();
////        }
////    }
//
//
////    public void supprimerTournoi(int id ) throws SQLException {
////        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
////             //PreparedStatement statement = connection.prepareStatement("DELETE FROM tournoi WHERE id = ? "))
////             PreparedStatement statement = connection.prepareStatement("DELETE FROM tournoi WHERE nom = ? OR code = ?"))
////
////
////        {
////
////            statement.setInt(1, id);
////
////            statement.executeUpdate();
////
////        } catch (SQLException e) {
////            e.printStackTrace();
////        }
////    }
//
//
//    public void supprimerTournoi(int id) throws SQLException {
//        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
//             PreparedStatement statement = connection.prepareStatement("DELETE FROM tournoi WHERE id = ?")) {
//            statement.setInt(1, id);
//            statement.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//
////    public List<Tournoi> rechercherTournoi(String recherche) {
////        List<Tournoi> tournois = new ArrayList<>();
////
////        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
////             PreparedStatement statement = connection.prepareStatement("SELECT * FROM tournoi WHERE nom LIKE ? OR code LIKE ?")) {
////
////            statement.setString(1, "%" + recherche + "%");
////            statement.setString(2, "%" + recherche + "%");
////
////            try (ResultSet resultSet = statement.executeQuery()) {
////                while (resultSet.next()) {
////                    int id = resultSet.getInt("id");
////                    String nom = resultSet.getString("nom");
////                    String code = resultSet.getString("code");
////                    //System.out.println("id: " + id + ", nom: " + nom + ", code: " + code); // Ajoutez cette ligne
////                    Tournoi tournoi = new Tournoi(id, nom, code);
////                    tournois.add(tournoi);
////
////                }
////            }
////
////        } catch (SQLException e) {
////            e.printStackTrace();
////        }
////
////        return tournois;
////    }
//
//
//    public List<Tournoi> rechercherTournoi(String recherche) {
//        List<Tournoi> tournois = new ArrayList<>();
//
//        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
//             PreparedStatement statement = connection.prepareStatement("SELECT id, nom, code FROM tournoi WHERE nom LIKE ? OR code LIKE ?")) {
//
//            statement.setString(1, "%" + recherche + "%");
//            statement.setString(2, "%" + recherche + "%");
//
//            try (ResultSet resultSet = statement.executeQuery()) {
//                while (resultSet.next()) {
//                    int id = resultSet.getInt("id");
//                    String nom = resultSet.getString("nom");
//                    String code = resultSet.getString("code");
//                    Tournoi tournoi = new Tournoi(id, nom, code);
//                    tournois.add(tournoi);
//                }
//            }
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//
//        return tournois;
//    }
//
//
//
//
//    public Tournoi getTournoiById(int id) {
//        Tournoi tournoi = null;
//
//        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
//             PreparedStatement statement = connection.prepareStatement("SELECT * FROM tournoi WHERE id = ?")) {
//
//            statement.setInt(1, id);
//
//            try (ResultSet resultSet = statement.executeQuery()) {
//                if (resultSet.next()) {
//                    String nom = resultSet.getString("nom");
//                    String code = resultSet.getString("code");
//
//                    tournoi = new Tournoi(id, nom, code);
//                }
//            }
//
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//
//        return tournoi;
//    }
//
//}
//


//dernier tesssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssst




package com.example.specialejsp.dao;

import com.example.specialejsp.Tournoi;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TournoisDao {

    private static final String URL = "jdbc:mysql://localhost/tennis?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=Europe/Paris";
    private static final String USER = "root";
    private static final String PASSWORD = "";


    public void ajouterTournoi(Tournoi tournoi) {
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
            statement = connection.prepareStatement("INSERT INTO tournoi (nom, code) VALUES (?, ?)");

            statement.setString(1, tournoi.getNom());
            statement.setString(2, tournoi.getCode());

            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }


    public void editerTournoi(Tournoi tournoi) {
        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement statement = connection.prepareStatement("UPDATE tournoi SET nom = ?, code = ? WHERE id = ?"))
        {

            statement.setString(1, tournoi.getNom());
            statement.setString(2, tournoi.getCode());
            statement.setInt(3, tournoi.getId());

            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public void supprimerTournoi(Tournoi id) throws SQLException {
        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement statement = connection.prepareStatement("DELETE FROM tournoi WHERE id = ?")) {
            statement.setInt(1, id.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Tournoi> rechercherTournoi(String recherche) {
        List<Tournoi> tournois = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement statement = connection.prepareStatement("SELECT id, nom, code FROM tournoi WHERE nom LIKE ? OR code LIKE ?")) {

            statement.setString(1, "%" + recherche + "%");
            statement.setString(2, "%" + recherche + "%");

            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    String nom = resultSet.getString("nom");
                    String code = resultSet.getString("code");
                    Tournoi tournoi = new Tournoi(id, nom, code);
                    tournois.add(tournoi);
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return tournois;
    }

    public Tournoi getTournoiById(int id) {
        Tournoi tournoi = null;

        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement statement = connection.prepareStatement("SELECT * FROM tournoi WHERE id = ?")) {

            statement.setInt(1, id);

            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    String nom = resultSet.getString("nom");
                    String code = resultSet.getString("code");

                    tournoi = new Tournoi(id, nom, code);
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return tournoi;
    }
}






// adaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaptatiooooooooooooooooooooooooooooonnnnnnnnnnnnnnnnnnn


//
//package com.example.specialejsp;
//
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.List;
//
//public class TournoisDao {
//    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
//    private static final String URL = "jdbc:mysql://localhost/tennis?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=Europe/Paris";
//    private static final String USER = "root";
//    private static final String PASSWORD = "";
//    private static final String SELECT_ALL_TOURNOIS = "SELECT * FROM tournoi";
//    private static final String SELECT_TOURNOI_BY_ID = "SELECT * FROM tournoi WHERE id=?";
//    private static final String INSERT_TOURNOI = "INSERT INTO tournoi(nom, code) VALUES (?, ?)";
//    private static final String UPDATE_TOURNOI = "UPDATE tournoi SET nom=?, code=? WHERE id=?";
//    private static final String DELETE_TOURNOI = "DELETE FROM tournoi WHERE id=?";
//    private static final String SELECT_TOURNOIS_BY_NAME_CODE = "SELECT * FROM tournoi WHERE nom LIKE ? AND code LIKE ?";
//
//    public List<Tournoi> getTournois() {
//        List<Tournoi> tournois = new ArrayList<>();
//        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
//             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_TOURNOIS)) {
//            ResultSet resultSet = preparedStatement.executeQuery();
//            while (resultSet.next()) {
//                int id = resultSet.getInt("id");
//                String nom = resultSet.getString("nom");
//                String code = resultSet.getString("code");
//                Tournoi tournoi = new Tournoi(id, nom, code);
//                tournois.add(tournoi);
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//        return tournois;
//    }
//
//    public Tournoi getTournoiById(int id) {
//        Tournoi tournoi = null;
//        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
//             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_TOURNOI_BY_ID)) {
//            preparedStatement.setInt(1, id);
//            ResultSet resultSet = preparedStatement.executeQuery();
//            if (resultSet.next()) {
//                String nom = resultSet.getString("nom");
//                String code = resultSet.getString("code");
//                tournoi = new Tournoi(id, nom, code);
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//        return tournoi;
//    }
//
//    public void ajouterTournoi(Tournoi tournoi) {
//        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
//             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_TOURNOI)) {
//            preparedStatement.setString(1, tournoi.getNom());
//            preparedStatement.setString(2, tournoi.getCode());
//            preparedStatement.executeUpdate();
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//    }
//
//    public void editerTournoi(Tournoi tournoi) {
//        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
//             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_TOURNOI)) {
//            preparedStatement.setString(1, tournoi.getNom());
//            preparedStatement.setString(2, tournoi.getCode());
//            preparedStatement.setInt(3, tournoi.getId());
//            preparedStatement.executeUpdate();
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//    }
//
//    public void supprimerTournoi(int id) {
//        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
//             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_TOURNOI)) {
//            preparedStatement.setInt(1, id);
//            preparedStatement.executeUpdate();
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//    }
//
//
//    public List<Tournoi> rechercherTournois(String nom, String code) {
//        List<Tournoi> tournois = new ArrayList<>();
//        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
//             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_TOURNOIS_BY_NAME_CODE)) {
//            preparedStatement.setString(1, "%" + nom + "%");
//            preparedStatement.setString(2, "%" + code + "%");
//            ResultSet resultSet = preparedStatement.executeQuery();
//            while (resultSet.next()) {
//                int id = resultSet.getInt("id");
//                String nomTournoi = resultSet.getString("nom");
//                String codeTournoi = resultSet.getString("code");
//                Tournoi tournoi = new Tournoi(id, nomTournoi, codeTournoi);
//                tournois.add(tournoi);
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//        return tournois;
//    }
//}
//










//
//package com.example.specialejsp;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//
//public class TournoisDao {
//    private final String jdbcURL = "jdbc:mysql://localhost/tennis?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=Europe/Paris";  // URL de connexion à la base de données
//    private final String jdbcUsername = "root"; // Nom d'utilisateur de la base de données
//    private final String jdbcPassword = ""; // Mot de passe de la base de données
//
//    private final String INSERT_TOURNOI_SQL = "INSERT INTO tournoi (nom, code) VALUES (?, ?)";
//    private final String SELECT_TOURNOI_SQL = "SELECT id, nom, code FROM tournoi WHERE id = ?";
//    private final String SELECT_ALL_TOURNOIS_SQL = "SELECT id, nom, code FROM tournoi";
//    private final String UPDATE_TOURNOI_SQL = "UPDATE tournoi SET nom = ?, code = ? WHERE id = ?";
//    private final String DELETE_TOURNOI_SQL = "DELETE FROM tournoi WHERE id = ?;";
//    private final String SEARCH_TOURNOI_SQL = "SELECT id, nom, code FROM tournoi WHERE nom LIKE ? OR code LIKE ?";
//
//    public TournoisDao() {
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//        }
//    }
//
//    protected Connection getConnection() {
//        Connection connection = null;
//        try {
//            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return connection;
//    }
//
//    public void addTournoi(Tournoi tournoi) {
//        try (Connection connection = getConnection();
//             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_TOURNOI_SQL)) {
//            preparedStatement.setString(1, tournoi.getNom());
//            preparedStatement.setString(2, tournoi.getCode());
//            preparedStatement.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    public void updateTournoi(Tournoi tournoi) {
//        try (Connection connection = getConnection();
//             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_TOURNOI_SQL)) {
//            preparedStatement.setString(1, tournoi.getNom());
//            preparedStatement.setString(2, tournoi.getCode());
//            preparedStatement.setInt(3, tournoi.getId());
//            preparedStatement.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    public void deleteTournoi(int id) {
//        try (Connection connection = getConnection();
//             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_TOURNOI_SQL)) {
//            preparedStatement.setInt(1, id);
//            preparedStatement.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    public Tournoi getTournoi(int id) {
//        Tournoi tournoi = null;
//        try (Connection connection = getConnection();
//             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_TOURNOI_SQL)) {
//            preparedStatement.setInt(1, id);
//            ResultSet rs = preparedStatement.executeQuery();
//            if (rs.next()) {
//                String nom =rs.getString("nom");
//                String code = rs.getString("code");
//                tournoi = new Tournoi(id, nom, code);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return tournoi;
//    }
//
//    public List<Tournoi> getAllTournois() {
//        List<Tournoi> tournois = new ArrayList<>();
//        try (Connection connection = getConnection();
//             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_TOURNOIS_SQL)) {
//            ResultSet rs = preparedStatement.executeQuery();
//            while (rs.next()) {
//                int id = rs.getInt("id");
//                String nom = rs.getString("nom");
//                String code = rs.getString("code");
//                Tournoi tournoi = new Tournoi(id, nom, code);
//                tournois.add(tournoi);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return tournois;
//    }
//
//    public List<Tournoi> searchTournoi(String keyword) {
//        List<Tournoi> result = new ArrayList<>();
//        try (Connection connection = getConnection();
//             PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_TOURNOI_SQL)) {
//            String searchKeyword = "%" + keyword + "%";
//            preparedStatement.setString(1, searchKeyword);
//            preparedStatement.setString(2, searchKeyword);
//            ResultSet rs = preparedStatement.executeQuery();
//            while (rs.next()) {
//                int id = rs.getInt("id");
//                String nom = rs.getString("nom");
//                String code = rs.getString("code");
//                Tournoi tournoi = new Tournoi(id, nom, code);
//                result.add(tournoi);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return result;
//    }
//}


