/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Employee;
import model.Salary;

/**
 *
 * @author Viet Duc
 */
public class SalaryDBContext extends DBContext {

    public ArrayList<Employee> getSa() {

        ArrayList<Employee> emps = new ArrayList<>();

        try {
            String sql = "select e.eid, e.ename,e.position, \n"
                    + "s.salary,s.bonus,s.deduction\n"
                    + "from employee e\n"
                    + "left join salary s\n"
                    + "on e.eid = s.eid";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();

            //
            while (rs.next()) {
                Employee getEmps = new Employee();
                Salary getSa = new Salary();

                getEmps.setEname(rs.getString("ename"));
                getEmps.setPosition(rs.getString("position"));
                getEmps.setEid(rs.getInt("eid"));

                getSa.setSalary(rs.getInt("salary"));
                getSa.setBonus(rs.getInt("bonus"));
                getSa.setDeduction(rs.getInt("deduction"));
                
                getEmps.setSalary(getSa);
                
                emps.add(getEmps);
                
            }
            return emps;

        } //
        catch (SQLException ex) {
            Logger.getLogger(EmployeeDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }
    
        public static void main(String[] args) {
        
        SalaryDBContext e = new SalaryDBContext();
        ArrayList<Employee> emps = e.getSa();
        for (Employee emp : emps) {
            System.out.println(emp.getSalary().getBonus());
        }
        }
    
    
}
