


package com.example.specialejsp.controller;

import com.example.specialejsp.dao.JoueurDAO;
import com.example.specialejsp.dao.MatchDao;
import com.example.specialejsp.model.Joueur;
import com.example.specialejsp.model.Match;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/matchs")
public class MatchServlet extends HttpServlet {
    private MatchDao matchDao;
    private JoueurDAO joueurDao;

    @Override
    public void init() throws ServletException {
        super.init();
        matchDao = new MatchDao();
        joueurDao = new JoueurDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("rechercher".equals(action)) {
            rechercherMatchs(request, response);
        } else {
            afficherListeMatchs(request, response);
        }
    }

    private void afficherListeMatchs(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Match> matchs = matchDao.listerMatchs();

        Map<Integer, Joueur> joueurs = new HashMap<>();
        for (Match match : matchs) {
            int id_vainqueur = match.getId_vainqueur();
            int id_finaliste = match.getId_finaliste();

            if (!joueurs.containsKey(id_vainqueur)) {
                joueurs.put(id_vainqueur, joueurDao.getJoueurById(id_vainqueur));
            }

            if (!joueurs.containsKey(id_finaliste)) {
                joueurs.put(id_finaliste, joueurDao.getJoueurById(id_finaliste));
            }
        }

        request.setAttribute("matchs", matchs);
        request.setAttribute("joueurs", joueurs);
        request.getRequestDispatcher("Matchs.jsp").forward(request, response);
    }


    private void rechercherMatchs(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String recherche = request.getParameter("recherche");
        List<Match> matchs = matchDao.rechercherMatchs(recherche);

        Map<Integer, Joueur> joueurs = new HashMap<>();
        for (Match match : matchs) {
            int id_vainqueur = match.getId_vainqueur();
            int id_finaliste = match.getId_finaliste();

            if (!joueurs.containsKey(id_vainqueur)) {
                joueurs.put(id_vainqueur, joueurDao.getJoueurById(id_vainqueur));
            }

            if (!joueurs.containsKey(id_finaliste)) {
                joueurs.put(id_finaliste, joueurDao.getJoueurById(id_finaliste));
            }
        }

        request.setAttribute("matchs", matchs);
        request.setAttribute("joueurs", joueurs);
        request.getRequestDispatcher("Matchs.jsp").forward(request, response);
    }

}
