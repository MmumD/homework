package home.work.task6;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/addStudent")
public class AddStudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        int age = Integer.parseInt(request.getParameter("age"));
        String university = request.getParameter("unic");
        Student student = new Student(Task6Servlet.manager.getId(), name, surname, age, university);
        Task6Servlet.manager.addStudent(student);
        request.setAttribute("manager", Task6Servlet.manager);
        request.getRequestDispatcher("/Task6.jsp").forward(request, response);
    }
}