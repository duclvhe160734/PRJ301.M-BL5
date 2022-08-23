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

    public ArrayList<Salary> getSa() {

        ArrayList<Salary> sal = new ArrayList<>();

        try {
            String sql = "select e.eid, e.ename,e.position, \n"
                    + "s.basic,s.bonus,s.deduction\n"
                    + "from employee e\n"
                    + "left join salary s\n"
                    + "on e.sid = s.sid";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();

            //
            while (rs.next()) {
                Salary getSa = new Salary();
                

                getSa.setBasic(rs.getInt("basic"));
                getSa.setBonus(rs.getInt("bonus"));
                getSa.setDeduction(rs.getInt("deduction"));

                sal.add(getSa);
                
            }
            return sal;
        } //
        catch (SQLException ex) {
            Logger.getLogger(EmployeeDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public static void main(String[] args) {

        SalaryDBContext e = new SalaryDBContext();
        ArrayList<Salary> emps = e.getSa();
        for (Salary emp : emps) {
            System.out.println(emp.getDeduction());
        }
    }

}
