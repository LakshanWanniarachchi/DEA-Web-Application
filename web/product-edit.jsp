<%@page import="java.util.List"%>
<%@page import="Servelets.ProductData"%>
<%@page import="Servelets.database"%>
<%@include file="Admin-base.jsp" %>
  

<style>
  .custom-column {
    padding: 0.5rem; /* Padding within each column */
    margin: 0; /* Remove margin between columns */
  }
  .container{
      margin-top: 100px;
  }
</style>

<% database db = new database();

  List<ProductData> products = db.get_all_product();

   for (ProductData product : products ) { 


%>

<div class="container">
  <div class="row my-2 border rounded p-2">
    <div class="col-md-2 d-flex align-items-center justify-content-center custom-column">
      <p class="text-center">
          <small class="text-body-secondary">Product ID:</small><br /> <%= product.getPID() %>
      </p>
    </div>
    <div class="col-md-2 d-flex align-items-center justify-content-center custom-column">
      <p class="text-center">
        <small class="text-body-secondary">Product Name:</small><br /> <%= product.getP_Name()%>
      </p>
    </div>
    <div class="col-md-2 d-flex align-items-center justify-content-center custom-column">
      <p class="text-center">
        <small class="text-body-secondary">Quantity:</small><br /> <%= product.getP_Quantity()%>
      </p>
    </div>
    <div class="col-md-2 d-flex align-items-center justify-content-center custom-column">
      <p class="text-center">
        <small class="text-body-secondary">Price:</small><br /> <%= product.getP_Price()%>
      </p>
    </div>

      
      
      
    <div class="col-md-2 d-flex align-items-center justify-content-center custom-column">
      
    </div>
      
      

    <div class="col-md-1 d-flex align-items-center justify-content-center custom-column">
      

        <a href="getProductId?PID=<%= product.getPID() %>" class="btn btn-dark">Edit</a>
    </div>

    <div class="col-md-1 d-flex align-items-center justify-content-center custom-column">
      <form action="productRemove" method="post">
        <input type="hidden" value="<%= product.getPID() %>" name="PID" />
       
        <button type="submit" class="btn-close" id="submitBtn" value="submit" aria-label="Close">
              
        </button>
      </form>
        
        
    </div>
  </div>
</div>

<%}%>

    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
