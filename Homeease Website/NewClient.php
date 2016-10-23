<html>
<body>

Information for <?php echo $_POST["S"]; ?><br>



<?php
$servername = "localhost";
$username = "id80102_homeaze";
$password = "homeaze16";
$dbname = "id80102_homeaze";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$FirstName = $_POST["firstname"];
$lastName = $_POST["lastname"];
$Gender = $_POST["genderdropdown"];
if ($Gender = "m") {$Gender = 1} else { if ($Gender = "f") {$Gender = 0};
$Birthdate = $_POST["giornonascita"];
$NatOfBirth = $_POST["nazionenascita"];
$RegOfBirth =$_POST["birthregion"];
$CityBirth =$_POST["birthcity"];
$Veteran =$_POST["veterandropdown"];
$serviceYear =$_POST["serviceyear"];
$dischargeyear =$_POST["dischargeyear"];
$race =$_POST["racedropdown"];



//echo $newval;
//$sql = sprintf("INSERT INTO Client (First_Name, Last_Name, DOB, GenderID) VALUES ('" + $FirstName  + "', '" + //$lastName + "', '" + $Birthdate + "', '" + $Gender + "')";
//echo $sql;
//echo $sql;


//$result = $conn->query($sql);

//if ($result->num_rows > 0) {
    // output data of each row
   // while($row = $result->fetch_assoc()) {
      //  echo "Shelter: " . $row["a.Name"]. " - Contact: " . $row["b.Contact"]." - Contact Phone Number: " . //$row["b.Contact_Phone"].  "<br>";
 //   }
//} else {
   // echo "0 results";
//}
$conn->close();
  

?>
header("Location: https://homeaze.000webhostapp.com/homepage.html");
</body>
</html>