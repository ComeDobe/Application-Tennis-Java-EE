package com.example.specialejsp;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EpreuveDao {

    private Connection connection;

    public EpreuveDao(Connection connection) {
        this.connection = connection;
    }


//    public List<Joueur> getJoueurs(int annee, char type_epreuve) throws SQLException {
//        List<Joueur> joueurs = new ArrayList<>();
////        String query = "SELECT j.nom, j.prenom FROM joueur j " +
////                "INNER JOIN match_tennis m ON j.id = m.id " +
////                "INNER JOIN epreuve e ON m.id_epreuve = e.id " +
////                "WHERE e.annee = ? AND e.type_epreuve = ? ";
//
//
//        String query = "SELECT j.nom, j.prenom, e.type_epreuve, e.annee FROM joueur j " +
//                "INNER JOIN match_tennis m ON j.id = m.id " +
//                "INNER JOIN epreuve e ON m.id_epreuve = e.id " +
//                "WHERE e.annee = ? AND e.type_epreuve = ?";
//
//
//
//        // String query = "SELECT joueur.nom, joueur.prenom, epreuve.type_epreuve FROM joueur JOIN epreuve ON joueur.id = epreuve.id WHERE epreuve.annee = ?" ;
//
//        try (PreparedStatement statement = connection.prepareStatement(query)) {
//            statement.setInt(1, annee);
//            statement.setString(2, String.valueOf(type_epreuve));
//            ResultSet resultSet = statement.executeQuery();
//            while (resultSet.next()) {
//                String nom = resultSet.getString("nom");
//                String prenom = resultSet.getString("prenom");
//                Joueur joueur = new Joueur(nom, prenom);
//                joueurs.add(joueur);
//            }
//        }
//        return joueurs;
//    }




    public List<Joueur> getJoueurs(int annee, char type_epreuve) throws SQLException {
        List<Joueur> joueurs = new ArrayList<>();

        String query = "SELECT j.nom, j.prenom, e.type_epreuve, e.annee FROM joueur j " +
                "INNER JOIN match_tennis m ON j.id = m.id " +
                "INNER JOIN epreuve e ON m.id_epreuve = e.id " +
                "WHERE e.annee = ? AND e.type_epreuve = ?";

        try (PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, annee);
            statement.setString(2, String.valueOf(type_epreuve));
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                String nom = resultSet.getString("nom");
                String prenom = resultSet.getString("prenom");
                String typeEpreuve = resultSet.getString("type_epreuve");
                int anneeEpreuve = resultSet.getInt("annee");

                Epreuve epreuve = new Epreuve(typeEpreuve, anneeEpreuve);
                Joueur joueur = new Joueur(nom, prenom, epreuve.toString());
                joueurs.add(joueur);
            }
        }
        return joueurs;
    }

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        String url = "jdbc:mysql://localhost/tennis?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=Europe/Paris";
        String username = "root";
        String password = "";
        return DriverManager.getConnection(url, username, password);
    }
}



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
//public class EpreuveDao {
//
//    private static final String URL ="jdbc:mysql://localhost/tennis?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=Europe/Paris";
//    private static final String USER = "root";
//    private static final String PASSWORD = "";
//
////    public List<Epreuve> getEpreuves(int annee, char type_epreuve) {
////        List<Epreuve> epreuves = new ArrayList<>();
////        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
////             PreparedStatement statement = connection.prepareStatement("SELECT j.nom, j.prenom FROM joueur j JOIN match_tennis m ON j.id = m.id  JOIN epreuve e ON m.id_epreuve = e.id WHERE e.annee = ? AND type_epreuve = ? ")) {
////            statement.setInt(1, annee);
////            statement.setString(2, String.valueOf(type_epreuve));
////            ResultSet resultSet = statement.executeQuery();
////            while (resultSet.next()) {
////                int id_tournoi = resultSet.getInt("id_tournoi");
////                Epreuve epreuve = new Epreuve(resultSet.getInt("annee"), resultSet.getString("type_epreuve").charAt(0), id_tournoi);
////                epreuves.add(epreuve);
////            }
////        } catch (SQLException e) {
////            e.printStackTrace();
////        }
////        return epreuves;
////    }
//
//
//    public List<Epreuve> getEpreuves(int annee, char type_epreuve) {
//        List<Epreuve> epreuves = new ArrayList<>();
//        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
//             PreparedStatement statement = connection.prepareStatement("SELECT j.nom, j.prenom, e.id_tournoi FROM joueur j JOIN match_tennis m ON j.id = m.id_joueur JOIN epreuve e ON m.id_epreuve = e.id WHERE e.annee = ? AND type_epreuve = ? ")) {
//            statement.setInt(1, annee);
//            statement.setString(2, String.valueOf(type_epreuve));
//            ResultSet resultSet = statement.executeQuery();
//            while (resultSet.next()) {
//                String nom = resultSet.getString("nom");
//                String prenom = resultSet.getString("prenom");
//                int id_tournoi = resultSet.getInt("id_tournoi");
//                Epreuve epreuve = new Epreuve(annee, type_epreuve, id_tournoi, nom, prenom);
//                epreuves.add(epreuve);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return epreuves;
//    }
//
//
//}







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
//public class EpreuveDao {
//
//    private static final String URL ="jdbc:mysql://localhost/tennis?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=Europe/Paris";
//    private static final String USER = "root";
//    private static final String PASSWORD = "";
//
//    public List<Epreuve> getEpreuves(int annee, char type_epreuve) {
//        List<Epreuve> epreuves = new ArrayList<>();
//        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
//             PreparedStatement statement = connection.prepareStatement("SELECT j.nom, j.prenom, e.id_tournoi FROM joueur j JOIN match_tennis m ON j.id = m.id_joueur JOIN epreuve e ON m.id_epreuve = e.id WHERE e.annee = ? AND e.type_epreuve = ? ")) {
//            statement.setInt(1, annee);
//            statement.setString(2, String.valueOf(type_epreuve));
//            ResultSet resultSet = statement.executeQuery();
//            while (resultSet.next()) {
//                String nom = resultSet.getString("nom");
//                String prenom = resultSet.getString("prenom");
//                int id_tournoi = resultSet.getInt("id_tournoi");
//                Epreuve epreuve = new Epreuve(annee, type_epreuve, id_tournoi, nom, prenom);
//                epreuves.add(epreuve);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return epreuves;
//    }
//}
