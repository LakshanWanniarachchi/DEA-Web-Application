
package Servelets;

import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.sql.*;
import java.util.*;
import java.text.SimpleDateFormat;
import java.util.Date;


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
           
        int  rowAffected = 0;

        try {

      

           

            String sql = "INSERT INTO user (UserName, Email, Password) VALUES (?, ?, ?)";
            
            PreparedStatement pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, Name);
            pstmt.setString(2, Email);
            pstmt.setString(3, Password);
            
            rowAffected = pstmt.executeUpdate();
            if (rowAffected > 0) {
             System.out.println("A new user was inserted successfully!");
            } else {
             System.out.println("Failed to insert the user!");
            }

            

            conn.close();
            
          

        } catch (Exception e) {

           e.printStackTrace();

        }
        
          return rowAffected;
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
            row.setP_image(p_data.getString("image"));
            
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
            Product_data.setP_image(product.getString("image"));
            p_data.add(Product_data);
        }
        
        
            pstmt.close();

            conn.close();
    } catch(Exception e) {
       e.printStackTrace();
    }
    
    return p_data;
}
    
    
    
    
 public String get_user_by_email(String email, String password) {
     
    String user_email = "";

    try {
        String sql = "SELECT * FROM user WHERE Email=? AND Password=?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, email);
        pstmt.setString(2, password);
        ResultSet user_data = pstmt.executeQuery();
        
        // Check if there's any result
        if (user_data.next()) {
            user_email = user_data.getString("Email");
           
        }
        
        // Close ResultSet and PreparedStatement
        
        pstmt.close();
    } catch (SQLException e) {
        // Properly handle exceptions
        e.printStackTrace();
    }
    
    return user_email;
}
 
 public int order_place(int UserId, String address, String mobile, String Email, int PID, int Quantity , double price) {
    

   int rowsAffected = 0;
    
    try {
        
   
        
    String sql = "INSERT INTO `order` (UserId, PID, Billing_Address, Quantity, Mobile, Email, price) VALUES (?, ?, ?, ?, ?,?,?)";
    PreparedStatement pstmt = conn.prepareStatement(sql);
        

        pstmt.setInt(1, UserId);
        pstmt.setInt(2, PID);
        pstmt.setString(3, address);
        pstmt.setInt(4, Quantity);
        pstmt.setString(5, mobile);
        pstmt.setString(6, Email);
        pstmt.setDouble(7, price);
       

        rowsAffected = pstmt.executeUpdate();
    } catch (SQLException e) {
        // Handle SQL exceptions more precisely
        e.printStackTrace(); // Print the exception details for debugging
    } 

    return rowsAffected;
}

  
  
  
  public int get_user_id(String Email, String Password) {
  
  int user_id = 0; 
  try {
        String sql = "SELECT * FROM user WHERE Email=? AND Password=?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, Email);
        pstmt.setString(2, Password);
        ResultSet user_data = pstmt.executeQuery();
        
        // Check if there's any result
        if (user_data.next()) {
            user_id = user_data.getInt("UserId");
           
        }
        
        // Close ResultSet and PreparedStatement
        user_data.close();
        pstmt.close();
    } catch (SQLException e) {
        // Properly handle exceptions
        e.printStackTrace();
    }
  
   
  
  
  
  
  
  
  return user_id;
  
  
  }
  
  
 public List<orders>  getOrdersByUserId(int userId) {
    List<orders> orderList = new ArrayList<>();
    
    try {
        String sql = "SELECT * FROM `order` WHERE UserId = ?;";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, userId);
        ResultSet orders_data = pstmt.executeQuery();

        while (orders_data.next()) {
          orders order = new orders();
          order.setOid(orders_data.getInt("UserId"));
          order.setPID(orders_data.getInt("PID"));
          order.setBilling_Address(orders_data.getString("Billing_Address"));
          order.setQuantity(orders_data.getInt("Quantity"));
          order.setMobile(orders_data.getString("Mobile"));
          order.setEmail(orders_data.getString("Email"));
          order.setPrice(orders_data.getDouble("price"));
          
          orderList.add(order);
            
        }
    } catch (SQLException e) {
        System.out.println("Error: " + e.getMessage());
        e.printStackTrace();
    }
    
    
    return orderList;
}

  
  

  
     
       
}
    

