	<?php
 session_start();

 
 if(isset($_COOKIE["name"])&&isset($_COOKIE["pwd"]))
 {
 	$_SESSION["name"]=$_COOKIE["name"];
 }
 include 'connect.php';
 //$_SESSION['name']=$_POST['name'];

 if($_SERVER["REQUEST_METHOD"]=="POST")
 {
 $text1 = mysqli_real_escape_string($db,$_POST['text1']);
  $_SESSION['next2']= mysqli_real_escape_string($db,$_POST['text2']);
 
 
 
 }



?>

<!DOCTYPE html>
<html>
<head>
  <script type="text/javascript" src="sortable.js"></script>

  <link rel="stylesheet" href="style.css">
  <link  rel="icon" href="MediIcon.png">
      <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="bootstrap.min.js"></script>
  <style type="text/css">
  .container{
	background-color: #e6f9ff;
	
}
span{
color:red;
}
  </style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <link rel="stylesheet" href="bootstrap-3.3.6-dist/css/bootstrap.min.css">

</script>
<style>
    </style>
    <title>Search Medicines,Drugs,Stores</title>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="userHome.php">MediFind</a>
    </div>
    <ul class="nav navbar-nav">
   
      <li><a href="AboutUs.php">About Us</a></li>
      <li><a href="StoreSearch.php">Search Stores</a></li>
      <li class="active"><a href="#">Search Medicines</a></li>
      <li class="active"><a href="#">Search Drugs</a></li>
    </ul>
      <ul class="nav navbar-nav navbar-right">
	    <ul class="nav navbar-nav navbar-right">
	    
				<li class=active><a href="userHome.php"><span class="glyphicon glyphicon-user "></span><?php echo $_SESSION["name"];?></a></li>
						
	      <li><a href="sessionunset.php"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
	     
    </ul>
    </ul>
  </div>
</nav>

<div class="row">
<div class="page-header "><img src="MediFind.png"><font size=60>MediFind</font></div>
<div class="panel-body">Your GateWay To World Of Quick Medicine Search!</div>
</div>
<div class="container">
            <form method="POST" action="searchbymed.php" role="form" class="fform" >
            <fieldset>
            <br>
            
		        <div class="form-group">
		            <label for="search"> <font color="red">*</font>Search By Medicine</label><br>
		            <input type="text" class="form-group" placeholder="Enter Medicine" name="text1" id="appear1">
		        </div>
		        
		       <div class="form-group">
		         <input type="submit"  name="submit" id="submit" value="Submit">
		            </div>
		       </fieldset>
        </form>
        <form method="POST" action="searchbystore.php" role="form" class="fform" >
            <fieldset>
            <br>
            
		        <div class="form-group">
		            <label for="search"> <font color="red">*</font>Search By Store</label><br>
		            <input type="text" class="form-group" placeholder="Enter Store name" name="text2" id="appear2">
		        </div>
		        
		       <div class="form-group">
		         <input type="submit"  name="submit" id="submit" value="Submit">
		            </div>
		       </fieldset>
        </form> 
         <form method="POST" action="searchbydrug.php" role="form" class="fform" >
            <fieldset>
            <br>
            
		        <div class="form-group">
		            <label for="search"> <font color="red">*</font>Search By Drug</label><br>
		            <input type="text" class="form-group" placeholder="Enter Drug name" name="text3" id="appear3">
		        </div>
		        
		       <div class="form-group">
		         <input type="submit"  name="submit" id="submit" value="Submit">
		            </div>
		       </fieldset>
        </form> 

    </div>
</body>
</html>
