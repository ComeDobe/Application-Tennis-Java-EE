
// il marche ce code

//package com.example.specialejsp;
//
//import java.io.IOException;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@WebServlet("/UserServlet")
//public class UserServlet extends HttpServlet {
//    private static final long serialVersionUID = 1L;
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String login = request.getParameter("login");
//        String password = request.getParameter("password");
//
//        UserDAO userDao = new UserDAO();
//        User user = userDao.getUser(login, password);
//
//        if (user != null) {
//            request.getSession().setAttribute("user", user);
//            response.sendRedirect("welcome.jsp");
//        } else {
//            request.setAttribute("errorMessage", "Nom d'utilisateur ou mot de passe invalide");
//            request.getRequestDispatcher("users.jsp").forward(request, response);
//        }
//    }
//}



// partie de connexion avec optim administrator







package com.example.specialejsp.controller;

import com.example.specialejsp.dao.UserDAO;
import com.example.specialejsp.model.User;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;



    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        UserDAO userDao = new UserDAO();
        User user = userDao.getUser(login, password);

        if (user != null) {
            if (role.equals("admin") && user.getProfil() == 1) {
                List<User> users = userDao.getAllUsers();
                request.getSession().setAttribute("users", users);
                response.sendRedirect("admin.jsp");
            } else if(role.equals("user")) {
                request.getSession().setAttribute("user", user);
                response.sendRedirect("welcome.jsp");
            } else {
                request.setAttribute("errorMessage", "Vous n'êtes pas autorisé à accéder à cette page.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("errorMessage", "Nom d'utilisateur ou mot de passe invalide");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }


//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String login = request.getParameter("login");
//        String password = request.getParameter("password");
//
//        UserDAO userDao = new UserDAO();
//        User user = userDao.getUser(login, password);
//
//        if (user != null) {
//            if (user.getProfil() == 1) { // Profil = 1 pour un administrateur
//                List<User> users = userDao.getAllUsers();
//                request.getSession().setAttribute("users", users);
//                response.sendRedirect("admin.jsp");
//            } else {
//                request.getSession().setAttribute("user", user);
//                response.sendRedirect("welcome.jsp");
//            }
//        } else {
//            request.setAttribute("errorMessage", "Nom d'utilisateur ou mot de passe invalide");
//            request.getRequestDispatcher("users.jsp").forward(request, response);
//        }
//    }

//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String login = request.getParameter("login");
//        String password = request.getParameter("password");
//        String role = request.getParameter("role");
//
//        UserDAO userDao = new UserDAO();
//        User user = userDao.getUser(login, password);
//
//        if (user != null) {
//            if (role.equals("admin") && user.getProfil() == 1) {
//                List<User> users = userDao.getAllUsers();
//                request.getSession().setAttribute("users", users);
//                response.sendRedirect("admin.jsp");
//            } else {
//                request.getSession().setAttribute("user", user);
//                response.sendRedirect("welcome.jsp"); //welcome
//            }
//        } else {
//            request.setAttribute("errorMessage", "Nom d'utilisateur ou mot de passe invalide");
//            request.getRequestDispatcher("login.jsp").forward(request, response);
//        }
//    }
//
//


}


// tesssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssst

//import com.example.specialejsp.Connexion;
//
//import java.io.IOException;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@WebServlet("/UserServlet")
//public class UserServlet extends HttpServlet {
//
//    private static final long serialVersionUID = 1L;
//
//    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
//    private static final String DB_URL = "jdbc:mysql://localhost:3306/tennis?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=Europe/Paris";
//    private static final String USER = "root";
//    private static final String PASS = "";
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String action = request.getParameter("action");
//
//        if (action != null) {
//            if (action.equals("edit")) {
//                int id = Integer.parseInt(request.getParameter("id"));
//                Connexion connexion = getConnexionById(id);
//                request.setAttribute("connexion", connexion);
//                request.getRequestDispatcher("edit-user.jsp").forward(request, response);
//            } else if (action.equals("delete")) {
//                int id = Integer.parseInt(request.getParameter("id"));
//                deleteConnexion(id);
//                response.sendRedirect("UserServlet");
//            } else if (action.equals("add")) {
//                request.getRequestDispatcher("add-user.jsp").forward(request, response);
//            } else if (action.equals("logout")) {
//                request.getSession().invalidate();
//                response.sendRedirect("login.jsp");
//            }
//        } else {
//            List<Connexion> users = getAllConnexions();
//            request.setAttribute("users", users);
//            request.getRequestDispatcher("admin.jsp").forward(request, response);
//        }
//    }
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String action = request.getParameter("action");
//
//        if (action != null) {
//            if (action.equals("edit")) {
//                int id = Integer.parseInt(request.getParameter("id"));
//                String login = request.getParameter("login");
//                String password = request.getParameter("password");
//                int profil = Integer.parseInt(request.getParameter("profil"));
//                Connexion connexion = new Connexion(login, password, profil);
//                updateConnexion(connexion);
//                response.sendRedirect("UserServlet");
//            } else if (action.equals("add")) {
//                String login = request.getParameter("login");
//                String password = request.getParameter("password");
//                int profil = Integer.parseInt(request.getParameter("profil"));
//                Connexion connexion = new Connexion(login, password, profil);
//                addConnexion(connexion);
//                response.sendRedirect("UserServlet");
//            }
//        }
//    }
//
//    private Connection getConnection() throws SQLException {
//        return DriverManager.getConnection(DB_URL, USER, PASS);
//    }
//
//    private List<Connexion> getAllConnexions() {
//        List<Connexion> connexions = new ArrayList<>();
//        String sql = "SELECT * FROM connexion";
//        try (Connection conn = getConnection();
//             PreparedStatement stmt = conn.prepareStatement(sql);
//             ResultSet rs = stmt.executeQuery()) {
//            while (rs.next()) {
//                int id = rs.getInt("id");
//                String login = rs.getString("login");
//                String password = rs.getString("password");
//                int profil = rs.getInt("profil");
//               Connexion connexion = new Connexion(login, password, profil);
//                connexions.add(connexion);
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return connexions;
//    }
//
//    private Connexion getConnexionById(int id) {
//        Connexion connexion = null;
//        String sql = "SELECT * FROM connexion WHERE id = ?";
//        try (Connection conn = getConnection();
//             PreparedStatement stmt = conn.prepareStatement(sql)) {
//            stmt.setInt(1, id);
//            try (ResultSet rs = stmt.executeQuery()) {
//                if (rs.next()) {
//                    String login = rs.getString("login");
//                    String password = rs.getString("password");
//                    int profil = rs.getInt("profil");
//                    connexion = new Connexion(login, password, profil);
//                }
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return connexion;
//    }
//
//    private void addConnexion(Connexion connexion) {
//        String sql = "INSERT INTO connexion (login, password, profil) VALUES (?, ?, ?)";
//        try (Connection conn = getConnection();
//             PreparedStatement stmt = conn.prepareStatement(sql)) {
//            stmt.setString(1, connexion.getLogin());
//            stmt.setString(2, connexion.getPassword());
//            stmt.setInt(3, connexion.getProfil());
//            stmt.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    private void updateConnexion(Connexion connexion) {
//        String sql = "UPDATE connexion SET login = ?, password = ?, profil = ? WHERE id = ?";
//        try (Connection conn = getConnection();
//             PreparedStatement stmt = conn.prepareStatement(sql)) {
//            stmt.setString(1, connexion.getLogin());
//            stmt.setString(2, connexion.getPassword());
//            stmt.setInt(3, connexion.getProfil());
//            stmt.setInt(4, connexion.getId());
//            stmt.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//    private void deleteConnexion(int id) {
//        String sql = "DELETE FROM connexion WHERE id = ?";
//        try (Connection conn = getConnection();
//             PreparedStatement stmt = conn.prepareStatement(sql)) {
//            stmt.setInt(1, id);
//            stmt.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//    }
//
//}



