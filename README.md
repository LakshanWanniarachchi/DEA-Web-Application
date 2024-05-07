# DEA Web Application

| Student Name                       | Student ID | Task                                                                                   |
|------------------------------------|------------|----------------------------------------------------------------------------------------|
| Lakshitha W A K L                  | 28508      | Database, Add product, Remove Product Servlet, Edit Product Servlet                   |
| Chathumal T G A                    | 28787      | Admin Page, Cart Servlet                                                               |
| Dhananjaya W P M                   | 28836      | PlaceOrder Servlet, Register Servlet                                                  |
| Sripathi Udayakantha M G S R       | 29024      | Data Model Class (Order, Product, Cart)                                               |
| Ekanayake E M B B                  | 29332      | Login Servlet, Cart Remove Servlet, Cart Update Servlet                                |
| Rathnayake R M C N                 | 28954      | About Page                                                                             |
| Jayasinghe K W N D M               | 29296      | Product Page                                                                           |
| Gangoda G M D L                    | 28686      | Register Page                                                                          |
| Rajapaksha R B D S                 | 28483      | Cart Page                                                                              |
| Dilupshi N P S                     | 28606      | Checkout Page                                                                          |



### 1. Challenge:
Sometimes MySQL server in XAMPP has crashed.

Solution:
First, I deleted the following files from the data folder in XAMPP.

