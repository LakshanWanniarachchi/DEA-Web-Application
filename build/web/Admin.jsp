<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  
    <style>
        .container-md{
  position: relative;
  max-width: 850px;
  width: 100%;
  background: #fff;
  padding: 50px 30px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.2);
  perspective: 2700px;
   margin-top: 40px;
  
}
.c
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Dropdown
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Action</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
    
    
    
    
   <div class="container-md" style="max-width: 50%">
  <br /><br /><br />

  <form method="POST" action="addProduct" id="ordrForm" enctype="multipart/form-data">
    <div class="row">
      <div class="col">
        <div class="input-group mb-3">
           <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label" >Product Name</label>
            <input type="text" class="form-control" id="exampleFormControlInput1" name="P_Name">
        </div>
        </div>
      </div>
      <div class="col">
      <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label">Description</label>
            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="P_description"></textarea>
        </div>
      </div>
    </div>

    <div class="mb-3">
       <div class="input-group mb-3">
            <label for="exampleFormControlInput1" class="form-label">Product Price</label> &nbsp;
            <span class="input-group-text">$</span>
            <input type="number" class="form-control" name="P_Price" aria-label="Amount (to the nearest dollar)">
            <span class="input-group-text">.00</span>
        </div>
    </div>
      
      <div class="mb-3">
       <div class="input-group mb-3">
            <label for="exampleFormControlInput1" class="form-label">Quantity</label> &nbsp;
            
            <input type="number" class="form-control" name="P_Quantity" aria-label="Amount (to the nearest dollar)">
            
        </div>
    </div>
      
       <div class="mb-3">
       <div class="input-group mb-3">
            
           
        
            <div class="input-group mb-3">
                <input type="file" class="form-control" id="inputGroupFile02" name="imageFile">
                <label class="input-group-text" for="inputGroupFile02">Upload</label>
            </div>
       
            
        </div>
    </div>

    

    
    <div class="col-12">
      <center>  
          <button type="submit" class="btn btn-dark" id="submitBtn" value="submit">Submit</button>
      </center>
    </div>
  </form>
</div>
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
