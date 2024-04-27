<%-- 
    Document   : Admin
    Created on : Mar 29, 2024, 10:38:31 AM
    Author     : laksh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body>
      <form action="addProduct" method="POST" enctype="multipart/form-data" >
 
      
      <div class="input-group mb-3">
  <input type="file" class="form-control" id="inputGroupFile02" name="imageFile">
  <label class="input-group-text" for="inputGroupFile02">Upload</label>
  
</div>
      
      
              <input type="submit" name="submit">
      
      
      
      
      </form>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>
