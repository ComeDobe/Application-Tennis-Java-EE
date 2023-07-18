

import com.example.specialejsp.Tournoi;
import com.example.specialejsp.dao.TournoisDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/tournois")
public class TournoisServlet extends HttpServlet {
    private TournoisDao tournoisDao;

    @Override
    public void init() throws ServletException {
        super.init();
        tournoisDao = new TournoisDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("ajouter".equals(action)) {
            afficherFormulaireAjout(request, response);
        } else if ("editer".equals(action)) {
            afficherFormulaireEdition(request, response);
        } else if ("supprimer".equals(action)) {
            try {
                supprimerTournoi(request, response);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        } else {
            afficherListeTournois(request, response);
        }
    }




    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("ajouter".equals(action)) {
            ajouterTournoi(request, response);
        } else if ("editer".equals(action)) {
            editerTournoi(request, response);
        }
    }

    private void afficherListeTournois(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String recherche = request.getParameter("recherche");
//        List<Tournoi> tournois = tournoisDao.rechercherTournoi(recherche);
//
//        request.setAttribute("tournois", tournois);
//        request.getRequestDispatcher("Tournois.jsp").forward(request, response);

        List<Tournoi> tournois = tournoisDao.rechercherTournoi(recherche);

        for (Tournoi tournoi : tournois) {
            System.out.println("ID: " + tournoi.getId());
        }

        request.setAttribute("tournois", tournois);
        request.getRequestDispatcher("Tournois.jsp").forward(request, response);

    }

    private void afficherFormulaireAjout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("action", "ajouter");
        request.getRequestDispatcher("FormTournoi.jsp").forward(request, response);
    }

    private void ajouterTournoi(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nom = request.getParameter("nom");
        String code = request.getParameter("code");

        Tournoi tournoi = new Tournoi(1, nom, code);
        tournoisDao.ajouterTournoi(tournoi);

        response.sendRedirect("tournois");
    }

    private void afficherFormulaireEdition(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Tournoi tournoi = tournoisDao.getTournoiById(id);

        request.setAttribute("tournoi", tournoi);
        request.setAttribute("action", "editer");
        request.getRequestDispatcher("FormTournoi.jsp").forward(request, response);
    }

    private void editerTournoi(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id").trim());
        String nom = request.getParameter("nom");
        String code = request.getParameter("code");

        Tournoi tournoi = new Tournoi(id, nom, code);
        tournoisDao.editerTournoi(tournoi);

        response.sendRedirect("tournois");
    }


//    private void supprimerTournoi(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        int id = Integer.parseInt(request.getParameter("id"));
//        Tournoi tournoi = tournoisDao.getTournoiById(id);
//        tournoisDao.supprimerTournoi(tournoi);
//
//        response.sendRedirect("tournois");
//    }

//    private void supprimerTournoi(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        int id = Integer.parseInt(request.getParameter("id"));
//        Tournoi tournoi = tournoisDao.getTournoiById(id);
//        if (tournoi != null) {
//            tournoisDao.supprimerTournoi(tournoi);
//        }
//        response.sendRedirect("tournois");
//    }


//    private void supprimerTournoi(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
//        int id = Integer.parseInt(request.getParameter("id").trim());
//        tournoisDao.supprimerTournoi(id);
//
//        response.sendRedirect("tournois");
//    }


    private void supprimerTournoi(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id").trim());
        Tournoi tournoi = tournoisDao.getTournoiById(id);
        if (tournoi != null) {
            tournoisDao.supprimerTournoi(tournoi);
        }

        response.sendRedirect("tournois");
    }


    // dernier ajout

//    private void supprimerTournoi(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
//        String idParameter = request.getParameter("id");
//        int id;
//        try {
//            id = Integer.parseInt(idParameter);
//        } catch (NumberFormatException e) {
//            // l'ID n'est pas valide, rediriger vers la page des tournois
//            response.sendRedirect("tournois");
//            return;
//        }
//        Tournoi tournoi = new Tournoi(id, null, null);
//        tournoisDao.supprimerTournoi(tournoi.getId());
//
//        response.sendRedirect("tournois");
//    }



}




// adaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaataaaaaaaaatioooooooooooooooooooooooooooooooooooooooooooo


