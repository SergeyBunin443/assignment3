package sergeyAssignment3.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("username") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        String fullName = request.getParameter("fullName");
        String company = request.getParameter("company");
        String payrollId = request.getParameter("payrollId");
        String jobTitle = request.getParameter("jobTitle");
        String department = request.getParameter("department");
        String contact = request.getParameter("contact");

        EmployeeDAO.insert(fullName, company, payrollId, jobTitle, department, contact);
        response.sendRedirect("success.jsp");
    }
}