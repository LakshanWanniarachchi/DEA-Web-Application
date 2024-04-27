
package Servelets;

import java.sql.*;
import java.util.*;



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
     

     
     e.printStackTrace();
     

     }
    
    
    }
    
    
    
    
    
       public int create_User(String Name ,String Email , String Password ) {
           
        int UID=0;

        try {

      

           

            String sql = "INSERT INTO user (UserName, Email, Password) VALUES (?, ?, ?)";
            
            PreparedStatement pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, Name);
            pstmt.setString(2, Email);
            pstmt.setString(3, Password);
            
            ResultSet rs = pstmt.executeQuery();
            
            
            while( rs.next()) {
            
               UID =rs.getInt("UserId");
               break;
           
            }

            

            conn.close();
            
          

        } catch (Exception e) {

           e.printStackTrace();

        }
        
          return UID;
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

            e.printStackTrace();

        }
    }
     
     
     
     
     
            public int add_Product(String P_Name ,int P_Quantity ,String P_description ,int P_Price , int A_ID , String image) {
           
        int rowsAffected =0 ;

        try {

      

            Statement stmt = conn.createStatement();

            String sql = "INSERT INTO product (P_Name, P_Quantity, P_description , P_Price, image , A_ID ) VALUES (?, ?, ?, ?, ?,?)";
            
            PreparedStatement pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, P_Name);
            pstmt.setInt(2, P_Quantity);
            pstmt.setString(3, P_description);
            pstmt.setInt(4, P_Price);
            pstmt.setString(5, image);
            pstmt.setInt(6, A_ID);
            
            
            
             rowsAffected = pstmt.executeUpdate();

            System.out.println("Rows affected: " + rowsAffected);

            conn.close();

        } catch (Exception e) {

            e.printStackTrace();

        }
        return rowsAffected;
    }
            
        
            
            
      public List<ProductData> get_all_product () {
           
        List<ProductData> products = new ArrayList<>();

        try {

      

            

            String sql = "Select * from product ";
            
            PreparedStatement pstmt = conn.prepareStatement(sql);
            

            ResultSet p_data = pstmt.executeQuery();
            
            
            while( p_data.next()) {
            
            ProductData row = new ProductData();
            row.setPID(p_data.getInt("PID"));
            row.setP_Name(p_data.getString("P_Name"));
            row.setP_Quantity(p_data.getInt("P_Quantity"));
            row.setP_description(p_data.getString("P_description"));
            row.setP_Price(p_data.getInt("P_Price"));
            
            products.add(row);
            }
            

            pstmt.close();

            conn.close();

        } catch (Exception e) {

           e.printStackTrace();

        }
        
        
        return products;
    }
      
      
      
      
    public List<CartData> get_Product_data_by_id(int ID) {
    
        List<CartData> p_data = new ArrayList<>();
    
    try {
        String sql = "SELECT * FROM product WHERE PID = ?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, ID);
        ResultSet product = pstmt.executeQuery();
        
        while (product.next()) {
            CartData Product_data = new CartData();
            Product_data.setPID(product.getInt("PID"));
            Product_data.setP_Name(product.getString("P_Name"));
            Product_data.setP_Price(product.getInt("P_Price"));
            Product_data.setP_description(product.getString("P_description"));
            p_data.add(Product_data);
        }
        
        
            pstmt.close();

            conn.close();
    } catch(Exception e) {
       e.printStackTrace();
    }
    
    return p_data;
}
    
    
    
    
 public int get_user_by_email(String email, String password) {
    int UID = 0;

    try {
        String sql = "SELECT * FROM user WHERE Email=? AND Password=?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, email);
        pstmt.setString(2, password);
        ResultSet user_data = pstmt.executeQuery();
        
        // Check if there's any result
        if (user_data.next()) {
            UID = user_data.getInt("UserId");
           
        }
        
        // Close ResultSet and PreparedStatement
        user_data.close();
        pstmt.close();
    } catch (SQLException e) {
        // Properly handle exceptions
        e.printStackTrace();
    }
    
    return UID;
}
      
       
}
    