![image](https://github.com/LakshanWanniarachchi/DEA-Web-Application/assets/134108423/81c36553-b363-4a07-9017-96c08aeeecc2)


Then, I took a copy from the backup folder and added them to the data folder.


![image](https://github.com/LakshanWanniarachchi/DEA-Web-Application/assets/134108423/0f055c60-d5af-4514-958f-10af4ac2014c)

After that MySQL server worked properly.

### 2. Challenge:

Without MySQLconnector we can’t access to the database.

![image](https://github.com/LakshanWanniarachchi/DEA-Web-Application/assets/134108423/c0a724bb-0ed8-4f5a-a985-b941a785357b)

As an example the products can’t be seen without the mysql-connector.
Solution:
After adding mysql-connector we can establish the database connection and be able to access to the data in the database.

![image](https://github.com/LakshanWanniarachchi/DEA-Web-Application/assets/134108423/211f1ed9-6cae-4b98-bfc9-05ffddc416cf)

![image](https://github.com/LakshanWanniarachchi/DEA-Web-Application/assets/134108423/9bfc007e-e7be-482a-a876-47eb55468bec)


### 3. Error:

Sometimes data cannot be added to the database properly.
The error shown when adding data is,

![image](https://github.com/LakshanWanniarachchi/DEA-Web-Application/assets/134108423/847add21-f1d5-4648-b00e-784364f461b9)

Solution:
Increased the length of the data types of the database.

![image](https://github.com/LakshanWanniarachchi/DEA-Web-Application/assets/134108423/49d2a5ca-53dd-43f7-b6e3-94139f7c607a)

### 4. Error:

While uploading the project to the repository in Git-Hub, WEB- INF file was not pushed correctly.

![image](https://github.com/LakshanWanniarachchi/DEA-Web-Application/assets/134108423/93dc5e5a-912c-401d-ad20-b3d1edda2ddf)

Solution:
Create the WEB-INF file in the project manually.

![image](https://github.com/LakshanWanniarachchi/DEA-Web-Application/assets/134108423/f0799383-bb2d-4daa-8d7d-71029c45bb08)

![image](https://github.com/LakshanWanniarachchi/DEA-Web-Application/assets/134108423/66512459-ca2f-408b-97f0-03dfa9a99d00)


# Summery of web application functions:
  
### 1. Getting all the product details from the database

```java
  public List < ProductData > get_all_product() {

    List < ProductData > products = new ArrayList < > ();

    try {

      String sql = "Select * from product ";

      PreparedStatement pstmt = conn.prepareStatement(sql);

      ResultSet p_data = pstmt.executeQuery();

      while (p_data.next()) {

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
```

![image](https://github.com/LakshanWanniarachchi/DEA-Web-Application/assets/134108423/c3274f70-7b18-4845-ad14-50f09f76c160)


### 2. Add to Cart Function

```java 
 protected void doGet(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {

   response.setContentType("text/html;charset=UTF-8");

   try (PrintWriter out = response.getWriter()) {

     int id = Integer.parseInt(request.getParameter("id"));

     database db = new database();

     List < CartData > p_data = db.get_Product_data_by_id(id);
     CartData productToAdd = p_data.get(0);
     productToAdd.setQuentity(1);

     HttpSession session = request.getSession();

     List < CartData > cart_list = (List < CartData > ) session.getAttribute("cart-list");

     //check session already created and set cartList 
     if (cart_list == null) {

       cart_list = new ArrayList < > ();

       cart_list.add(productToAdd);

       session.setAttribute("cart-list", cart_list);
       out.println("session create and product list add!");
       response.sendRedirect("index.jsp");
     }

     //if cart list allread exist, check product all ready exist in cart list
     else {

       boolean exist = false;

       for (CartData car_product: cart_list) {

         if (car_product.getPID() == id) {

           exist = true;
           out.println("Product All read exist !" + car_product.getP_Name());
           response.sendRedirect("index.jsp");
           break;

         }

       }

       //not exist product add to session list product
       if (!exist) {

         cart_list.add(productToAdd);
         session.setAttribute("cart-list", cart_list);
         out.println("product add" + productToAdd.getP_Name());
         response.sendRedirect("index.jsp");
       }

     }

   } catch (Exception e)

   {
     System.out.println(e);
   }

 }




```

![image](https://github.com/LakshanWanniarachchi/DEA-Web-Application/assets/134108423/c228bb61-8a94-4cc9-9b38-3234af442c74)

### 3. Product Quantity Update Method


![image](https://github.com/LakshanWanniarachchi/DEA-Web-Application/assets/134108423/8998a494-3d39-4d45-950a-2fa3446a86ed)

```java
 protected void doGet(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {

   try (PrintWriter out = response.getWriter()) {

     int PID = Integer.parseInt(request.getParameter("PID"));
     int qyt = Integer.parseInt(request.getParameter("quantity"));

     System.out.println(PID);

     HttpSession session = request.getSession();
     List < CartData > cartList = (List < CartData > ) session.getAttribute("cart-list");

     for (CartData product: cartList) {
       if (PID == product.getPID()) {

         product.setQuentity(qyt);
         break;
       }
     }

     session.setAttribute("cart-list", cartList);

     response.sendRedirect("CartPage.jsp");

   } catch (Exception e) {

     System.out.println(e);

   }

 }
```

### 3. Product cart remove Method

![image](https://github.com/LakshanWanniarachchi/DEA-Web-Application/assets/134108423/acc9f52a-de4d-4509-aca7-1408ea3d2b77)

```java 
 protected void doGet(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {

   try (PrintWriter out = response.getWriter()) {

     int PID = Integer.parseInt(request.getParameter("PID"));

     HttpSession session = request.getSession();
     List < CartData > cartList = (List < CartData > ) session.getAttribute("cart-list");

     for (CartData product: cartList) {
       if (PID == product.getPID()) {

         cartList.remove(product);
         break;
       }
     }

     session.setAttribute("cart-list", cartList);

     response.sendRedirect("CartPage.jsp");

   } catch (Exception e) {

     System.out.println(e);

   }

 }

```
### 4. User login Method

![image](https://github.com/LakshanWanniarachchi/DEA-Web-Application/assets/134108423/4a2727a3-5cd6-4932-831a-74d7560621a6)


```java

 protected void doPost(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {

   try (PrintWriter out = response.getWriter()) {

     String email = request.getParameter("email");
     String Password = request.getParameter("password");

     database db = new database();

     String user_email = db.get_user_by_email(email, Password);

     if (email.equals(user_email)) {

       int user_id = db.get_user_id(email, Password);
       HttpSession session = request.getSession();
       session.setAttribute("user_email", user_email);
       session.setAttribute("user_id", user_id);
       response.sendRedirect("index.jsp");

     } else {

       request.setAttribute("error", "Email or Password Incorrect!");

       RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
       dispatcher.forward(request, response);
       response.sendRedirect("login.jsp");
       response.setStatus(HttpServletResponse.SC_OK);

     }

   } catch (Exception e) {

     System.out.println(e.getMessage());

   }

 }
```

### 5. User Register Method

```java
protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {

  response.setContentType("text/html;charset=UTF-8");
  PrintWriter out = response.getWriter();

  try {
    String uname = request.getParameter("user-name");
    String password = request.getParameter("user-password");
    String Email = request.getParameter("user-email");

    database db = new database();

    int rowAffected = db.create_User(uname, Email, password);

    if (rowAffected > 0) {
      HttpSession session = request.getSession();

      session.setAttribute("user_email", Email);

      int user_id = db.get_user_id(Email, password);
      session.setAttribute("user_id", user_id);
      response.sendRedirect("index.jsp");
    } else {
      response.setStatus(HttpServletResponse.SC_FORBIDDEN);
      out.println("Failed to create user.");
    }
  } catch (Exception e) {
    response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
    out.println("An error occurred: " + e.getMessage());
    // You may want to log the exception for debugging purposes
    e.printStackTrace();
  } finally {
    out.close();
    // Close any other resources like database connections
  }

}
```

Database Function 
```java
  public int create_User(String Name, String Email, String Password) {

    int rowAffected = 0;

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
```


### 6.Place Order Method

servelet function 
```java

protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
  response.setContentType("text/html;charset=UTF-8");

  HttpSession session = request.getSession();

  List < CartData > products = (List < CartData > ) session.getAttribute("cart-list");
  PrintWriter out = response.getWriter();

  int rewAffected = 0;
  try {

    String name = request.getParameter("name");
    String home_address = request.getParameter("address");
    String city = request.getParameter("city");

    String zip = request.getParameter("zip");
    String mobile = request.getParameter("mobile");
    String email = request.getParameter("email");

    String address = name + "," + home_address + "," + city + "," + zip;

    int user_id = (int) session.getAttribute("user_id");

    database db = new database();
    for (CartData product: products) {

      rewAffected = db.order_place(user_id, address, mobile, email, product.getPID(), product.getQuentity(), product.getP_Price());

      out.println(user_id + "," + address + "," + mobile + "," + email + "," + product.getPID() + "," + product.getQuentity());

      out.println(rewAffected);
    }

    if (rewAffected > 0) {

      session.removeAttribute("cart-list");
      response.sendRedirect("thankyou.jsp");

    }

  } catch (Exception e) {

    System.out.println(e.getMessage());

  }

}
```

Database Function 

```java

 public int order_place(int UserId, String address, String mobile, String Email, int PID, int Quantity, double price) {

   int rowsAffected = 0;

   try {

     String sql = "INSERT INTO `order` (UserId, PID, Billing_Address, Quantity, Mobile, Email, price) VALUES (?, ?, ?, ?, ?,?,?);";
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

```
