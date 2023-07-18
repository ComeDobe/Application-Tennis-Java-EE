package com.example.specialejsp.dao;

import com.example.specialejsp.model.Epreuve;
import com.example.specialejsp.model.Joueur;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EpreuveDao {

    private Connection connection;

    public EpreuveDao(Connection connection) {
        this.connection = connection;
    }


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


