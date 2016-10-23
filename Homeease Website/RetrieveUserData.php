<html>
<body>

Information for <?php echo $_POST["uuid"]; ?><br>



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
$userID = $_POST['uuid'];
$newval = sprintf("this is a test");
//echo $newval;
$sql = sprintf("SELECT UUID, Last_Name FROM Client where UUID = %s", $userID);
//echo $sql;
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "id: " . $row["UUID"]. " - Name: " . $row["Last_Name"]. "<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
</body>
</html> 