package com.example.specialejsp.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.specialejsp.dao.EpreuveDao;
import com.example.specialejsp.model.Joueur;

@WebServlet("/epreuve")

public class EpreuveServlet extends HttpServlet {

    private Connection connection;
    private EpreuveDao epreuveDao;

    @Override
    public void init() throws ServletException {
        try {
            connection = EpreuveDao.getConnection();
            epreuveDao = new EpreuveDao(connection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String anneeParam = request.getParameter("annee");
        String typeEpreuveParam = request.getParameter("type_epreuve");
        if (anneeParam == null || typeEpreuveParam == null) {
            // Rediriger l'utilisateur vers une page d'erreur
            response.sendRedirect("erreur.jsp");
            return;
        }
        int annee = Integer.parseInt(anneeParam);
        char typeEpreuve = typeEpreuveParam.charAt(0);
        try {
            List<Joueur> joueurs = epreuveDao.getJoueurs(annee, typeEpreuve);
            request.setAttribute("joueurs", joueurs);
            request.getRequestDispatcher("Epreuves.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }

}




