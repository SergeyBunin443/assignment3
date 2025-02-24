package sergeyAssignment3.model;

public class Employee {
    private String fullName;
    private String company;
    private String payrollId;
    private String jobTitle;
    private String department;
    private String contact;
    
    public Employee(String fullName, String company, String payrollId, String jobTitle, String department, String contact) {
        this.fullName = fullName;
        this.company = company;
        this.payrollId = payrollId;
        this.jobTitle = jobTitle;
        this.department = department;
        this.contact = contact;
    }

    public String getFullName() { return fullName; }
    public String getCompany() { return company; }
    public String getPayrollId() { return payrollId; }
    public String getJobTitle() { return jobTitle; }
    public String getDepartment() { return department; }
    public String getContact() { return contact; }
}