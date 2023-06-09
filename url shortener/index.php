
<?php

$dbHost = "localhost";
$dbUser = "root";
$dbPass = "";
$dbName = "api";


$conn = mysqli_connect($dbHost, $dbUser, $dbPass, $dbName);



// Function to generate a unique shortened URL
function generateShortURL(){
  // Implement your own logic to generate a unique identifier
  // For example, you can use a combination of letters and numbers
  
  $characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  $shortURL = '';
  
  for ($i = 0; $i < 6; $i++) {
      $index = rand(0, strlen($characters) - 1);
      $shortURL .= $characters[$index];
  }
  
  return $shortURL;
}


//  Handle the form submission



if(isset($_POST['long_url'])){
  $longURL = $_POST['long_url'];
  // Generate a unique shortened URL
  $shortURL = generateShortURL(); // Implement your own function
  
  //  Store the URL mapping in the database
  $query = "INSERT INTO urls (long_url, short_url) VALUES ('$longURL', '$shortURL')";
  mysqli_query($conn, $query);

 $newURL="http://localhost/url/?s=".$shortURL ;

}




// : Redirect users
if(isset($_GET['s'])){
 // $shortURL = trim($_SERVER['REQUEST_URI'], '/');
  

 /// $shortURL = basename($_SERVER['REQUEST_URI']);
  $shortURL=$_GET['s'] ;

  $query = "SELECT long_url FROM urls WHERE short_url = '$shortURL'";
  $result = mysqli_query($conn, $query);
  
  if(mysqli_num_rows($result) > 0){
      $row = mysqli_fetch_assoc($result);
      $longURL = $row['long_url'];
      header("Location: $longURL");
      exit();
  }
}



?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>

      <h1 class="m-4 text-center text-primary ">URL Shortener</h1>

<div class="container mt-5">

  <form method="post"  action="#">
<div class="input-group mb-3">
  <input name="long_url" type="text" class="form-control" placeholder="Paste the URL" aria-label="Copy the URL" aria-describedby="button-addon2">
  <button class="btn btn-outline-secondary" type="submit" id="button-addon2">Submit</button>
</div>
</form>

<?php 

if ( isset($newURL)  )
{
  echo '<div class="alert alert-success" role="alert">
  your shorten url : '.$newURL.'
</div>' ;
}
//echo $newUrl ;
?>

</div>
</body>
</html>