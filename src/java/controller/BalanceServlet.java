/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.account.Account;
import model.account.AccountDAO;
import model.account.MoneyRequestDAO;
import model.cart.Cart;

/**
 *
 * @author asus
 */
public class BalanceServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BalanceServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BalanceServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        MoneyRequestDAO mrdao = new MoneyRequestDAO();
        if (session.getAttribute("account") == null) {
            response.sendRedirect("login.jsp");
        } else {
            Account acc = (Account) session.getAttribute("account");
            AccountDAO accDAO = new AccountDAO();
            String user_raw = request.getParameter("user");
            String pass_raw = request.getParameter("pass");
            String monney_raw = request.getParameter("money");
            double money;
            String mess = "";
            if (user_raw.equals(acc.getUsername()) && pass_raw.equals(acc.getPassword())) {
                try {
                    money = Double.parseDouble(monney_raw);
                    if(money<0){
                      mess = "Error! Enter negative number";  
                      request.setAttribute("mess", mess);
                     request.getRequestDispatcher("balance.jsp").forward(request, response);
                    }
                    else{
                   mrdao.insertRequest(acc.getId(), money);
                    mess = "Sending request to admin!";
                    session.removeAttribute("account");
                    Account a = accDAO.getAccount(user_raw, pass_raw);
                    session.setAttribute("account", a);
                    request.setAttribute("mess", mess);
                    request.getRequestDispatcher("balance.jsp").forward(request, response);
                    }  
                } catch (Exception e) {

                }
            } else {
                mess = "Username or Password wrong!";
                request.setAttribute("mess", mess);
                request.getRequestDispatcher("balance.jsp").forward(request, response);
            }

        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
