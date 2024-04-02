/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets;

import java.sql.*;


/**
 *
 * @author lakshitha
 */
public class database {
    
      private final String url = "jdbc:mysql://localhost:3306/web_store";
      private final String Username = "root";
      private final String password = "";
      
      private Connection conn;
    
    public database() {

      
      try {
          

            Class.forName("com.mysql.cj.jdbc.Driver");

            conn = DriverManager.getConnection(this.url,this.Username, this.password);
          
          
          
          
     } catch (Exception e) {
     

     
       System.out.println(e.getMessage());
     

     }
    
    
    }
    
    
    
    
    
       public void create_User(String Name ,String Email , String Password ) {
           
        

        try {

      

            Statement stmt = conn.createStatement();

            String sql = "INSERT INTO user (UserName, Email, Password) VALUES (?, ?, ?)";
            
            PreparedStatement pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, Name);
            pstmt.setString(2, Email);
            pstmt.setString(3, Password);
            
            int rowsAffected = pstmt.executeUpdate();

            System.out.println("Rows affected: " + rowsAffected);

            conn.close();

        } catch (Exception e) {

            System.out.println(e.getMessage());

        }
    }
       
       
     public void create_Admin(String Name ,String Email , String Password ) {
           
        

        try {

      

            Statement stmt = conn.createStatement();

            String sql = "INSERT INTO admin (Name, Password, Email) VALUES (?, ?, ?)";
            
            PreparedStatement pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, Name);
            pstmt.setString(2, Password);
            pstmt.setString(3, Email);
            
            
            int rowsAffected = pstmt.executeUpdate();

            System.out.println("Rows affected: " + rowsAffected);

            conn.close();

        } catch (Exception e) {

            System.out.println(e.getMessage());

        }
    }
     
     
     
     
     
            public void add_Product(String P_Name ,int P_Quantity ,String P_description ,int P_Price , int A_ID) {
           
        

        try {

      

            Statement stmt = conn.createStatement();

            String sql = "INSERT INTO product (P_Name, P_Quantity, P_description , P_Price , A_ID) VALUES (?, ?, ?, ?, ?)";
            
            PreparedStatement pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, P_Name);
            pstmt.setInt(2, P_Quantity);
            pstmt.setString(3, P_description);
            pstmt.setInt(4, P_Price);
            pstmt.setInt(5, A_ID);
            
            
            
            int rowsAffected = pstmt.executeUpdate();

            System.out.println("Rows affected: " + rowsAffected);

            conn.close();

        } catch (Exception e) {

            System.out.println(e.getMessage());

        }
    }
       
       
       
       
       
}
    

