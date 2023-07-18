

package com.example.specialejsp.dao;
import com.example.specialejsp.model.Match;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MatchDao {

    private static final String URL = "jdbc:mysql://localhost/tennis?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=Europe/Paris";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    public List<Match> rechercherMatches(String recherche) {
        List<Match> matches = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement statement = connection.prepareStatement("SELECT * FROM match_tennis WHERE id_vainqueur IN (SELECT id FROM joueur WHERE nom LIKE ? OR prenom LIKE ? ) OR id_finaliste IN (SELECT id FROM joueur WHERE nom LIKE ? OR prenom LIKE ? )"))
        {

            String rechercheSql = "%" + recherche + "%";
            statement.setString(1, rechercheSql);
            statement.setString(2, rechercheSql);
            statement.setString(3, rechercheSql);
            statement.setString(4, rechercheSql);

            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    int id_vainqueur = resultSet.getInt("id_vainqueur");
                    int id_finaliste = resultSet.getInt("id_finaliste");

                    Match match = new Match(id, id_vainqueur, id_finaliste);
                    matches.add(match);
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return matches;
    }

    public List<Match> listerMatchs() {
        List<Match> matches = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement statement = connection.prepareStatement("SELECT * FROM match_tennis"))
        {
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    int id_vainqueur = resultSet.getInt("id_vainqueur");
                    int id_finaliste = resultSet.getInt("id_finaliste");

                    Match match = new Match(id, id_vainqueur, id_finaliste);
                    matches.add(match);
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return matches;
    }

    public List<Match> rechercherMatchs(String recherche) {
        List<Match> matches = rechercherMatches(recherche);
        return matches;
    }
}
