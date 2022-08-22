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
public class SearchDBContext extends DBContext {

    public ArrayList<Employee> searchByName(String name) {
        ArrayList<Employee> stus = new ArrayList<>();
        try {
            String sql = "select eid, ename, position\n"
                    + "from employee where ename like '%"+name+"%'";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Employee s = new Employee();
                s.setEid(rs.getInt("eid"));
                s.setEname(rs.getString("ename"));
                s.setPosition(rs.getString("position"));
                stus.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SearchDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return stus;
    }
}
