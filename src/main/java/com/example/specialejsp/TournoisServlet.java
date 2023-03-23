


import com.example.specialejsp.Tournoi;
import com.example.specialejsp.TournoisDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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
            supprimerTournoi(request, response);
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
            modifierTournoi(request, response);
        }
    }

    private void afficherListeTournois(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String recherche = request.getParameter("recherche");
        List<Tournoi> tournois = tournoisDao.rechercherTournoi(recherche);

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

        Tournoi tournoi = new Tournoi(0, nom, code);
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

    private void modifierTournoi(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nom = request.getParameter("nom");
        String code = request.getParameter("code");

        Tournoi tournoi = new Tournoi(id, nom, code);
        tournoisDao.modifierTournoi(tournoi);

        response.sendRedirect("tournois");
    }

//    private void supprimerTournoi(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        int id = Integer.parseInt(request.getParameter("id"));
//        Tournoi tournoi = tournoisDao.getTournoiById(id);
//        tournoisDao.supprimerTournoi(tournoi);
//
//        response.sendRedirect("tournois");
//    }

    private void supprimerTournoi(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Tournoi tournoi = tournoisDao.getTournoiById(id);
        if (tournoi != null) {
            tournoisDao.supprimerTournoi(tournoi);
        }
        response.sendRedirect("tournois");
    }


}