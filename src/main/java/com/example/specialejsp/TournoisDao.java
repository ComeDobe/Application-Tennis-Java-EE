package com.example.specialejsp;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class TournoisDao {

    private static final String URL = "jdbc:mysql://localhost/tennis?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=Europe/Paris";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    public void ajouterTournoi(Tournoi tournois) {
        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement statement = connection.prepareStatement("INSERT INTO tournoi (nom, code) VALUES (?, ?)")) {

            statement.setString(1, tournois.getNom());
            statement.setString(2, tournois.getCode());

            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void modifierTournoi(Tournoi tournois) {
        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement statement = connection.prepareStatement("UPDATE tournoi SET nom = ?, code = ? WHERE id = ?")) {

            statement.setString(1, tournois.getNom());
            statement.setString(2, tournois.getCode());
            statement.setInt(3, tournois.getId());

            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void supprimerTournoi(Tournoi tournois) {
        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement statement = connection.prepareStatement("DELETE FROM tournoi WHERE id = ?")) {

            statement.setInt(1, tournois.getId());

            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Tournoi> rechercherTournoi(String recherche) {
        List<Tournoi> tournois = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement statement = connection.prepareStatement("SELECT * FROM tournoi WHERE nom LIKE ? OR code LIKE ?")) {

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

