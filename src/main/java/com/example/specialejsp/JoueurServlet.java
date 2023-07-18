



import com.example.specialejsp.model.Joueur;
import com.example.specialejsp.dao.JoueurDAO;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JoueurServlet")
public class JoueurServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        JoueurDAO joueurDAO = new JoueurDAO();

        if ("ajouter".equals(action)) {
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String sexe = request.getParameter("sexe");
            Joueur joueur = new Joueur(nom, prenom, sexe);
            joueurDAO.ajouterJoueur(joueur);
        } else if ("editer".equals(action)) {
//            int id = Integer.parseInt(request.getParameter("id"));
            String idParam = request.getParameter("id");
            int id = (idParam != null && !idParam.isEmpty()) ? Integer.parseInt(idParam) : 0;

            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String sexe = request.getParameter("sexe");
            Joueur joueur = new Joueur(nom, prenom, sexe);
            joueur.setId(id);
            joueurDAO.editerJoueur(joueur);
        } else if ("supprimer".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            joueurDAO.supprimerJoueur(id);
        }

        response.sendRedirect("index.jsp");
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String query = request.getParameter("query");
        String sexe = request.getParameter("sexe");
        JoueurDAO joueurDAO = new JoueurDAO();

        if (action == null || action.isEmpty() || "liste".equals(action)) {
            request.setAttribute("joueurs", joueurDAO.getJoueur());
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else if ("rechercher".equals(action)) {
            request.setAttribute("joueurs", joueurDAO.rechercherJoueurs(query, sexe));
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else if ("editer".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            Joueur joueur = joueurDAO.getJoueurById(id);
            request.setAttribute("joueur", joueur);
            request.getRequestDispatcher("editer.jsp").forward(request, response);
        }
    }


}




