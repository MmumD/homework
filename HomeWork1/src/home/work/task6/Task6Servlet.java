package home.work.task6;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(value = "/task6")
public class Task6Servlet  extends HttpServlet {
    public static DBManager manager = new DBManager();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        manager.addStudent(new Student(manager.getId(),"Mukhammed","Marat",19,"SDU"));
        req.setAttribute("manager", manager);
        req.getRequestDispatcher("/Task6.jsp").forward(req, resp);
    }
}
