package home.work.task6;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/removeStudent")
public class RemoveStudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String action = request.getParameter("action");

        if ("remove".equals(action)) {
            String studentId = request.getParameter("studentId");
            Student studentToRemove = findStudentById(studentId);
            
            removeStudent(studentToRemove);
            request.setAttribute("manager", Task6Servlet.manager);
            request.getRequestDispatcher("/Task6.jsp").forward(request, response);
        }else if("edit".equals(action)){

        }
    }

    private Student findStudentById(String studentId) {
        List<Student> students = Task6Servlet.manager.getStudentList();
        for (Student student : students) {
            if (student.getId() == Long.parseLong(studentId)) {
                return student;
            }
        }
        return null;
    }

    private void removeStudent(Student student) {
        Task6Servlet.manager.removeStudent(student);
    }
}