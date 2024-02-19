package alabs.homework.servlets;

import alabs.homework.DBManager.ProductManager;
import alabs.homework.entity.Product;
import alabs.homework.user.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import javax.xml.crypto.Data;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;

@WebServlet(value = "/products")
public class ProductsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("currentUser");
        if(user != null) {
            req.getRequestDispatcher("/JSP/Products.jsp").forward(req, resp);
            return;
        }
        resp.sendRedirect(req.getContextPath() + "/Login");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String method = req.getParameter("_method");
        if ("put".equalsIgnoreCase(method)) {
            doPut(req, resp);
            return;
        }else if("delete".equalsIgnoreCase(method)){
            doDelete(req, resp);
            return;
        }
        String name = req.getParameter("name");
        String description = req.getParameter("description");
        long id = Long.parseLong(req.getParameter("product"));
        System.out.println("AWRAS");
        System.out.println(id);
        ProductManager.changeProduct(new Product(id, name, description));
        resp.sendRedirect(req.getContextPath() + "/products");
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String description = req.getParameter("description");
        ProductManager.addProduct(name, description);
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("currentUser");
        if(user == null) {
            req.getRequestDispatcher("/JSP/Login.jsp").forward(req, resp);
            return;
        }
        resp.sendRedirect(req.getContextPath() + "/products");
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long id = Long.parseLong(req.getParameter("product"));
        ProductManager.deleteProduct(new Product(id));
        resp.sendRedirect(req.getContextPath() + "/products");
    }
}
