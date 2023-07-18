package com.example.specialejsp.controller;

import com.example.specialejsp.dao.AdminDao;
import com.example.specialejsp.model.User;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {

    private AdminDao adminDao; // Instancier l'objet de la classe AdminDAO pour utiliser les méthodes

    public void init() {
        adminDao = new AdminDao(); // Initialisation de l'objet AdminDAO
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if(action != null && action.equals("add")) { // Si l'action est "add" (Ajouter), ajoutez un nouvel utilisateur
            String login = request.getParameter("login");
            String password = request.getParameter("password");
            int profil = Integer.parseInt(request.getParameter("profil"));

            User user = new User(login, password, profil); // Créer un nouvel objet Connexion

            adminDao.addUser(user); // Appel de la méthode addUser de AdminDAO pour ajouter l'utilisateur dans la base de données
        } else if(action != null && action.equals("edit")) { // Si l'action est "edit" (Modifier), mettez à jour l'utilisateur existant
            int id = Integer.parseInt(request.getParameter("id"));
            String login = request.getParameter("login");
            String password = request.getParameter("password");
            int profil = Integer.parseInt(request.getParameter("profil"));

            User user = new User(login, password, profil); // Créer un nouvel objet Connexion avec l'ID existant

            adminDao.updateUser(user); // Appel de la méthode updateUser de AdminDAO pour mettre à jour l'utilisateur dans la base de données




        } else if(action != null && action.equals("edit")) { // Si l'action est "edit" (Modifier), mettez à jour l'utilisateur existant
            int id = Integer.parseInt(request.getParameter("id"));
            String login = request.getParameter("login");
            String password = request.getParameter("password");
            int profil = Integer.parseInt(request.getParameter("profil"));

            User user = new User(login, password, profil); // Créer un nouvel objet User
            user.setId(id); // Définir l'ID de l'objet utilisateur

            adminDao.updateUser(user); // Appel de la méthode updateUser de AdminDAO pour mettre à jour l'utilisateur dans la base de données

    } else if(action != null && action.equals("delete")) { // Si l'action est "delete" (Supprimer), supprimez l'utilisateur existant
            int id = Integer.parseInt(request.getParameter("id"));

            adminDao.deleteUser(id); // Appel de la méthode deleteUser de AdminDAO pour supprimer l'utilisateur dans la base de données
        }

        response.sendRedirect("admin.jsp"); // Rediriger vers la page d'administration après l'ajout, la mise à jour ou la suppression de l'utilisateur
    }
}








//// tessssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssst
//
//package com.example.specialejsp;
//
//import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@WebServlet("/AdminServlet")
//public class AdminServlet extends HttpServlet {
//
//    private AdminDAO adminDAO; // Instancier l'objet de la classe AdminDAO pour utiliser les méthodes
//    private int id;
//
//    public void init() {
//        adminDAO = new AdminDAO(); // Initialisation de l'objet AdminDAO
//    }
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String action = request.getParameter("action");
//
//        if(action != null && action.equals("add")) { // Si l'action est "add" (Ajouter), ajoutez un nouvel utilisateur
//            String login = request.getParameter("login");
//            String password = request.getParameter("password");
//            int profil = Integer.parseInt(request.getParameter("profil"));
//
//            Connexion connexion = new Connexion(login, password, profil); // Créer un nouvel objet Connexion
//
//            adminDAO.addConnexion(connexion); // Appel de la méthode addConnexion de AdminDAO pour ajouter la connexion dans la base de données
//        } else if(action != null && action.equals("edit")) { // Si l'action est "edit" (Modifier), mettez à jour la connexion existante
//            int id = Integer.parseInt(request.getParameter("id"));
//            String login = request.getParameter("login");
//            String password = request.getParameter("password");
//            int profil = Integer.parseInt(request.getParameter("profil"));
//
//            Connexion connexion = new Connexion(login, password, profil); // Créer un nouvel objet Connexion avec l'ID existant
//
//            adminDAO.updateConnexion(connexion); // Appel de la méthode updateConnexion de AdminDAO pour mettre à jour la connexion dans la base de données
//        } else if(action != null && action.equals("delete")) { // Si l'action est "delete" (Supprimer), supprimez la connexion existante
//            int id = Integer.parseInt(request.getParameter("id"));
//
//            adminDAO.deleteConnexion(id); // Appel de la méthode deleteConnexion de AdminDAO pour supprimer la connexion dans la base de données
//        }
//
//        response.sendRedirect("admin.jsp"); // Rediriger vers la page d'administration après l'ajout, la mise à jour ou la suppression de la connexion
//    }
//}
