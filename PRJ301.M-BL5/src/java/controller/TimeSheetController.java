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

        //aug: ngày công
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

        
        //đếm ngày có mặt : c
        int count1 = 0;
        for (August august : aug1) {
            if ("c".equals(august.getStatus())) {
                count1++;
            }
        }

        int count2 = 0;
        for (August august : aug2) {
            if ("c".equals(august.getStatus())) {
                count2++;
            }
        }

        int count3 = 0;
        for (August august : aug3) {
            if ("c".equals(august.getStatus())) {
                count3++;
            }
        }

        int count4 = 0;
        for (August august : aug4) {
            if ("c".equals(august.getStatus())) {
                count4++;
            }
        }

        int count5 = 0;
        for (August august : aug5) {
            if ("c".equals(august.getStatus())) {
                count5++;
            }
        }

        int count6 = 0;
        for (August august : aug6) {
            if ("c".equals(august.getStatus())) {
                count6++;
            }
        }

        int count7 = 0;
        for (August august : aug7) {
            if ("c".equals(august.getStatus())) {
                count7++;
            }
        }

        int count8 = 0;
        for (August august : aug8) {
            if ("c".equals(august.getStatus())) {
                count8++;
            }
        }

        int count9 = 0;
        for (August august : aug9) {
            if ("c".equals(august.getStatus())) {
                count9++;
            }
        }

        int count10 = 0;
        for (August august : aug10) {
            if ("c".equals(august.getStatus())) {
                count10++;
            }
        }

        request.setAttribute("count1", count1);
        request.setAttribute("count2", count2);
        request.setAttribute("count3", count3);
        request.setAttribute("count4", count4);
        request.setAttribute("count5", count5);
        request.setAttribute("count6", count6);
        request.setAttribute("count7", count7);
        request.setAttribute("count8", count8);
        request.setAttribute("count9", count9);
        request.setAttribute("count10", count10);

        
        // đếm ngày muộn = m
        int countm1 = 0;
        for (August august : aug1) {
            if ("m".equals(august.getStatus())) {
                countm1++;
            }
        }

        int countm2 = 0;
        for (August august : aug2) {
            if ("m".equals(august.getStatus())) {
                countm2++;
            }
        }

        int countm3 = 0;
        for (August august : aug3) {
            if ("mm".equals(august.getStatus())) {
                countm3++;
            }
        }

        int countm4 = 0;
        for (August august : aug4) {
            if ("m".equals(august.getStatus())) {
                countm4++;
            }
        }

        int countm5 = 0;
        for (August august : aug5) {
            if ("m".equals(august.getStatus())) {
                countm5++;
            }
        }

        int countm6 = 0;
        for (August august : aug6) {
            if ("m".equals(august.getStatus())) {
                countm6++;
            }
        }

        int countm7 = 0;
        for (August august : aug7) {
            if ("m".equals(august.getStatus())) {
                countm7++;
            }
        }

        int countm8 = 0;
        for (August august : aug8) {
            if ("m".equals(august.getStatus())) {
                countm8++;
            }
        }

        int countm9 = 0;
        for (August august : aug9) {
            if ("m".equals(august.getStatus())) {
                countm9++;
            }
        }

        int countm10 = 0;
        for (August august : aug10) {
            if ("m".equals(august.getStatus())) {
                countm10++;
            }
        }

        request.setAttribute("countm1", countm1);
        request.setAttribute("countm2", countm2);
        request.setAttribute("countm3", countm3);
        request.setAttribute("countm4", countm4);
        request.setAttribute("countm5", countm5);
        request.setAttribute("countm6", countm6);
        request.setAttribute("countm7", countm7);
        request.setAttribute("countm8", countm8);
        request.setAttribute("countm9", countm9);
        request.setAttribute("countm10", countm10);
        
        
        
        // đếm ngày nghỉ không phép = k
        int countk1 = 0;
        for (August august : aug1) {
            if ("k".equals(august.getStatus())) {
                countk1++;
            }
        }

        int countk2 = 0;
        for (August august : aug2) {
            if ("k".equals(august.getStatus())) {
                countk2++;
            }
        }

        int countk3 = 0;
        for (August august : aug3) {
            if ("k".equals(august.getStatus())) {
                countk3++;
            }
        }

        int countk4 = 0;
        for (August august : aug4) {
            if ("k".equals(august.getStatus())) {
                countk4++;
            }
        }

        int countk5 = 0;
        for (August august : aug5) {
            if ("k".equals(august.getStatus())) {
                countk5++;
            }
        }

        int countk6 = 0;
        for (August august : aug6) {
            if ("k".equals(august.getStatus())) {
                countk6++;
            }
        }

        int countk7 = 0;
        for (August august : aug7) {
            if ("k".equals(august.getStatus())) {
                countk7++;
            }
        }

        int countk8 = 0;
        for (August august : aug8) {
            if ("k".equals(august.getStatus())) {
                countk8++;
            }
        }

        int countk9 = 0;
        for (August august : aug9) {
            if ("k".equals(august.getStatus())) {
                countk9++;
            }
        }

        int countk10 = 0;
        for (August august : aug10) {
            if ("k".equals(august.getStatus())) {
                countk10++;
            }
        }

        request.setAttribute("countk1", countk1);
        request.setAttribute("countk2", countk2);
        request.setAttribute("countk3", countk3);
        request.setAttribute("countk4", countk4);
        request.setAttribute("countk5", countk5);
        request.setAttribute("countk6", countk6);
        request.setAttribute("countk7", countk7);
        request.setAttribute("countk8", countk8);
        request.setAttribute("countk9", countk9);
        request.setAttribute("countk10", countk10);
        
        
        // đếm ngày nghỉ có phép = p
        int countp1 = 0;
        for (August august : aug1) {
            if ("p".equals(august.getStatus())) {
                countp1++;
            }
        }

        int countp2 = 0;
        for (August august : aug2) {
            if ("p".equals(august.getStatus())) {
                countp2++;
            }
        }

        int countp3 = 0;
        for (August august : aug3) {
            if ("p".equals(august.getStatus())) {
                countp3++;
            }
        }

        int countp4 = 0;
        for (August august : aug4) {
            if ("p".equals(august.getStatus())) {
                countp4++;
            }
        }

        int countp5 = 0;
        for (August august : aug5) {
            if ("p".equals(august.getStatus())) {
                countp5++;
            }
        }

        int countp6 = 0;
        for (August august : aug6) {
            if ("p".equals(august.getStatus())) {
                countp6++;
            }
        }

        int countp7 = 0;
        for (August august : aug7) {
            if ("p".equals(august.getStatus())) {
                countp7++;
            }
        }

        int countp8 = 0;
        for (August august : aug8) {
            if ("p".equals(august.getStatus())) {
                countp8++;
            }
        }

        int countp9 = 0;
        for (August august : aug9) {
            if ("p".equals(august.getStatus())) {
                countp9++;
            }
        }

        int countp10 = 0;
        for (August august : aug10) {
            if ("p".equals(august.getStatus())) {
                countp10++;
            }
        }

        request.setAttribute("countp1", countp1);
        request.setAttribute("countp2", countp2);
        request.setAttribute("countp3", countp3);
        request.setAttribute("countp4", countp4);
        request.setAttribute("countp5", countp5);
        request.setAttribute("countp6", countp6);
        request.setAttribute("countp7", countp7);
        request.setAttribute("countp8", countp8);
        request.setAttribute("countp9", countp9);
        request.setAttribute("countp10", countp10);
        
        
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
