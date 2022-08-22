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

/**
 *
 * @author Viet Duc
 */
public class EmployeeDBContext extends DBContext {

    public ArrayList<Employee> getEmps() {
        ArrayList<Employee> emps = new ArrayList<>();
        try {
            String sql = "select e.eid, e.ename, e.position\n"
                    + "from employee e\n";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            //
            while (rs.next()) {
                Employee getEmps = new Employee();
                getEmps.setEname(rs.getString("ename"));
                getEmps.setPosition(rs.getString("position"));
                getEmps.setEid(rs.getInt("eid"));
                emps.add(getEmps);
            }
                return emps;
        } 
        catch (SQLException ex) {
            Logger.getLogger(EmployeeDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }       
    
    public static void main(String[] args) {
        
        EmployeeDBContext e = new EmployeeDBContext();
        ArrayList<Employee> emps = e.getEmps();
        for (Employee emp : emps) {
            System.out.println(emp.getEname());
        }
            
        
    }

}
