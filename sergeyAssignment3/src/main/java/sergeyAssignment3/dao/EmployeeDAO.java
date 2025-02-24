package sergeyAssignment3.dao;

import java.sql.*;

public class EmployeeDAO {
    public static void insert(String fullName, String company, String payrollId, String jobTitle, String department, String contact) {
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement("INSERT INTO employees (fullName, company, payrollId, jobTitle, department, contact) VALUES (?, ?, ?, ?, ?, ?)")) {
            ps.setString(1, fullName);
            ps.setString(2, company);
            ps.setString(3, payrollId);
            ps.setString(4, jobTitle);
            ps.setString(5, department);
            ps.setString(6, contact);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}