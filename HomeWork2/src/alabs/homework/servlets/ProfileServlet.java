package alabs.homework.servlets;

import alabs.homework.user.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(value = "/profile")
public class ProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("currentUser");
        if(user != null) {
            System.out.println("User: " + user.getUsername());
            req.setAttribute("user", user.getUsername());
            req.getRequestDispatcher("/JSP/Profile.jsp").forward(req, resp);
            return;
        }
        resp.sendRedirect(req.getContextPath() + "/Login");
    }
}
