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