//
//package com.example.specialejsp;
//
//import java.io.IOException;
//import java.util.List;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@WebServlet("/TournoisServlet")
//public class TournoisServlet extends HttpServlet {
//    private static final long serialVersionUID = 1L;
//
//    private TournoisDao tournoisDao;
//
//    public void init() {
//        tournoisDao = new TournoisDao();
//    }
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String action = request.getParameter("action");
//
//        if ("ajouter".equals(action)) {
//            String nom = request.getParameter("nom");
//            String code = request.getParameter("code");
//            Tournoi tournoi = new Tournoi(0, nom, code);
//            tournoisDao.ajouterTournoi(tournoi);
//        } else if ("editer".equals(action)) {
//            int id = Integer.parseInt(request.getParameter("id"));
//            String nom = request.getParameter("nom");
//            String code = request.getParameter("code");
//            Tournoi tournoi = new Tournoi(id, nom, code);
//            tournoisDao.editerTournoi(tournoi);
//        } else if ("delete".equals(action)) {
//            int id = Integer.parseInt(request.getParameter("id"));
//            tournoisDao.supprimerTournoi(id);
//        }
//
//        response.sendRedirect("TournoisServlet?action=list");
//    }
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String action = request.getParameter("action");
//        String query = request.getParameter("query");
//
//        if (action == null || action.isEmpty() || "list".equals(action)) {
//            List<Tournoi> tournois;
//            if (query != null && !query.isEmpty()) {
//                String nom = "%" + query + "%";
//                tournois = tournoisDao.rechercherTournois(nom, nom);
//            } else {
//                tournois = tournoisDao.getTournois();
//            }
//            request.setAttribute("tournois", tournois);
//            request.getRequestDispatcher("Tournois.jsp").forward(request, response);
//        } else if ("edit".equals(action)) {
//            int id = Integer.parseInt(request.getParameter("id"));
//            Tournoi tournoi = tournoisDao.getTournoiById(id);
//            request.setAttribute("tournoi", tournoi);
//            request.getRequestDispatcher("editerTournoi.jsp").forward(request, response);
//        }
//    }
//}























// Dernier tessssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssst



//
//package com.example.specialejsp;
//
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.List;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@WebServlet("/tournois")
//public class TournoisServlet extends HttpServlet {
//    private static final long serialVersionUID = 1L;
//    private TournoisDao tournoisDao;
//
//    public TournoisServlet() {
//        super();
//        tournoisDao = new TournoisDao();
//    }
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String action = request.getParameter("action");
//
//        if (action == null) {
//            action = "list";
//        }
//
//        switch (action) {
//            case "new":
//                showNewForm(request, response);
//                break;
//            case "edit":
//                showEditForm(request, response);
//                break;
//            case "delete":
//                deleteTournoi(request, response);
//                break;
//            case "search":
//                searchTournoi(request, response);
//                break;
//            default:
//                listTournoi(request, response);
//                break;
//        }
//    }
//
//    private void listTournoi(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        List<Tournoi> listTournoi = tournoisDao.getAllTournois();
//        request.setAttribute("listTournoi", listTournoi);
//        request.getRequestDispatcher("Tournois.jsp").forward(request, response);
//    }
//
//    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        request.getRequestDispatcher("FormTournoi.jsp").forward(request, response);
//    }
//
//    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        int id = Integer.parseInt(request.getParameter("id"));
//        Tournoi existingTournoi = tournoisDao.getTournoi(id);
//        request.setAttribute("tournoi", existingTournoi);
//        request.getRequestDispatcher("FormTournoi.jsp").forward(request, response);
//    }
//
//    private void deleteTournoi(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        int id = Integer.parseInt(request.getParameter("id"));
//        tournoisDao.deleteTournoi(id);
//        response.sendRedirect("Tournois");
//    }
//
//    private void searchTournoi(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String keyword = request.getParameter("keyword");
//        List<Tournoi> searchResult = tournoisDao.searchTournoi(keyword);
//        request.setAttribute("listTournoi", searchResult);
//        request.getRequestDispatcher("Tournois.jsp").forward(request, response);
//    }
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String id = request.getParameter("id");
//        String nom = request.getParameter("nom");
//        String code = request.getParameter("code");
//        //Tournoi tournoi = new Tournoi(Integer.parseInt(id), nom, code);
//        int idValue = id == null || id.isEmpty() ? 0 : Integer.parseInt(id);
//        Tournoi tournoi = new Tournoi(idValue, nom, code);
//
//        if (id == null || id.isEmpty()) {
//            tournoisDao.addTournoi(tournoi);
//        } else {
//            tournoisDao.updateTournoi(tournoi);
//        }
//        response.sendRedirect("Tournois");
//    }
//
//}
