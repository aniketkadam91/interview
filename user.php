<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "userform";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


if($_POST){
   // print_r($_POST);

   $name= $_POST['name'];
   $date = date('Y-m-d', strtotime($_POST['date']));
   $exampleRadios = $_POST['exampleRadios'];
   $foodpref = $_POST['foodpref'];


    if(isset($_FILES['profile'])){
        $file_name = $_FILES['profile']['name'];
    }

    //$sql = "INSERT INTO person  VALUES ('',$_POST['name'], $_POST['date'], $_POST['exampleRadios'], $_POST['foodpref'], $_FILES['profile']['name'])";
    $sql = "INSERT INTO person (name, dob, gender,prfile,food_pref) VALUES ('$name','$date','$exampleRadios','$foodpref','$file_name')";
    //echo  $sql;die;
    if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
    } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
    }

//$conn->close();

}

?>

<style>
.form-wrapper {
    width: 60%;
    margin: 0 auto;
    border: 1px solid #ddd;
    padding: 30px;
    background: #ddd;
}
</style>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">

    <div class="row">
    <div class="form-wrapper">
    <h2>user form</h2>
  <form action="#" method="post" enctype="multipart/form-data">
<div class="form-group">
    <label for="name">Name:</label>
    <input type="text" value="name" name="name" class="form-control" id="name">
  </div>
  <div class="form-group">
    <label for="name">Date of Birth:</label>
    <input type="date" value="date" name="date" class="form-control" id="date">
  </div>
  <div class="form-group">
  <label for="name">Gender:</label>
  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="male" checked>
  <label class="form-check-label" for="exampleRadios1">
   Male
  </label>
  <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="female">
  <label class="form-check-label" for="exampleRadios2">
    Female
  </label>
</div>
<div class="form-check">

  </div>
  <div class="form-group">
  <input class="form-check-input" type="radio" name="foodpref" id="foodpref" value="checked">
  <label class="form-check-label" for="foodpref">
  Food Preference 
  </label>
  </div>

  <div class="form-group">
    <label for="pwd">Profile Picture:</label>
    <input type="file" class="form-control" name="profile" id="file">
  </div>

  <button type="submit" class="btn btn-default">Submit</button>
    </div>

</form>
</div>
</div>

</body>
</html>




