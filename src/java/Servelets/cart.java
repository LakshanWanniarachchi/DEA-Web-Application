/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
public class cart extends HttpServlet {

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
            out.println("<title>Servlet cart</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet cart at " + request.getContextPath() + "</h1>");
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
       
         response.setContentType("text/html;charset=UTF-8");
         
         
         try(PrintWriter out = response.getWriter()) {
  
         List<CartData> CartList = new ArrayList<>();
         
         int id = Integer.parseInt(request.getParameter("id")) ;
         
         database db = new database();
         
         
         List<CartData> p_data = db.get_Product_data_by_id(id);
         
         CartData cart = new CartData();
         
         for (CartData p : p_data ){
         
         cart.setPID(p.getPID());
         cart.setP_Name(p.getP_Name());
         cart.setP_description(p.getP_description());
         cart.setP_Price(p.getP_Price());
         cart.setP_Quantity(p.getP_Quantity());
         
        
         }
         
         
         
         HttpSession session = request.getSession();

         List<CartData> cart_list = (List<CartData>) session.getAttribute("cart-list");
         
        
        //check session already created and set cartList 
        if (cart_list==null) {
        
        CartList.add(cart);
        
        session.setAttribute("cart-list", CartList);
        out.println("session create and product list add!");
        response.sendRedirect("index.jsp");
        } 
        
        //if cart list allread exist, check product all ready exist in cart list
        
        else {
            
            CartList = cart_list;
            boolean exist =false;
            
            for (CartData  car_product : CartList ) {
            
              if (car_product.getPID()==id) {
              
              exist = true;
              out.println("Product All read exist !"+car_product.getP_Name());
              response.sendRedirect("index.jsp");
              break;
              
              
              }
            
            }
            
            //not exist product add to session list product
            if (!exist) {
            
            
            CartList.add(cart);
            session.setAttribute("cart-list", CartList);
            out.println("product add"+cart.getP_Name());
             response.sendRedirect("index.jsp");
            }
          
        
        
        
        }
        
        
        } catch(Exception e) 
        
        
        
        {System.out.println(e);}
        
        
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
        processRequest(request, response);
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
