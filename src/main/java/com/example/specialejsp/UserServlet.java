package com.example.specialejsp;

import java.io.IOException;

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

        UserDAO userDao = new UserDAO();
        User user = userDao.getUser(login, password);

        if (user != null) {
            request.getSession().setAttribute("user", user);
            response.sendRedirect("welcome.jsp");
        } else {
            request.setAttribute("errorMessage", "Nom d'utilisateur ou mot de passe invalide");
            request.getRequestDispatcher("users.jsp").forward(request, response);
        }
    }
}
