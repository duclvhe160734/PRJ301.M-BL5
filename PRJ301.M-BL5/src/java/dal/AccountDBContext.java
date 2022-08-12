/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author Viet Duc
 */
public class AccountDBContext extends DBContext{
        public Account getAccount(String username, String password) {
        try {
            String sql = "SELECT [username]\n"
                    + "      ,[password]\n"
                    + "      ,[qid]\n"
                    + "      ,[answer]\n"
                    + "  FROM [Account]\n"
                    + "  WHERE [username] = ?\n"
                    + "  AND [password] = ?";

            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, username);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Account account = new Account();
                account.setUsername(username);
                return account;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
