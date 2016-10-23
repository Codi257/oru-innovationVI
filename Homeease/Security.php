<xml version="1.0" encoding = "utf-8" >
<html xmlns = "http://www.w3.org/1999/xhtml">
<html>
    <head>
        <title>Table Request</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>Table Request</div>
        <h1>
            <?php
$servername = "localhost";
$username = "id80102_homeaze";
$password = "homeaze16";
$dbname = "id80102_homeaze";


$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
echo "Connected successfully";
echo "<br>";

$usrname = $_POST[uname];
$pword = $_POST[psw];
$sql = "SELECT UserID, UserPassword FROM User";
$result = mysqli_query($conn, $sql);
if ($usrname = $row[UserID] and $pword = $row[UserPassword]) {
}
 header("Location: https://homeaze.000webhostapp.com/homepage.html"); 

$conn->close();
            ?>
            </h1>
    </body>
</html>