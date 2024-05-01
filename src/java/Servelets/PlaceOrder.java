/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author laksh
 */
public class PlaceOrder extends HttpServlet {

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
            out.println("<title>Servlet PlaceOrder</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PlaceOrder at " + request.getContextPath() + "</h1>");
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
        response.setContentType("text/html;charset=UTF-8");
        
        HttpSession session = request.getSession();
        
        List<CartData> products = (List<CartData>) session.getAttribute("cart-list");
        PrintWriter out = response.getWriter();
        
        
        int rewAffected =0 ;
        try {
        
        
        String name = request.getParameter("name");
        String home_address = request.getParameter("address");
        String city = request.getParameter("city");
       
        String zip = request.getParameter("zip");
        String mobile = request.getParameter("mobile");
        String email = request.getParameter("email");
        
        
        String address = name+","+home_address+","+city+","+zip;
        
        
        
        
        
        
        
        int user_id = (int) session.getAttribute("user_id");
        
        
        
        database db = new database();
        for (CartData product : products) {
            
            
     
       
            
     rewAffected = db.order_place(user_id, address, mobile, email, product.getPID(), product.getQuentity(),product.getP_Price() );
        
        out.println(user_id +","+ address +","+ mobile +","+ email +","+ product.getPID() +","+ product.getQuentity());
        
        out.println(rewAffected);
        }
        
        
          if (rewAffected >0 ) {
        
        session.removeAttribute("cart-list");
        response.sendRedirect("thankyou.jsp");
        
        
        }
        
        
        
        } catch (Exception e) {
        
        
        System.out.println(e.getMessage());
        
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
