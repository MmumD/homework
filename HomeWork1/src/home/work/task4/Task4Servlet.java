package home.work.task4;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/task4")
public class Task4Servlet  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("uname");
        String surname = req.getParameter("usur");
        String gender = req.getParameter("gender");
        int age = Integer.parseInt(req.getParameter("age"));
        req.setAttribute("name", name);
        req.setAttribute("surname", surname);
        req.setAttribute("age", age);
        req.setAttribute("gender", gender);
        req.getRequestDispatcher("/Task4.jsp").forward(req, resp);
    }
}
