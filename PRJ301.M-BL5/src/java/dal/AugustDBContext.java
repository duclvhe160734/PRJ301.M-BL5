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
import model.August;
import model.Employee;

/**
 *
 * @author Viet Duc
 */
public class AugustDBContext extends DBContext {

    public ArrayList<August> getAugust(int id) {

        ArrayList<August> au = new ArrayList<>();

        try {
            String sql = "select a.aid,a.day,a.status, a.eid\n"
                    + "from August a\n"
                    + "where a.eid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setObject(1, id);
            ResultSet rs = stm.executeQuery();
            //
            while (rs.next()) {
                August getAugust = new August();
                getAugust.setAid(rs.getInt("aid"));
                getAugust.setDay(rs.getDate("day"));
                getAugust.setStatus(rs.getString("status"));
                au.add(getAugust);
            }

            return au;
        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static void main(String[] args) {

        AugustDBContext e = new AugustDBContext();
        
        
        
        ArrayList<August> emps = e.getAugust(1);
        ArrayList<August> emps2 = e.getAugust(2);
        
        ArrayList<August> aug = new ArrayList<>();
        for (August august : emps2) {
            System.out.println(august.getStatus());
//
        }

    }

}
