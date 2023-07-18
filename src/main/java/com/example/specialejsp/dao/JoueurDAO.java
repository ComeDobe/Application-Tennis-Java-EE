


//****************************************ce code marche **************************************
//
//package com.example.specialejsp;
//
//import java.sql.*;
//import java.util.ArrayList;
//import java.util.List;
//
//public class JoueurDAO {
//    private Connection connection;
//    private Object joueurs;
//    private static int joueursById;
//
//    // Constructeur
//    public JoueurDAO() {
//        try {
//            // Charger le pilote JDBC
//            Class.forName("com.mysql.cj.jdbc.Driver");
//
//            // Établir la connexion à la base de données
//            connection = DriverManager.getConnection("jdbc:mysql://localhost/tennis?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=Europe/Paris", "root", "");
//
//        } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//            System.err.println("Erreur de chargement du pilote JDBC : " + e.getMessage());
//        } catch (SQLException e) {
//            e.printStackTrace();
//            System.err.println("Erreur de connexion à la base de données : " + e.getMessage());
//        }
//    }
//
//    // Ajouter un joueur
//    public void ajouterJoueur(Joueur joueur) {
//        try {
//            PreparedStatement ps = connection.prepareStatement("INSERT INTO joueur (nom, prenom, sexe) VALUES (?, ?, ?)");
//            ps.setString(1, joueur.getNom());
//            ps.setString(2, joueur.getPrenom());
//            ps.setString(3, joueur.getSexe());
//            ps.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    // Editer un joueur
//    public void editerJoueur(Joueur joueur) {
//        try {
//            PreparedStatement ps = connection.prepareStatement("UPDATE joueur SET nom = ?, prenom = ?, sexe = ? WHERE id = ?");
//            ps.setString(1, joueur.getNom());
//            ps.setString(2, joueur.getPrenom());
//            ps.setString(3, joueur.getSexe());
//            ps.setInt(4, joueur.getId());
//            ps.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    // Supprimer un joueur
//    public void supprimerJoueur(int id) {
//        try {
//            PreparedStatement ps = connection.prepareStatement("DELETE FROM joueur WHERE id = ?");
//            ps.setInt(1, id);
//            ps.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    // Recherche de joueurs
//    public List<Joueur> rechercherJoueurs(String query, String sexe) {
//        List<Joueur> joueurs = new ArrayList<>();
//        try {
//            PreparedStatement ps;
//            if (sexe.isEmpty()) {
//                ps = connection.prepareStatement("SELECT * FROM joueur WHERE nom LIKE ? OR prenom LIKE ?");
//                ps.setString(1, "%" + query + "%");
//                ps.setString(2, "%" + query + "%");
//            } else {
//                ps = connection.prepareStatement("SELECT * FROM joueur WHERE (nom LIKE ? OR prenom LIKE ?) AND sexe = ?");
//                ps.setString(1, "%" + query + "%");
//                ps.setString(2, "%" + query + "%");
//                ps.setString(3, sexe);
//            }
//            ResultSet rs = ps.executeQuery();
//
//            while (rs.next()) {
//                Joueur joueur = new Joueur(rs.getString("nom"), rs.getString("prenom"), rs.getString("sexe"));
//                joueur.setId(rs.getInt("id"));
//                joueurs.add(joueur);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return joueurs;
//    }
//
//
//    public Object getJoueurs() {
//        return joueurs;
//    }
//
//    public static Joueur getJoueurById(int id) {
//        return joueursById;
//    }
//}



package com.example.specialejsp.dao;

import com.example.specialejsp.model.Joueur;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class JoueurDAO {
    private Connection connection;
    private Object joueur;

    // Constructeur
    public JoueurDAO() {
        try {
            // Charger le pilote JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Établir la connexion à la base de données
            connection = DriverManager.getConnection("jdbc:mysql://localhost/tennis?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=Europe/Paris", "root", "");

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.err.println("Erreur de chargement du pilote JDBC : " + e.getMessage());
        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Erreur de connexion à la base de données : " + e.getMessage());
        }
    }

    // Ajouter un joueur
    public void ajouterJoueur(Joueur joueur) {
        try {
            PreparedStatement ps = connection.prepareStatement("INSERT INTO joueur (nom, prenom, sexe) VALUES (?, ?, ?)");
            ps.setString(1, joueur.getNom());
            ps.setString(2, joueur.getPrenom());
            ps.setString(3, joueur.getSexe());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Editer un joueur
    public void editerJoueur(Joueur joueur) {
        try {
            PreparedStatement ps = connection.prepareStatement("UPDATE joueur SET nom = ?, prenom = ?, sexe = ? WHERE id = ?");
            ps.setString(1, joueur.getNom());
            ps.setString(2, joueur.getPrenom());
            ps.setString(3, joueur.getSexe());
            ps.setInt(4, joueur.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Supprimer un joueur
    public void supprimerJoueur(int id) {
        try {
            PreparedStatement ps = connection.prepareStatement("DELETE FROM joueur WHERE id = ?");
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Recherche de joueurs
    public List<Joueur> rechercherJoueurs(String query, String sexe) {
        List<Joueur> joueurs = new ArrayList<>();
        try {
            PreparedStatement ps;
            if (sexe.isEmpty()) {
                ps = connection.prepareStatement("SELECT * FROM joueur WHERE nom LIKE ? OR prenom LIKE ?");
                ps.setString(1, "%" + query + "%");
                ps.setString(2, "%" + query + "%");
            } else {
                ps = connection.prepareStatement("SELECT * FROM joueur WHERE (nom LIKE ? OR prenom LIKE ?) AND sexe = ?");
                ps.setString(1, "%" + query + "%");
                ps.setString(2, "%" + query + "%");
                ps.setString(3, sexe);
            }
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Joueur joueur = new Joueur(rs.getString("nom"), rs.getString("prenom"), rs.getString("sexe"));
                joueur.setId(rs.getInt("id"));
                joueurs.add(joueur);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return joueurs;
    }

    public Joueur getJoueurById(int id) {
        Joueur joueur = null;
        try {
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM joueur WHERE id = ?");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                joueur = new Joueur(rs.getString("nom"), rs.getString("prenom"), rs.getString("sexe"));
                joueur.setId(rs.getInt("id"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return joueur;
    }

    // Liste de tous les joueurs
    public List<Joueur> listerJoueurs() {
        List<Joueur> joueurs = new ArrayList<>();
        try {
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM joueur");

            while (rs.next()) {
                Joueur joueur = new Joueur(rs.getString("nom"), rs.getString("prenom"), rs.getString("sexe"));
                joueur.setId(rs.getInt("id"));
                joueurs.add(joueur);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return joueurs;
    }


    public Object getJoueur() {
        return joueur;
    }
}
