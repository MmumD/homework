package home.work.task5;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/task5")
public class Task5Servlet  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("sname");
        String surname = req.getParameter("ssur");
        int grade = Integer.parseInt(req.getParameter("grade"));
        String gradeName;
        if(grade >= 90 && grade <= 100){
            gradeName = "A";
        }else if(grade >= 75 && grade <= 89){
            gradeName = "B";
        }else if(grade >= 60 && grade <= 74){
            gradeName = "C";
        }else if(grade >= 50 && grade <= 59){
            gradeName = "D";
        }else if(grade >= 0 && grade <= 49){
            gradeName = "F";
        }else gradeName = "ERROR";
        req.setAttribute("fullname", name + " " + surname);
        req.setAttribute("grade", gradeName);
        req.getRequestDispatcher("/Task5.jsp").forward(req, resp);
    }
}
