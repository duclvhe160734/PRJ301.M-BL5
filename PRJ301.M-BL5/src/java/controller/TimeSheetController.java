/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AugustDBContext;
import dal.EmployeeDBContext;
import dal.SearchDBContext;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.August;
import model.Employee;

/**
 *
 * @author Viet Duc
 */
public class TimeSheetController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //
        EmployeeDBContext em = new EmployeeDBContext();
        ArrayList<Employee> emps = em.getEmps();
        request.setAttribute("emps", emps);
        AugustDBContext au = new AugustDBContext();
        
        ArrayList<August> aug1 = au.getAugust(1);
        ArrayList<August> aug2 = au.getAugust(2);
        ArrayList<August> aug3 = au.getAugust(3);
        ArrayList<August> aug4 = au.getAugust(4);
        ArrayList<August> aug5 = au.getAugust(5);
        ArrayList<August> aug6 = au.getAugust(6);
        ArrayList<August> aug7 = au.getAugust(7);
        ArrayList<August> aug8 = au.getAugust(8);
        ArrayList<August> aug9 = au.getAugust(9);
        ArrayList<August> aug10 = au.getAugust(10);
        
        
        
        
        request.setAttribute("aug1", aug1);
        request.setAttribute("aug2", aug2);
        request.setAttribute("aug3", aug3);
        request.setAttribute("aug4", aug4);
        request.setAttribute("aug5", aug5);
        request.setAttribute("aug6", aug6);
        request.setAttribute("aug7", aug7);
        request.setAttribute("aug8", aug8);
        request.setAttribute("aug9", aug9);
        request.setAttribute("aug10", aug10);
        
        request.getRequestDispatcher("view/TimeSheet.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        SearchDBContext sdb = new SearchDBContext();
        ArrayList<Employee> stus = sdb.searchByName(name);
        request.setAttribute("stus", stus);

        request.getRequestDispatcher("view/view.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
