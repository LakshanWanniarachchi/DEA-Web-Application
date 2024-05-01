<%@page import="Servelets.CartData"%>
<%@page import="java.util.List"%>
<%@page import="Servelets.database"%>
<%@include file="Admin-base.jsp" %>

<%
    database db = new database();
    int PID = (Integer) request.getAttribute("PID");
    List<CartData> Products =  db.get_Product_data_by_id(PID);
    CartData Product = Products.get(0);
%>

<div class="container-md" style="max-width: 50%">
    <br /><br /><br />

    <form method="POST" action="ProductUpdate" id="ordrForm" enctype="multipart/form-data">
        <div class="mb-3">
            <div class="input-group mb-3">
                <label for="exampleFormControlInput1" class="form-label">Product ID</label> &nbsp;
                <input type="text" class="form-control" name="PID" value="<%= Product.getPID()%>" disabled>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <div class="input-group mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Product Name</label>
                    <input type="text" class="form-control" id="exampleFormControlInput1" name="P_Name" value="<%= Product.getP_Name()%>">
                </div>
            </div>
            <div class="col">
                <div class="input-group mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Description</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="P_description"><%= Product.getP_description() %></textarea>
                </div>
            </div>
        </div>
        <div class="mb-3">
            <div class="input-group mb-3">
                <label for="exampleFormControlInput1" class="form-label">Product Price</label> &nbsp;
                <span class="input-group-text">$</span>
                <input type="text" class="form-control" name="P_Price" aria-label="Amount (to the nearest dollar)" value="<%= Product.getP_Price()%>">
                <span class="input-group-text">.00</span>
            </div>
        </div>
        <div class="mb-3">
            <div class="input-group mb-3">
                <label for="exampleFormControlInput1" class="form-label">Quantity</label> &nbsp;
                <input type="text" class="form-control" name="P_Quantity" aria-label="Amount (to the nearest dollar)" value="<%= Product.getP_Quantity()%>">
            </div>
        </div>
        <div class="mb-3">
            <div class="input-group mb-3">
                <input type="file" class="form-control" id="inputGroupFile02" name="imageFile">
                <label class="input-group-text" for="inputGroupFile02">Upload</label>
            </div>
        </div>

        <div class="col-12">
            <center>  
                <button type="submit" class="btn btn-dark" id="submitBtn" value="submit">Submit</button>
            </center>
        </div>

        <input type="hidden" name="PID" value="<%= Product.getPID() %>">
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script>
    // Assuming Product.getP_image() returns the file path
    var defaultFilePath = "<%= Product.getP_image()%>";
    if (defaultFilePath) {
        var fileInput = document.getElementById('inputGroupFile02');
        fileInput.value = defaultFilePath;
    }
</script>
